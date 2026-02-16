/* inotify sentinel: logs OPEN/ACCESS on watched paths (no opener pid on this API) */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include <signal.h>
#include <sys/inotify.h>

static volatile int stop = 0;
static void onint(int s){ (void)s; stop = 1; }

static const char *evname(unsigned mask) {
    static char b[64]; b[0] = 0;
    if (mask & IN_OPEN) strcat(b, "OPEN ");
    if (mask & IN_ACCESS) strcat(b, "ACCESS ");
    if (mask & IN_CLOSE_WRITE) strcat(b, "CLOSE_W ");
    return b;
}

int main(int argc, char **argv) {
    if (argc < 2) { fprintf(stderr, "usage: inowatch LOG FILE [FILE...]\n"); return 2; }
    int fd = inotify_init1(IN_CLOEXEC);
    if (fd < 0) { perror("inotify_init1"); return 1; }
    for (int i = 2; i < argc; i++) {
        int wd = inotify_add_watch(fd, argv[i], IN_OPEN | IN_ACCESS | IN_CLOSE_WRITE);
        if (wd < 0) fprintf(stderr, "watch fail %s\n", argv[i]);
        else fprintf(stderr, "watching %s (wd=%d)\n", argv[i], wd);
    }
    FILE *lg = fopen(argv[1], "a");
    signal(SIGINT, onint); signal(SIGTERM, onint);
    char buf[4096];
    while (!stop) {
        int n = (int)read(fd, buf, sizeof(buf));
        if (n <= 0) break;
        char *p = buf, *end = buf + n;
        while (p < end) {
            struct inotify_event *e = (struct inotify_event *)p;
            if (lg) {
                fprintf(lg, "%ld %s%s wd=%d\n",
                        (long)time(NULL), evname(e->mask), (e->len ? e->name : ""), e->wd);
                fflush(lg);
            }
            p += sizeof(struct inotify_event) + e->len;
        }
    }
    if (lg) fclose(lg);
    close(fd);
    return 0;
}
