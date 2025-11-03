// ===== case850_ActorSkill_sub19ecf70 @ 019ecf70 (DecompileAt3: cleared stale instructions at entry) =====
019ecf70  stp x20,x19,[sp, #-0x20]!
019ecf74  stp x29,x30,[sp, #0x10]
019ecf78  add x29,sp,#0x10
019ecf7c  mov w1,#0x1
019ecf80  mov x19,x0
019ecf84  bl 0x0124ff50
019ecf88  cbz w0,0x019ecfb4
019ecf8c  adrp x2,0x736d000
019ecf90  adrp x3,0x736d000
019ecf94  add x2,x2,#0x208
019ecf98  add x3,x3,#0x207
019ecf9c  mov w1,#0x1
019ecfa0  mov w4,#0x1
019ecfa4  mov x0,x19
019ecfa8  bl 0x0174b938
019ecfac  ldr x20,[x0, #0x8]
019ecfb0  b 0x019ecfb8
019ecfb4  mov x20,xzr
019ecfb8  mov w1,#0xb9d7
019ecfbc  movk w1,#0xfff0, LSL #16
019ecfc0  mov x0,x19
019ecfc4  bl 0x0124e990
019ecfc8  mov x2,x0
019ecfcc  mov x0,x19
019ecfd0  mov x1,x20
019ecfd4  bl 0x019ecfe4
019ecfd8  ldp x29,x30,[sp, #0x10]
019ecfdc  ldp x20,x19,[sp], #0x20
019ecfe0  ret
