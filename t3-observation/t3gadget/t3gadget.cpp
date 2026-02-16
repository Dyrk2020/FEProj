// T3 gadget loader — minimal Zygisk module (API v5).
// Loads a renamed Frida Gadget into com.riotgames.league.wildrift at spawn
// so the observation session captures SetKey from the first match.
#include <sys/types.h>
#include <ctime>
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <dlfcn.h>
#include <cstring>

#include "zygisk.hpp"

static const char kPackage[] = "com.riotgames.league.wildrift";
static const char kGadget[] = "/data/data/com.riotgames.league.wildrift/files/wrgadget.so";

__attribute__((constructor)) static void t3_mod_mapped(void) {
    FILE *f = fopen("/data/local/tmp/t3mod.log", "a");
    if (f) {
        fprintf(f, "%ld module .so mapped into pid %d\n", (long)time(nullptr), getpid());
        fclose(f);
    }
}

using zygisk::Api;
using zygisk::AppSpecializeArgs;

class T3Gadget : public zygisk::ModuleBase {
public:
    void onLoad(Api *api, JNIEnv *env) override {
        this->api = api;
        this->env = env;
    }

    void preAppSpecialize(AppSpecializeArgs *args) override {
        const char *name = env->GetStringUTFChars(args->nice_name, nullptr);
        match = name && strcmp(name, kPackage) == 0;
        if (name) env->ReleaseStringUTFChars(args->nice_name, name);
    }

    void postAppSpecialize(const AppSpecializeArgs *args) override {
        if (!match) return;
        FILE *f = fopen("/data/data/com.riotgames.league.wildrift/files/t3gadget.log", "a");
        void *h = dlopen(kGadget, RTLD_NOW);
        const char *err = h ? "" : dlerror();
        if (f) {
            fprintf(f, "%ld dlopen(%s) = %p%s%s\n", (long)time(nullptr), kGadget, h,
                    h ? "" : " err=", err ? err : "");
            fclose(f);
        }
    }

private:
    Api *api = nullptr;
    JNIEnv *env = nullptr;
    bool match = false;
};

REGISTER_ZYGISK_MODULE(T3Gadget)
