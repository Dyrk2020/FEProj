// ============================================================
// Hex-Rays C pseudocode - rttext IDB
// FlowEvaluatorActionNromalAttackPreCrit TypeId 36317=0x8DDD
// 0x6EC4438  ——  ADRP 
// cri_scan5/6/7  ADRP+ADD  = 0 [V  / V ]
// ============================================================

int *sub_4956FAC()   // dword_82F46B0 = 36317
{
  unsigned __int8 v0 = atomic_load((unsigned __int8 *)&byte_82F46B8);
  if ( (v0 & 1) == 0 && __cxa_guard_acquire(&byte_82F46B8) != 0 )
  {
    dword_82F46B0 = 36317;
    __cxa_guard_release(&byte_82F46B8);
  }
  return &dword_82F46B0;
}
__int64 sub_4956FFC() { return 36317; }                    // TypeId() = 0x8DDD
__int64 __fastcall sub_4957004(__int64 a1, _DWORD *a2)     // IsType(id)
{
  if ( *a2 == 36317 ) return 1;
  if ( LOBYTE(word_725E056[1]) != LOBYTE(word_725E056[0]) )
  {
    __int64 v2 = 0;
    while ( word_7223640[2 * word_725E056[0] + 1 + 2 * v2] != *a2 )
      if ( ++v2 >= (unsigned __int64)(unsigned __int8)(LOBYTE(word_725E056[1]) - LOBYTE(word_725E056[0])) )
        return 0;
    return 1;
  }
  return 0;
}
__int64 sub_4957084() { return 8; }                        // /

// 0x6EC4438  0x40B
//   [-2] 0xFFFFFFFFFFFFFFD0  [-1] 0x6C386E0 (IFlowEvaluatorActionNromalAttackPreCritSync typeinfo)
//   [0] sub_4956FAC [1] sub_4956FFC [2] sub_4957004 [3] sub_4957084
//   [4] sub_1F2AB5C [5] sub_2EE189C [6] sub_30154AC [7] 0
//    typeinfovptr 0x720A890 @0x6EC4490 0x57F3CD0
//     "N11FrameEngine5Logic38FlowEvaluatorActionNromalAttackPreCritE"= 
//  FlowEvaluator 0x57A10C0, typeinfo @0x6CEE7C8TypeId=35110sub_3E819D8 

// RNG  [V]
//  - libc rand/srand 0x8DDA050/0x8DDA038 thunk(.rand @0x1153144)  GOT(0x7222608)
//     ——  RNG  libc rand
//  - .text splitmix64 / xorshift64* / PCG / wyhash / xxhash / murmur /  LCG
//  - FrameEngine::FixRandomcase 409fix_seed/useed  RNG Lua "battle"
//     Next() [INFERENCE]
