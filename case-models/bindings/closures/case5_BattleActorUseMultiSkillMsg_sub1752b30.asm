// ===== case5_BattleActorUseMultiSkillMsg_sub1752b30 @ 01752b30 (DecompileAt3: cleared stale instructions at entry) =====
01752b30  stp x20,x19,[sp, #-0x20]!
01752b34  stp x29,x30,[sp, #0x10]
01752b38  add x29,sp,#0x10
01752b3c  mov w1,#0x1
01752b40  mov x19,x0
01752b44  bl 0x0124ff50
01752b48  cbz w0,0x01752b74
01752b4c  adrp x2,0x736d000
01752b50  adrp x3,0x736d000
01752b54  add x2,x2,#0x206
01752b58  add x3,x3,#0x205
01752b5c  mov w1,#0x1
01752b60  mov w4,#0x1
01752b64  mov x0,x19
01752b68  bl 0x0174b938
01752b6c  ldr x20,[x0, #0x8]
01752b70  b 0x01752b78
01752b74  mov x20,xzr
01752b78  mov w1,#0xb9d7
01752b7c  movk w1,#0xfff0, LSL #16
01752b80  mov x0,x19
01752b84  bl 0x0124e990
01752b88  mov x2,x0
01752b8c  mov x0,x19
01752b90  mov x1,x20
01752b94  bl 0x01752ba4
01752b98  ldp x29,x30,[sp, #0x10]
01752b9c  ldp x20,x19,[sp], #0x20
01752ba0  ret
