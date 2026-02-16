/* fanotify sentinel: logs pid+comm of any process opening watched files.
   Static arm64, no external headers beyond NDK defaults. */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include <signal.h>
#include <sys/syscall.h>
#include <sys/stat.h>

#ifndef FAN_CLASS_NOTIF
#define FAN_CLASS_NOTIF 0x00000000
#endif
#ifndef FAN_MARK_ADD
#define FAN_MARK_ADD 0x00000001
#endif
#ifndef FAN_OPEN
#define FAN_OPEN 0x00000010
#endif
#ifndef FAN_EVENT_ON_CHILD
#define FAN_EVENT_ON_CHILD 0x08000000
#endif
#ifndef AT_FDCWD
#define AT_FDCWD -100
#endif

struct fan_meta {
    unsigned int event_len;
    unsigned char vers;
    unsigned char reserved;
    unsigned short metadata_len;
    unsigned long long mask;
    int pid;
    int fd;
};
#define META_LEN sizeof(struct fan_meta)

static int f_init(unsigned flags, unsigned evflags) {
    return (int)syscall(__NR_fanotify_init, flags, evflags);
}
static int f_mark(int fd, unsigned flags, unsigned long long mask, int dirfd, const char *path) {
    return (int)syscall(__NR_fanotify_mark, fd, flags, (unsigned long long)mask, dirfd, path);
}

static volatile int stop = 0;
static void onint(int s){ (void)s; stop = 1; }

int main(int argc, char **argv) {
    if (argc < 3) { fprintf(stderr, "usage: fanwatch LOG FILE [FILE...]\n"); return 2; }
    int fd = f_init(FAN_CLASS_NOTIF, O_RDONLY | O_CLOEXEC | O_LARGEFILE);
    if (fd < 0) { perror("fanotify_init"); return 1; }
    for (int i = 2; i < argc; i++) {
        if (f_mark(fd, FAN_MARK_ADD, FAN_OPEN | FAN_EVENT_ON_CHILD, AT_FDCWD, argv[i]) < 0)
            fprintf(stderr, "mark failed: %s\n", argv[i]);
        else fprintf(stderr, "watching %s\n", argv[i]);
    }
    FILE *lg = fopen(argv[1], "a");
    signal(SIGINT, onint); signal(SIGTERM, onint);
    char buf[8192];
    while (!stop) {
        int n = (int)read(fd, buf, sizeof(buf));
        if (n <= 0) break;
        char *p = buf, *end = buf + n;
        while (p + sizeof(struct fan_meta) <= end) {
            struct fan_meta *m = (struct fan_meta *)p;
            if (m->event_len < (unsigned)META_LEN || p + m->event_len > end) break;
            char path[300] = "?", link[128], comm[64] = "?";
            snprintf(link, sizeof link, "/proc/self/fd/%d", m->fd);
            ssize_t r = readlink(link, path, sizeof(path) - 1);
            if (r > 0) path[r] = 0;
            snprintf(link, sizeof link, "/proc/%d/comm", m->pid);
            int cf = open(link, O_RDONLY);
            if (cf >= 0) { int k = (int)read(cf, comm, 63); if (k > 0) comm[k < 63 ? k : 63] = 0; close(cf); }
            if (lg) {
                fprintf(lg, "%ld OPEN pid=%d comm=%s path=%s\n",
                        (long)time(NULL), m->pid, comm, path);
                fflush(lg);
            }
            if (m->fd >= 0) close(m->fd);
            p += m->event_len;
        }
    }
    if (lg) fclose(lg);
    close(fd);
    return 0;
}
