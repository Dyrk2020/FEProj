// hook_arm64.h — minimal arm64 inline hook for t3zy
//
// Scheme: overwrite 16 bytes at function entry with
//     LDR X17, [pc, #8]      ; 0x58000051  (imm19 = 8/4 = 2, Rt = 17)
//     BR  X17                ; 0xD61F0220
//     .quad replacement      ; 8B
// Original instructions are copied into an RWX->RX trampoline followed by a
// jump back to entry+16. PC-relative instructions inside the copied window
// are rejected (hook_install returns false) rather than mis-relocated.
#ifndef T3ZY_HOOK_ARM64_H
#define T3ZY_HOOK_ARM64_H

#include <cstdint>
#include <cstring>
#include <sys/mman.h>
#include <unistd.h>

namespace thk {

constexpr int kPatchLen = 16;
constexpr uint32_t LDR_X17_PC8 = 0x58000051u;   // LDR X17, [PC, #8]
constexpr uint32_t BR_X17      = 0xD61F0220u;   // BR  X17

inline bool pc_relative(uint32_t w) {
  if ((w & 0x7C000000u) == 0x14000000u) return true;   // B / BL
  if ((w & 0xFF000010u) == 0x54000000u) return true;   // B.cond
  if ((w & 0x7E000000u) == 0x34000000u) return true;   // CBZ / CBNZ
  if ((w & 0x7E000000u) == 0x36000000u) return true;   // TBZ / TBNZ
  if ((w & 0x9F000000u) == 0x10000000u) return true;   // ADR (bit31=0)
  if ((w & 0x9F000000u) == 0x90000000u) return true;   // ADRP (bit31=1)
  if ((w & 0x3B000000u) == 0x18000000u) return true;   // LDR/PRFM literal
  return false;
}

inline bool window_relocatable(const void* code, int len) {
  const uint8_t* p = static_cast<const uint8_t*>(code);
  for (int off = 0; off + 4 <= len; off += 4) {
    uint32_t w;
    memcpy(&w, p + off, 4);
    if (pc_relative(w)) return false;
  }
  return true;
}

inline bool hook_install(void* fn, void* replacement, void** original_out) {
  uint8_t* target = static_cast<uint8_t*>(fn);
  long pageSize = sysconf(_SC_PAGESIZE);

  uint8_t prologue[kPatchLen];
  memcpy(prologue, target, kPatchLen);
  if (!window_relocatable(prologue, kPatchLen)) return false;

  uint8_t* tram = static_cast<uint8_t*>(
      mmap(nullptr, pageSize, PROT_READ | PROT_WRITE | PROT_EXEC,
           MAP_PRIVATE | MAP_ANONYMOUS, -1, 0));
  if (tram == MAP_FAILED) return false;

  // trampoline: relocated prologue + jump back to entry+16
  memcpy(tram, prologue, kPatchLen);
  memcpy(tram + kPatchLen, &LDR_X17_PC8, 4);
  memcpy(tram + kPatchLen + 4, &BR_X17, 4);
  uint64_t back = reinterpret_cast<uint64_t>(target) + kPatchLen;
  memcpy(tram + kPatchLen + 8, &back, 8);

  *original_out = tram;

  // entry patch: LDR/BR + replacement address
  uintptr_t pageLo = reinterpret_cast<uintptr_t>(target) & ~(pageSize - 1);
  if (mprotect(reinterpret_cast<void*>(pageLo), pageSize,
               PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
    munmap(tram, pageSize);
    *original_out = nullptr;
    return false;
  }

  uint8_t patch[kPatchLen];
  uint64_t repl = reinterpret_cast<uint64_t>(replacement);
  memcpy(patch, &LDR_X17_PC8, 4);
  memcpy(patch + 4, &BR_X17, 4);
  memcpy(patch + 8, &repl, 8);
  memcpy(target, patch, kPatchLen);

  __builtin___clear_cache(reinterpret_cast<char*>(target),
                          reinterpret_cast<char*>(target + kPatchLen));
  __builtin___clear_cache(reinterpret_cast<char*>(tram),
                          reinterpret_cast<char*>(tram + kPatchLen + 16));

  mprotect(tram, pageSize, PROT_READ | PROT_EXEC);
  mprotect(reinterpret_cast<void*>(pageLo), pageSize, PROT_READ | PROT_EXEC);
  return true;
}

}  // namespace thk
#endif  // T3ZY_HOOK_ARM64_H
