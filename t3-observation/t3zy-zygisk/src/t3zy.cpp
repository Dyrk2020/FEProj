// t3zy.cpp — T3 Zygisk native observer v0.4.1
//
// H4: NetCryptoSetKey inline hook @libLNet base+0x9F640 (SCAN proved zero PLT
// importers). Transport: logcat mirror + best-effort socket.
// v0.4.1: drift handling is read-only integrity check + inode-based reinstall;
// full-library rescans removed (raced scene reload → SIGSEGV, events_crash1).
//
// Red lines: read-only hooks (entry patch = mechanism itself), no ptrace,
// zero files outside /data/adb/modules/t3zy/.
#include <sys/types.h>
#include <sys/sysmacros.h>

#include "zygisk.hpp"

#include <android/log.h>
#include <dlfcn.h>
#include <elf.h>
#include <link.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/socket.h>
#include <unistd.h>

#include <atomic>
#include <cerrno>
#include <chrono>
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <ctime>
#include <fcntl.h>
#include <deque>
#include <mutex>
#include <set>
#include <condition_variable>
#include <string>
#include <thread>
#include <vector>

#include "elf_scan.h"
#include "hook_arm64.h"

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  "T3ZY", __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN,  "T3ZY", __VA_ARGS__)

using zygisk::Api;
using zygisk::AppSpecializeArgs;

#ifndef T3ZY_MODVER
#define T3ZY_MODVER "0.4.1"
#endif

namespace {

constexpr uint16_t   kPort       = 27099;
constexpr size_t     kMaxBlob    = 128;
constexpr size_t     kQueueCap   = 8192;
constexpr const char kSymbol[]   = "NetCryptoSetKey";
constexpr const char kTargetLib[] = "libLNet.so";
constexpr uint32_t   kTargetRva  = 0x9F640u;
constexpr long       kWaitFastMs = 500;
constexpr long       kWaitSlowMs = 5000;
constexpr long       kMaxWaitMs  = 60 * 60 * 1000;

std::atomic<bool> g_match{false};
std::atomic<bool> g_started{false};
std::string g_pkg;

std::mutex              g_mx;
std::condition_variable g_cv;
std::deque<std::string> g_q;
uint64_t                g_dropped = 0;

long now_ms() {
  timespec ts{};
  clock_gettime(CLOCK_REALTIME, &ts);
  return static_cast<long>(ts.tv_sec) * 1000 + ts.tv_nsec / 1000000;
}

void enqueue(std::string s) {
  {
    std::string line = s;
    while (!line.empty() && line.back() == '\n') line.pop_back();
    __android_log_print(ANDROID_LOG_INFO, "T3ZY", "%s", line.c_str());
  }
  {
    std::lock_guard<std::mutex> l(g_mx);
    if (g_q.size() >= kQueueCap) { ++g_dropped; return; }
    g_q.push_back(std::move(s));
  }
  g_cv.notify_one();
}

void note(const char* fmt, ...) __attribute__((format(printf, 1, 2)));
void note(const char* fmt, ...) {
  char msg[400];
  va_list ap;
  va_start(ap, fmt);
  vsnprintf(msg, sizeof(msg), fmt, ap);
  va_end(ap);
  char ev[512];
  snprintf(ev, sizeof(ev),
           "{\"v\":1,\"ts\":%ld,\"pid\":%d,\"type\":\"NOTE\",\"msg\":\"%s\"}\n",
           now_ms(), getpid(), msg);
  enqueue(ev);
}

void to_hex(const uint8_t* p, size_t n, char* out) {
  static const char* d = "0123456789abcdef";
  for (size_t i = 0; i < n; ++i) {
    out[2 * i]     = d[p[i] >> 4];
    out[2 * i + 1] = d[p[i] & 0xf];
  }
  out[2 * n] = '\0';
}

const char* basename_of(const char* path) {
  if (!path) return "";
  const char* s = strrchr(path, '/');
  return s ? s + 1 : path;
}

unsigned long (*orig_setkey)(void*, void*, unsigned long) = nullptr;
static ino_t   g_inline_target_ino = 0;
static uint8_t g_last_patch[16];

static void build_patch(void* repl, uint8_t out[16]) {
  uint32_t ldr = 0x58000051u, br = 0xD61F0220u;
  uint64_t r = reinterpret_cast<uint64_t>(repl);
  memcpy(out, &ldr, 4);
  memcpy(out + 4, &br, 4);
  memcpy(out + 8, &r, 8);
}

static int g_memfd = -1;

// Fault-safe read of our own address space via /proc/self/mem (t3plt-proven
// pattern): a garbage pointer from the hooked caller degrades to a failed
// read instead of SIGSEGV.
static bool safe_read(const void* addr, void* dst, size_t n) {
  if (g_memfd < 0) {
    g_memfd = open("/proc/self/mem", O_RDONLY);
    if (g_memfd < 0) return false;
  }
  return pread(g_memfd, dst, n,
               static_cast<off_t>(reinterpret_cast<uintptr_t>(addr))) ==
         static_cast<ssize_t>(n);
}

unsigned long my_setkey(void* ctx, void* blob, unsigned long len) {
  char hex[2 * kMaxBlob + 1];
  hex[0] = '\0';
  size_t n = 0;
  if (blob && len > 0 && len <= 0x10000) {
    n = len < kMaxBlob ? static_cast<size_t>(len) : kMaxBlob;
    uint8_t buf[kMaxBlob];
    if (safe_read(blob, buf, n)) {
      to_hex(buf, n, hex);
    } else {
      memcpy(hex, "unreadable", 10);
    }
  }
  char ev[512];
  snprintf(ev, sizeof(ev),
           "{\"v\":1,\"ts\":%ld,\"pid\":%d,\"type\":\"H4\",\"pkg\":\"%s\","
           "\"ctx\":\"%p\",\"len\":%lu,\"blob_hex\":\"%s\"}\n",
           now_ms(), getpid(), g_pkg.c_str(), ctx, len, hex);
  enqueue(ev);
  return orig_setkey ? orig_setkey(ctx, blob, len) : 0;
}

struct MapsEnt { dev_t dev; ino_t ino; unsigned long st; std::string path; };

std::vector<MapsEnt> read_maps() {
  std::vector<MapsEnt> out;
  FILE* f = fopen("/proc/self/maps", "re");
  if (!f) return out;
  char line[512];
  while (fgets(line, sizeof(line), f)) {
    unsigned long st, en, off, ino = 0;
    int maj = 0, min = 0;
    char perms[8];
    if (sscanf(line, "%lx-%lx %7s %lx %x:%x %lu", &st, &en, perms, &off,
               &maj, &min, &ino) != 7)
      continue;
    const char* p = strchr(line, '/');
    if (!p || ino == 0) continue;
    char path[400];
    if (sscanf(p, "%399[^\n]", path) != 1) continue;
    MapsEnt e;
    e.dev = makedev(maj, min);
    e.ino = static_cast<ino_t>(ino);
    e.st = st;
    e.path = path;
    out.push_back(std::move(e));
  }
  fclose(f);
  return out;
}

struct LibEntry {
  std::string path;
  uintptr_t   bias = 0;
  t3zy::SlotCounts slots;
};

struct ScanCtx {
  const char* sym;
  const std::vector<t3zy::Range>* as;
  std::vector<LibEntry>* out;
};

std::vector<LibEntry> scan_libs(const char* symbol, const std::vector<t3zy::Range>& as) {
  std::vector<LibEntry> out;
  ScanCtx ctx{symbol, &as, &out};
  auto cb = [](struct dl_phdr_info* info, size_t, void* data) -> int {
    auto* c = static_cast<ScanCtx*>(data);
    if (!info->dlpi_name || !info->dlpi_name[0]) return 0;
    if (!strstr(info->dlpi_name, ".so")) return 0;
    LibEntry e;
    e.path = info->dlpi_name;
    e.bias = static_cast<uintptr_t>(info->dlpi_addr);
    e.slots = t3zy::count_symbol_slots(info->dlpi_phdr, info->dlpi_phnum,
                                       e.bias, c->sym, *c->as);
    c->out->push_back(std::move(e));
    return 0;
  };
  dl_iterate_phdr(cb, &ctx);
  return out;
}

Api* g_api = nullptr;

void scan_once(bool first_run) {
  std::vector<t3zy::Range> as;
  t3zy::build_addrspace(&as);
  const auto libs = scan_libs(kSymbol, as);

  size_t tot_jump = 0, tot_glob = 0;
  for (const auto& l : libs) { tot_jump += l.slots.jump; tot_glob += l.slots.glob; }

  for (const auto& l : libs) {
    if (l.slots.jump == 0 && l.slots.glob == 0) continue;
    char ev[384];
    snprintf(ev, sizeof(ev),
             "{\"v\":1,\"ts\":%ld,\"pid\":%d,\"type\":\"SCAN\",\"lib\":\"%s\","
             "\"jump_slots\":%zu}\n",
             now_ms(), getpid(), basename_of(l.path.c_str()), l.slots.jump);
    enqueue(ev);
  }
  note("scan done first=%d total_jump=%zu total_glob=%zu",
       first_run ? 1 : 0, tot_jump, tot_glob);
}

bool find_target(unsigned long* base_out, ino_t* ino_out) {
  auto m = read_maps();
  bool found = false;
  for (const auto& e : m)
    if (strstr(e.path.c_str(), kTargetLib)) {
      if (!found || e.st < *base_out) { *base_out = e.st; found = true; }
      *ino_out = e.ino;
    }
  return found;
}

bool wait_for_target_lib() {
  long waited = 0;
  while (waited < kMaxWaitMs) {
    unsigned long b = 0; ino_t i = 0;
    if (find_target(&b, &i)) return true;
    usleep(kWaitFastMs * 1000);
    waited += kWaitFastMs;
  }
  return false;
}

void install_inline_hook() {
  unsigned long base = 0; ino_t cur_ino = 0;
  if (!find_target(&base, &cur_ino)) {
    note("inline hook skipped: no mapping");
    return;
  }
  if (cur_ino == g_inline_target_ino && g_inline_target_ino != 0) return;

  void* fn = reinterpret_cast<void*>(base + kTargetRva);
  void* orig = nullptr;
  char bbuf[32];
  snprintf(bbuf, sizeof(bbuf), "%p", fn);
  if (thk::hook_install(fn, reinterpret_cast<void*>(my_setkey), &orig)) {
    orig_setkey =
        reinterpret_cast<unsigned long (*)(void*, void*, unsigned long)>(orig);
    g_inline_target_ino = cur_ino;
    build_patch(reinterpret_cast<void*>(my_setkey), g_last_patch);
    note("inline hook ok target=%s rva=0x%X orig=resolved", bbuf, kTargetRva);
  } else {
    note("inline hook FAILED target=%s (pc-relative prologue?)", bbuf);
  }
}

void watcher_main() {
  note("watcher started");
  if (!wait_for_target_lib()) {
    note("timeout waiting for %s", kTargetLib);
    return;
  }
  note("target lib present");

  // one-shot diagnostics: PLT importer census (proves why inline is required)
  scan_once(true);

  // install H4
  install_inline_hook();

  // v0.4.1 slow tick: NO library rescans. Read-only patch-integrity check +
  // reinstall only when the target mapping actually changed (new inode).
  for (;;) {
    usleep(kWaitSlowMs * 1000);
    unsigned long base = 0; ino_t cur_ino = 0;
    if (!find_target(&base, &cur_ino)) continue;          // scene unloaded
    if (cur_ino != g_inline_target_ino || g_inline_target_ino == 0) {
      install_inline_hook();
      continue;
    }
    uint8_t cur[16];
    memcpy(cur, reinterpret_cast<void*>(base + kTargetRva), 16);
    if (memcmp(cur, g_last_patch, 16) != 0)
      note("warn: entry bytes modified by third party");
  }
}

void send_all(int fd, const char* buf, size_t len) {
  size_t off = 0;
  while (off < len) {
    ssize_t w = send(fd, buf + off, len - off, MSG_NOSIGNAL);
    if (w <= 0) throw std::runtime_error("send");
    off += static_cast<size_t>(w);
  }
}

void hello(int fd) {
  char ev[320];
  snprintf(ev, sizeof(ev),
           "{\"v\":1,\"ts\":%ld,\"pid\":%d,\"type\":\"HELLO\",\"pkg\":\"%s\","
           "\"modver\":\"%s\",\"sdk\":%d}\n",
           now_ms(), getpid(), g_pkg.c_str(), T3ZY_MODVER, __ANDROID_API__);
  send_all(fd, ev, strlen(ev));
}

void sender_main() {
  for (;;) {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd < 0) { usleep(3000000); continue; }
    sockaddr_in a{};
    a.sin_family = AF_INET;
    a.sin_port   = htons(kPort);
    a.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    if (connect(fd, reinterpret_cast<sockaddr*>(&a), sizeof(a)) != 0) {
      close(fd);
      usleep(3000000);
      continue;
    }
    LOGI("event channel up :%u", kPort);
    try {
      hello(fd);
      for (;;) {
        std::string item;
        {
          std::unique_lock<std::mutex> l(g_mx);
          g_cv.wait_for(l, std::chrono::milliseconds(200),
                        [] { return !g_q.empty(); });
          if (g_q.empty()) continue;
          item = std::move(g_q.front());
          g_q.pop_front();
        }
        send_all(fd, item.data(), item.size());
      }
    } catch (...) {
      LOGW("channel down, retrying");
    }
    close(fd);
    usleep(3000000);
  }
}

class T3zyModule : public zygisk::ModuleBase {
 public:
  void onLoad(Api* api, JNIEnv* env) override {
    api_ = api;
    env_ = env;
    g_api = api;
  }

  void preAppSpecialize(AppSpecializeArgs* args) override {
    if (!args || !args->nice_name) return;
    const char* n = env_->GetStringUTFChars(args->nice_name, nullptr);
    if (n && (strstr(n, "wildrift") || strstr(n, "lolm"))) {
      g_match = true;
      g_pkg = n;
      LOGI("pre matched pkg=%s", n);
    }
    if (n) env_->ReleaseStringUTFChars(args->nice_name, n);
  }

  void postAppSpecialize(const AppSpecializeArgs*) override {
    if (!g_match || g_started.exchange(true)) return;
    LOGI("matched pkg=%s — workers starting (modver %s)", g_pkg.c_str(),
         T3ZY_MODVER);
    std::thread(sender_main).detach();
    std::thread(watcher_main).detach();
  }

 private:
  Api*    api_ = nullptr;
  JNIEnv* env_ = nullptr;
};

}  // namespace

REGISTER_ZYGISK_MODULE(T3zyModule)
