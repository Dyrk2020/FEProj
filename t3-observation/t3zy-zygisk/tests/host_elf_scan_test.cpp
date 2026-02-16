// Host unit test for elf_scan.h (x86_64/glibc): validates dual-candidate dynamic
// pointer resolution against THIS binary's own PLT/GOT imports.
#include "../src/elf_scan.h"

#include <dlfcn.h>
#include <link.h>

#include <cstdio>
#include <vector>

static t3zy::SlotCounts g_hits;
static const char* g_sym = "";
static std::vector<t3zy::Range> g_as;

static int cb_self(struct dl_phdr_info* info, size_t, void*) {
  g_hits = t3zy::count_symbol_slots(info->dlpi_phdr, info->dlpi_phnum,
                                    reinterpret_cast<uintptr_t>(info->dlpi_addr),
                                    g_sym, g_as);
  return 1;  // main executable only
}

int main() {
  if (!t3zy::build_addrspace(&g_as)) {
    fprintf(stderr, "FAIL: cannot read /proc/self/maps\n");
    return 1;
  }
  // fortify may rewrite fprintf -> __fprintf_chk; fopen stays plain
  const char* cands[] = {"fopen", "fprintf", "__fprintf_chk"};
  bool pass = false;
  for (const char* s : cands) {
    g_sym = s;
    dl_iterate_phdr(cb_self, nullptr);
    fprintf(stderr, "main exe: %s jump=%zu glob=%zu\n", g_sym, g_hits.jump,
            g_hits.glob);
    if (g_hits.jump > 0 || g_hits.glob > 0) { pass = true; break; }
  }
  if (!pass) {
    fprintf(stderr, "FAIL: no expected import resolved\n");
    return 1;
  }
  fprintf(stderr, "PASS: jmprel/globdat scan resolves symbols under glibc relocation\n");
  return 0;
}
