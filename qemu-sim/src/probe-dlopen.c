// probe-dlopen.c — dlopen libFEProj.so under qemu-aarch64 + bionic sysroot.
// Prints base bias, verifies init chain completes, then optionally calls a
// function at a VA offset (bias + off) with a byte buffer.
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>
#include <unistd.h>
#include <sys/mman.h>
#include <errno.h>

#define ARRAY_LEN(a) (sizeof(a) / sizeof((a)[0]))

static const char *FE_LIB = NULL;
static void *H = NULL;
static uintptr_t bias = 0;   // runtime base of libFEProj.so

static void die(const char *msg) {
    fprintf(stderr, "FATAL: %s: %s\n", msg, dlerror());
    _exit(2);
}

// anchor: any exported symbol; bias = dlsym(anchor) - ANCHOR_VA
#define ANCHOR_SYM "AES_options"
#define ANCHOR_VA  0x5492428UL

static void load_fe(void) {
    const char *lib = FE_LIB ? FE_LIB : "./xbin/libFEProj.so";
    H = dlopen(lib, RTLD_NOW | RTLD_GLOBAL);
    if (!H) die("dlopen libFEProj.so");
    void *anchor = dlsym(H, ANCHOR_SYM);
    if (!anchor) die("dlsym anchor");
    bias = (uintptr_t)anchor - ANCHOR_VA;
    printf("dlopen OK  base=0x%lx  anchor@%p\n", bias, anchor);
    fflush(stdout);
}

// generic: call a function at VA `off` with (argc x args) 64-bit args.
// args[0..7] -> x0..x7; args[8] (if argc>8) -> x8 (IP0 / hidden out ptr).
static uint64_t call_va(uint64_t off, int argc, uint64_t *args) {
    uint64_t (*fn)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);
    fn = (void *)(bias + off);
    register uint64_t x8 asm("x8") = argc > 8 ? args[8] : 0;
    (void)x8;
    uint64_t r;
    asm volatile(
        "mov x0, %1\n"
        "mov x1, %2\n"
        "mov x2, %3\n"
        "mov x3, %4\n"
        "mov x4, %5\n"
        "mov x5, %6\n"
        "mov x6, %7\n"
        "mov x7, %8\n"
        "mov x8, %9\n"
        "blr %10\n"
        "mov %0, x0\n"
        : "=r"(r)
        : "r"(args[0]), "r"(argc > 1 ? args[1] : 0), "r"(argc > 2 ? args[2] : 0),
          "r"(argc > 3 ? args[3] : 0), "r"(argc > 4 ? args[4] : 0),
          "r"(argc > 5 ? args[5] : 0), "r"(argc > 6 ? args[6] : 0),
          "r"(argc > 7 ? args[7] : 0), "r"(argc > 8 ? args[8] : 0), "r"(fn)
        : "x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x30", "memory");
    return r;
}

// frame samples (body bytes = b[12:] of full frame: msgseq+consts+records)
#include "frame_samples.h"

static void *g_buf = NULL;
static size_t g_buf_len = 0;

int main(int argc, char **argv) {
    setvbuf(stdout, NULL, _IONBF, 0);
    FE_LIB = getenv("FE_LIB");
    load_fe();
    if (argc > 1 && !strcmp(argv[1], "probe")) {
        // no-op: just report load state
        printf("probe done base=0x%lx\n", bias);
        _exit(0);
    }
    if (argc > 1 && !strcmp(argv[1], "callframe")) {
        // callframe <va-hex> <sample-idx> <nargs> <buf-arg-pos> <len-arg-pos> [fixed args...]
        // fills buf from sample, calls fn with (ptr,len,...) at arg positions
        uint64_t off = strtoull(argv[2], NULL, 16);
        int sidx = atoi(argv[3]);
        int nargs = atoi(argv[4]);
        int bufpos = atoi(argv[5]);
        int lenpos = atoi(argv[6]);
        if (sidx < 0 || sidx >= NSAMPLES) { fprintf(stderr, "bad sample %d\n", sidx); return 2; }
        const uint8_t *src = SAMPLES[sidx].body;
        size_t slen = SAMPLES[sidx].body_len;
        g_buf = malloc(slen + 16);
        if (!g_buf) { fprintf(stderr, "malloc failed\n"); return 2; }
        memcpy(g_buf, src, slen);
        g_buf_len = slen;
        uint64_t args[8] = {0};
        int nfixed = argc - 7;
        if (nfixed < 0) nfixed = 0;
        if (nfixed > 8) nfixed = 8;
        for (int i = 0; i < nfixed; i++)
            args[i] = strtoull(argv[7 + i], NULL, 0);
        if (bufpos >= 0 && bufpos < 8) args[bufpos] = (uint64_t)g_buf;
        if (lenpos >= 0 && lenpos < 8) args[lenpos] = (uint64_t)slen;
        printf("callframe bias+0x%lx sample=%d(%s) buflen=%zu nargs=%d\n",
               off, sidx, SAMPLES[sidx].desc, slen, nargs);
        for (int i = 0; i < nargs && i < 8; i++)
            printf("  arg[%d] = 0x%lx%s%s\n", i, args[i],
                   i == bufpos ? " <-buf" : "", i == lenpos ? " <-len" : "");
        fflush(stdout);
        uint64_t r = call_va(off, nargs, args);
        printf("ret=0x%lx\n", r);
        _exit(0);
    }
    if (argc > 1 && !strcmp(argv[1], "call")) {
        // call <va-hex> <nargs> <arg0> [arg1 ...]  (64-bit args)
        uint64_t off = strtoull(argv[2], NULL, 16);
        int nargs = atoi(argv[3]);
        uint64_t args[8] = {0};
        for (int i = 0; i < nargs && i < 8; i++)
            args[i] = strtoull(argv[4 + i], NULL, 0);
        printf("call bias+0x%lx nargs=%d\n", off, nargs);
        uint64_t r = call_va(off, nargs, args);
        printf("ret=0x%lx\n", r);
        _exit(0);
    }
    if (argc > 1 && !strcmp(argv[1], "callframe2")) {
        // callframe2 <va-hex> <sample-idx> <nargs> <bufpos> <lenpos> <objpos> [fixed args...]
        // obj = zeroed 0x400 buffer at objpos; frame bytes at bufpos/lenpos
        uint64_t off = strtoull(argv[2], NULL, 16);
        int sidx = atoi(argv[3]);
        int nargs = atoi(argv[4]);
        int bufpos = atoi(argv[5]);
        int lenpos = atoi(argv[6]);
        int objpos = atoi(argv[7]);
        if (sidx < 0 || sidx >= NSAMPLES) { fprintf(stderr, "bad sample %d\n", sidx); return 2; }
        const uint8_t *src = SAMPLES[sidx].body;
        size_t slen = SAMPLES[sidx].body_len;
        g_buf = malloc(slen + 16);
        void *obj = calloc(1, 0x400);
        if (!g_buf || !obj) { fprintf(stderr, "malloc failed\n"); return 2; }
        memcpy(g_buf, src, slen);
        g_buf_len = slen;
        uint64_t args[8] = {0};
        int nfixed = argc - 8;
        if (nfixed < 0) nfixed = 0;
        if (nfixed > 8) nfixed = 8;
        for (int i = 0; i < nfixed; i++)
            args[i] = strtoull(argv[8 + i], NULL, 0);
        if (bufpos >= 0 && bufpos < 8) args[bufpos] = (uint64_t)g_buf;
        if (lenpos >= 0 && lenpos < 8) args[lenpos] = (uint64_t)slen;
        if (objpos >= 0 && objpos < 8) args[objpos] = (uint64_t)obj;
        // defaults for the payload-ingest convention (x0=obj, x1=buf, x2=local, x3=buf2, w4=len, w5=tag)
        if (objpos == 0 && nargs > 2 && args[2] == 0) args[2] = (uint64_t)obj + 0x3F0;  // writable local flag
        if (nargs > 3 && args[3] == 0) args[3] = (uint64_t)g_buf;                        // payload2 = same buffer
        if (nargs > 5 && args[5] == 0) args[5] = 0x2d;                                   // default tag
        printf("callframe2 bias+0x%lx sample=%d(%s) buflen=%zu obj=%p nargs=%d\n",
               off, sidx, SAMPLES[sidx].desc, slen, obj, nargs);
        for (int i = 0; i < nargs && i < 8; i++)
            printf("  arg[%d] = 0x%lx%s%s%s\n", i, args[i],
                   i == bufpos ? " <-buf" : "", i == lenpos ? " <-len" : "",
                   i == objpos ? " <-obj" : "");
        fflush(stdout);
        uint64_t r = call_va(off, nargs, args);
        printf("ret=0x%lx\n", r);
        // dump obj fields
        unsigned char *ob = obj;
        printf("obj[0x60..0x80]:");
        for (int i = 0x60; i < 0x80; i += 4) printf(" %02x%02x%02x%02x", ob[i], ob[i+1], ob[i+2], ob[i+3]);
        printf("\nobj[0x20] ptr=%p obj[0x28] ptr=%p\n", *(void**)(ob+0x20), *(void**)(ob+0x28));
        // dump the payload copy at obj+0x68 (first 48 bytes)
        void *pcopy = *(void**)(ob + 0x68);
        if (pcopy) {
            unsigned char *p = pcopy;
            printf("payload copy @%p:", p);
            for (int i = 0; i < 48 && i < (int)slen; i++) printf(" %02x", p[i]);
            printf("\n");
        }
        _exit(0);
    }
    if (argc > 1 && !strcmp(argv[1], "callfix")) {
        // callfix <va-hex> — call 0x461f0a8(obj, key=1, out) with constructed object graph
        // demonstrating the u16->Fix32 transform (bfi #14 + mul + asr #14)
        uint64_t off = strtoull(argv[2], NULL, 16);
        fprintf(stderr, "[cf] step1 setup\n");
        // memory layout — static buffer (no malloc dependency)
        static unsigned char fixmem[0x2000];
        memset(fixmem, 0, sizeof fixmem);
        uint64_t m = (uint64_t)fixmem;
        uint64_t obj   = m + 0x100;
        uint64_t node  = m + 0x500;
        uint64_t uvec  = m + 0x600;   // u32 output vector (node+0x28)
        uint64_t r0    = m + 0x700;   // record object 0 (u16 at +0xa)
        uint64_t r1    = m + 0x740;   // record object 1
        uint64_t recvec= m + 0x800;   // vector {begin,end} of record-object pointers
        uint64_t bvec  = m + 0x900;   // byte vec storage at obj+0xc0
        uint64_t out   = m + 0xA00;   // Fix32 output buffer (x8)
        uint64_t scale = 0x10000;     // Fix32 1.0; try game-realistic later
        uint64_t base1 = 0;           // obj+0x38
        uint64_t base2 = 0;           // obj+0x48

        // obj fields (vectors at +0xc0 / +0xe0 are INLINE {begin,end} pairs)
        *(uint64_t*)(obj + 0x28) = scale;
        *(uint64_t*)(obj + 0x38) = base1;
        *(uint64_t*)(obj + 0x48) = base2;
        *(uint64_t*)(obj + 0x100) = node;  // tree root
        // byte vec at obj+0xc0: [1] (index of the record vector)
        *(uint64_t*)(obj + 0xc0) = bvec + 0x20;
        *(uint64_t*)(obj + 0xc8) = bvec + 0x20 + 1;
        *((uint8_t*)(bvec + 0x20)) = 1;
        // obj+0xe0: vector of record-vectors: [recvec] (8B ptrs)
        *(uint64_t*)(obj + 0xe0) = m + 0x940;           // begin
        *(uint64_t*)(obj + 0xe8) = m + 0x940 + 8;       // end
        *(uint64_t*)(m + 0x940) = recvec;
        // recvec = vector {begin,end} of record-object pointers: [r0, r1]
        *(uint64_t*)(recvec + 0) = r0;
        *(uint64_t*)(recvec + 8) = r1;
        // node: key=0 (<= key w0=1), left/right null, +0x28 -> uvec
        *((uint8_t*)(node + 0x20)) = 0;
        *(uint64_t*)(node + 0x28) = uvec;
        // u32 vector: 4 entries
        *(uint64_t*)(uvec + 0) = uvec + 0x20;
        *(uint64_t*)(uvec + 8) = uvec + 0x20 + 16;
        // record objects: u16 at +0xa, divisor at +0x20
        *((uint8_t*)(r0 + 0xa)) = 0x12; *((uint8_t*)(r0 + 0xb)) = 0x34;   // u16 0x1234
        *(uint32_t*)(r0 + 0x20) = 0x10;
        *((uint8_t*)(r1 + 0xa)) = 0x56; *((uint8_t*)(r1 + 0xb)) = 0x78;   // u16 0x5678
        *(uint32_t*)(r1 + 0x20) = 0x10;

        fprintf(stderr, "[cf] step2 mem built, patching\n");
        // simulate the runtime-config gate: patch `bl 0x22262f8` at bias+0x461f0dc
        // -> `mov w0, wzr` (0x52800000); mprotect the page first
        uintptr_t patch_va = bias + 0x461f0dc;
        long pg = sysconf(_SC_PAGESIZE);
        uintptr_t pgbase = patch_va & ~(uintptr_t)(pg - 1);
        fprintf(stderr, "[cf] step3 mprotect pgbase=%p\n", (void*)pgbase);
        if (mprotect((void *)pgbase, pg * 2, PROT_READ | PROT_WRITE | PROT_EXEC) == 0) {
            fprintf(stderr, "[cf] step4 writing patch\n");
            *(uint32_t *)patch_va = 0x52800020;   // mov w0, #1
            // force qemu-user TB invalidation via mprotect cycle
            mprotect((void *)pgbase, pg, PROT_NONE);
            mprotect((void *)pgbase, pg * 2, PROT_READ | PROT_WRITE | PROT_EXEC);
            printf("patched gate at bias+0x461f0dc word now=0x%08x (expect 0x52800020)\n",
                   *(uint32_t *)patch_va);
        } else {
            printf("mprotect failed: %s\n", strerror(errno));
        }

        // runtime values of the globals the converter dereferences
        printf("global[0x72144f8] = %p   global[0x721d038] = %p   global[0x721d030] = %p\n",
               *(void**)(bias + 0x72144f8), *(void**)(bias + 0x721d038), *(void**)(bias + 0x721d030));
        fflush(stdout);
        printf("callfix bias+0x%lx obj=%p node=%p recvec=%p recs=[%p %p] out=%p\n", off,
               (void*)obj, (void*)node, (void*)recvec, (void*)r0, (void*)r1, (void*)out);
        printf("  u16@r0+0xa = 0x%04x   u16@r1+0xa = 0x%04x  scale=0x%lx\n",
               *(uint16_t*)(r0+0xa), *(uint16_t*)(r1+0xa), scale);
        fflush(stdout);
        uint64_t args[9] = { obj, 1, 0, 0, 0, 0, 0, 0, out };
        uint64_t r = call_va(off, 3, args);
        printf("ret=0x%lx\n", r);
        printf("out[0..0x17]:");
        for (int i = 0; i < 0x18; i += 4) printf(" %08x", *(uint32_t*)(out+i));
        printf("\n");
        _exit(0);
    }
    if (argc > 1 && !strcmp(argv[1], "dump")) {
        // dump <outfile> <va-hex> <len-hex>  — copy runtime memory to a file
        const char *out = argv[2];
        uint64_t va = strtoull(argv[3], NULL, 16);
        uint64_t len = strtoull(argv[4], NULL, 16);
        FILE *fp = fopen(out, "wb");
        if (!fp) { fprintf(stderr, "fopen %s failed\n", out); return 2; }
        size_t n = fwrite((void *)(bias + va), 1, len, fp);
        fclose(fp);
        printf("dumped %zu bytes from bias+0x%lx (%p) to %s\n", n, va, (void *)(bias+va), out);
        _exit(0);
    }
    printf("usage: probe-dlopen [probe|call <va> <nargs> <args...>|callframe <va> <sample> <nargs> <bufpos> <lenpos> [args...]|dump <out> <va> <len>]\n");
    return 0;
}
