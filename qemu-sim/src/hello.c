// hello.c — minimal bionic smoke test for qemu-aarch64 -L sysroot
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dlfcn.h>
#include <string.h>
#include <unistd.h>

int main(void) {
    printf("hello from aarch64 bionic! sdk-getpid=%d\n", (int)getpid());

    // exercise libm (float path relevant to u16->float semantics)
    double d = sin(1.0);
    float f = sqrtf(65535.0f);
    printf("sin(1)=%.9f sqrtf(65535)=%.3f\n", d, (double)f);

    // exercise libdl
    void *h = dlopen("libm.so", RTLD_NOW);
    printf("dlopen libm.so -> %s\n", h ? "OK" : dlerror());
    if (h) dlclose(h);

    // read a file through the guest fs to confirm -L prefixing works
    FILE *fp = fopen("/system/lib64/libc.so", "rb");
    long n = 0;
    if (fp) { fseek(fp, 0, SEEK_END); n = ftell(fp); fclose(fp); }
    printf("fopen /system/lib64/libc.so -> %ld bytes\n", n);

    return 0;
}
