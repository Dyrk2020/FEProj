// T3 PLT observer — native Zygisk module (API v5).
// Hooks NetCryptoSetKey called by libFEProj.so (PLT hook via Zygisk API)
// inside com.riotgames.league.wildrift and dumps the four pointer arguments
// (first 96 bytes each, hex) to the app's files/t3key.log, then calls original.
//
// Build (NDK r26d):
//   aarch64-linux-android21-clang++ -shared -fPIC -O2 -o t3plt.so t3plt.cpp \
//     -I. -static-libstdc++

#include <android/log.h>

#include <cctype>
#include <cerrno>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <thread>

#include <fcntl.h>
#include <sys/sysmacros.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include "zygisk.hpp"

#define LOG_TAG "t3plt"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

const char kPackage[] = "com.riotgames.league.wildrift";
const char kLogPath[] =
    "/data/data/com.riotgames.league.wildrift/files/t3key.log";

// Poll cadence: 200ms tick, at most 120s waiting for both native libraries.
constexpr int kMaxTicks = 600;
constexpr useconds_t kTickUs = 200 * 1000;
constexpr size_t kDumpBytes = 96;

zygisk::Api *g_api = nullptr;

// Original NetCryptoSetKey, resolved by the PLT hook machinery.
// Observed ABI: four pointer arguments (key material / context buffers).
using SetKeyFn = void (*)(void *, void *, void *, void *);
SetKeyFn g_orig_set_key = nullptr;

int g_selfmem_fd = -1;

// Read own memory without risking SIGSEGV on unmapped/racing addresses:
// pread() from /proc/self/mem fails gracefully (returns -1/EIO) instead of
// faulting, unlike a direct memcpy of a possibly-freed buffer.
ssize_t SafeReadMem(uintptr_t addr, void *buf, size_t len) {
    if (addr == 0) return -1;
    if (g_selfmem_fd < 0) {
        int fd = open("/proc/self/mem", O_RDONLY | O_CLOEXEC);
        if (fd < 0) return -1;
        // Racy-but-benign init; worst case we retry next call.
        if (__sync_bool_compare_and_swap(&g_selfmem_fd, -1, fd)) {
            // adopted
        } else {
            close(fd);
        }
    }
    return pread(g_selfmem_fd, buf, len, static_cast<off_t>(addr));
}

void HexEncode(const uint8_t *in, size_t n, char *out /* >= 2n+1 */) {
    static const char kHex[] = "0123456789abcdef";
    for (size_t i = 0; i < n; ++i) {
        out[2 * i] = kHex[in[i] >> 4];
        out[2 * i + 1] = kHex[in[i] & 0xf];
    }
    out[2 * n] = '\0';
}

void HookedSetKey(void *a0, void *a1, void *a2, void *a3) {
    const uintptr_t args[4] = {reinterpret_cast<uintptr_t>(a0),
                               reinterpret_cast<uintptr_t>(a1),
                               reinterpret_cast<uintptr_t>(a2),
                               reinterpret_cast<uintptr_t>(a3)};

    uint8_t raw[4][kDumpBytes];
    char hex[4][2 * kDumpBytes + 1];
    bool ok[4];

    for (int i = 0; i < 4; ++i) {
        ssize_t r = SafeReadMem(args[i], raw[i], kDumpBytes);
        ok[i] = (r == static_cast<ssize_t>(kDumpBytes));
        if (ok[i]) HexEncode(raw[i], kDumpBytes, hex[i]);
    }

    if (FILE *f = fopen(kLogPath, "a")) {
        fprintf(f, "%ld NetCryptoSetKey\n", static_cast<long>(time(nullptr)));
        for (int i = 0; i < 4; ++i) {
            if (ok[i]) {
                fprintf(f, "  x%d=%012lx %s\n", i, args[i], hex[i]);
            } else {
                fprintf(f, "  x%d=%012lx <unreadable>\n", i, args[i]);
            }
        }
        fclose(f);
    }

    if (g_orig_set_key) g_orig_set_key(a0, a1, a2, a3);
}

struct LibInfo {
    bool found = false;
    unsigned int dev_major = 0;
    unsigned int dev_minor = 0;
    unsigned long long inode = 0;
};

// One pass over /proc/self/maps.
// Returns true once BOTH libraries are present; fills `fe` from the first
// file-backed libFEProj.so mapping (dev/inode are identical for every
// mapping of the same ELF, so any line works).
bool ScanMaps(LibInfo *lnet, LibInfo *fe) {
    FILE *f = fopen("/proc/self/maps", "re");
    if (!f) return false;

    char line[1024];
    while (fgets(line, sizeof(line), f)) {
        const char *fe_pos = strstr(line, "/libFEProj.so");
        const char *lnet_pos = strstr(line, "/libLNet.so");
        if (!fe_pos && !lnet_pos) continue;

        LibInfo *dst = fe_pos ? fe : lnet;
        if (dst->found) continue;

        // Format: start-end perms offset dev:inode-or-dev inode path
        // e.g. 7a1b000000-7a1b100000 r-xp 00123000 254:6 4821 /.../libFEProj.so
        unsigned int maj = 0, min = 0;
        unsigned long long ino = 0;
        char perms[5] = {0};
        if (sscanf(line, "%*x-%*x %4s %*x %x:%x %llu", perms, &maj, &min,
                   &ino) != 4) {
            continue;
        }
        dst->found = true;
        dst->dev_major = maj;
        dst->dev_minor = min;
        dst->inode = ino;
    }
    fclose(f);
    return lnet->found && fe->found;
}

void PollAndHook() {
    for (int tick = 0; tick < kMaxTicks; ++tick) {
        LibInfo lnet, fe;
        if (ScanMaps(&lnet, &fe)) {

            g_api->pltHookRegister(makedev(fe.dev_major, fe.dev_minor),
                                   static_cast<ino_t>(fe.inode),
                                   "NetCryptoSetKey",
                                   reinterpret_cast<void *>(HookedSetKey),
                                   reinterpret_cast<void **>(&g_orig_set_key));
            bool committed = g_api->pltHookCommit();

            LOGI("hook %s: dev=%u:%u ino=%llu orig=%p",
                 committed ? "committed" : "commit FAILED",
                 fe.dev_major, fe.dev_minor, fe.inode,
                 reinterpret_cast<void *>(g_orig_set_key));

            if (FILE *f = fopen(kLogPath, "a")) {
                fprintf(f, "%ld [t3plt] libs ready; register+commit=%d "
                           "dev=%u:%u ino=%llu orig=%p\n",
                        static_cast<long>(time(nullptr)), committed ? 1 : 0,
                        fe.dev_major, fe.dev_minor, fe.inode,
                        reinterpret_cast<void *>(g_orig_set_key));
                fclose(f);
            }
        }
        usleep(kTickUs);
    }
    LOGE("timeout: libLNet.so/libFEProj.so never appeared in maps");
    if (FILE *f = fopen(kLogPath, "a")) {
        fprintf(f, "%ld [t3plt] TIMEOUT waiting for native libs\n",
                static_cast<long>(time(nullptr)));
        fclose(f);
    }
}

class T3Plt : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api *api, JNIEnv *env) override {
        api_ = api;
        env_ = env;
    }

    void preAppSpecialize(zygisk::AppSpecializeArgs *args) override {
        const char *name = env_->GetStringUTFChars(args->nice_name, nullptr);
        match_ = name && strcmp(name, kPackage) == 0;
        if (name) env_->ReleaseStringUTFChars(args->nice_name, name);
    }

    void postAppSpecialize(const zygisk::AppSpecializeArgs *) override {
        if (!match_) return;
        g_api = api_;
        try {
            std::thread(PollAndHook).detach();
        } catch (...) {
            LOGE("failed to spawn watcher thread");
        }
    }

private:
    zygisk::Api *api_ = nullptr;
    JNIEnv *env_ = nullptr;
    bool match_ = false;
};

} // namespace

REGISTER_ZYGISK_MODULE(T3Plt)
