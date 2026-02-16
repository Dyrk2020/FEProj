// elf_scan.h — read-only ELF relocation scanner, shared by device module (aarch64/bionic)
// and host unit test (x86_64/glibc). Counts PLT (JUMPREL) and GLOB_DAT relocations that
// reference a given symbol name. Never writes to memory.
//
// Addressing convention: glibc relocates .dynamic pointer entries in place (adds load
// bias); bionic leaves them untouched. We therefore resolve every dynamic-table pointer
// with two candidates — (bias + val) and bare val — accepting whichever lands inside a
// mapped region from /proc/self/maps. Correct under either loader convention.
#ifndef T3ZY_ELF_SCAN_H
#define T3ZY_ELF_SCAN_H

#include <elf.h>
#include <link.h>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <vector>

namespace t3zy {

struct SlotCounts {
  size_t jump = 0;  // DT_JMPREL entries referencing the symbol
  size_t glob = 0;  // DT_RELA GLOB_DAT entries referencing the symbol
};

struct Range { uintptr_t start = 0, end = 0; };

inline bool build_addrspace(std::vector<Range>* out) {
  FILE* f = fopen("/proc/self/maps", "re");
  if (!f) return false;
  char line[512];
  while (fgets(line, sizeof(line), f)) {
    unsigned long st, en;
    if (sscanf(line, "%lx-%lx", &st, &en) != 2) continue;
    out->push_back({st, en});
  }
  fclose(f);
  return !out->empty();
}

inline const void* resolve_dyn_ptr(uintptr_t val, uintptr_t bias,
                                   const std::vector<Range>& as) {
  const uintptr_t cand[2] = {val + bias, val};
  for (uintptr_t c : cand) {
    for (const Range& r : as)
      if (c >= r.start && c < r.end) return reinterpret_cast<const void*>(c);
  }
  return nullptr;
}

#if defined(__aarch64__)
constexpr unsigned long kRelGlobDat = 1025;  // R_AARCH64_GLOB_DAT
#elif defined(__x86_64__)
constexpr unsigned long kRelGlobDat = 6;     // R_X86_64_GLOB_DAT
#elif defined(__i386__)
constexpr unsigned long kRelGlobDat = 6;     // R_386_GLOB_DAT
#else
constexpr unsigned long kRelGlobDat = ~0UL;  // unknown: skip GLOB_DAT classification
#endif

constexpr ElfW(Xword) kMaxTableBytes = 8u << 20;  // sanity cap on any dynamic table

// Scan one ELF given its program headers (valid at call time), load bias and the
// process address space. Returns per-table hit counts for `symbol`.
inline SlotCounts count_symbol_slots(const ElfW(Phdr)* phdr, int phnum, uintptr_t bias,
                                     const char* symbol,
                                     const std::vector<Range>& as) {
  SlotCounts out{};
  if (as.empty()) return out;

  const ElfW(Dyn)* dyn = nullptr;
  ElfW(Xword) dynsz = 0;
  for (int i = 0; i < phnum; ++i) {
    if (phdr[i].p_type == PT_DYNAMIC) {
      dyn = static_cast<const ElfW(Dyn)*>(
          resolve_dyn_ptr(phdr[i].p_vaddr, bias, as));
      dynsz = phdr[i].p_memsz;
    }
  }
  if (!dyn || dynsz == 0 || dynsz > kMaxTableBytes) return out;

  const ElfW(Rela)* jmprel = nullptr;
  ElfW(Xword) pltsz = 0;
  const ElfW(Rela)* rela = nullptr;
  ElfW(Xword) relasz = 0;
  const ElfW(Sym)* symtab = nullptr;
  const char* strtab = nullptr;

  for (const ElfW(Dyn)* d = dyn;
       d < reinterpret_cast<const ElfW(Dyn)*>(reinterpret_cast<const char*>(dyn) + dynsz) &&
       d->d_tag != DT_NULL;
       ++d) {
    switch (d->d_tag) {
      case DT_JMPREL:
        jmprel = reinterpret_cast<const ElfW(Rela)*>(
            resolve_dyn_ptr(d->d_un.d_val, bias, as));
        break;
      case DT_PLTRELSZ: pltsz = d->d_un.d_val; break;
      case DT_RELA:
        rela = reinterpret_cast<const ElfW(Rela)*>(
            resolve_dyn_ptr(d->d_un.d_val, bias, as));
        break;
      case DT_RELASZ: relasz = d->d_un.d_val; break;
      case DT_SYMTAB:
        symtab = reinterpret_cast<const ElfW(Sym)*>(
            resolve_dyn_ptr(d->d_un.d_val, bias, as));
        break;
      case DT_STRTAB:
        strtab = static_cast<const char*>(resolve_dyn_ptr(d->d_un.d_val, bias, as));
        break;
      default: break;
    }
  }
  if (!symtab || !strtab) return out;

  const size_t entsz = sizeof(ElfW(Rela));
  if (jmprel && pltsz && pltsz <= kMaxTableBytes) {
    for (ElfW(Xword) off = 0; off + entsz <= pltsz; off += entsz) {
      const ElfW(Rela)& r = *reinterpret_cast<const ElfW(Rela)*>(
          reinterpret_cast<const char*>(jmprel) + off);
      const char* nm = strtab + symtab[ELF64_R_SYM(r.r_info)].st_name;
      if (strcmp(nm, symbol) == 0) ++out.jump;
    }
  }
  if (rela && relasz && relasz <= kMaxTableBytes && kRelGlobDat != ~0UL) {
    for (ElfW(Xword) off = 0; off + entsz <= relasz; off += entsz) {
      const ElfW(Rela)& r = *reinterpret_cast<const ElfW(Rela)*>(
          reinterpret_cast<const char*>(rela) + off);
      if (ELF64_R_TYPE(r.r_info) != kRelGlobDat) continue;
      const char* nm = strtab + symtab[ELF64_R_SYM(r.r_info)].st_name;
      if (strcmp(nm, symbol) == 0) ++out.glob;
    }
  }
  return out;
}

}  // namespace t3zy
#endif  // T3ZY_ELF_SCAN_H
