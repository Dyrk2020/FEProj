// ===== case850_ActorSkill_sub19f10f8 @ 019f10f8 (DecompileAt3: cleared stale instructions at entry) =====
019f10f8  stp x20,x19,[sp, #-0x20]!
019f10fc  stp x29,x30,[sp, #0x10]
019f1100  add x29,sp,#0x10
019f1104  mov w1,#0x1
019f1108  mov x19,x0
019f110c  bl 0x0124ff50
019f1110  cbz w0,0x019f113c
019f1114  adrp x2,0x736d000
019f1118  adrp x3,0x736d000
019f111c  add x2,x2,#0x208
019f1120  add x3,x3,#0x207
019f1124  mov w1,#0x1
019f1128  mov w4,#0x1
019f112c  mov x0,x19
019f1130  bl 0x0174b938
019f1134  ldr x20,[x0, #0x8]
019f1138  b 0x019f1140
019f113c  mov x20,xzr
019f1140  mov w1,#0xb9d7
019f1144  movk w1,#0xfff0, LSL #16
019f1148  mov x0,x19
019f114c  bl 0x0124e990
019f1150  mov x2,x0
019f1154  mov x0,x19
019f1158  mov x1,x20
019f115c  bl 0x019f116c
019f1160  ldp x29,x30,[sp, #0x10]
019f1164  ldp x20,x19,[sp], #0x20
019f1168  ret
