// ===== case26_LuaFrameDataMgr_sub175ca74_lv2_175cae8 @ 0175cae8 (DecompileAt3: cleared stale instructions at entry) =====
0175cae8  stp x20,x19,[sp, #-0x20]!
0175caec  stp x29,x30,[sp, #0x10]
0175caf0  add x29,sp,#0x10
0175caf4  ldp x8,x9,[x2]
0175caf8  mov x19,x0
0175cafc  add x0,x1,x9, ASR #0x1
0175cb00  tbz w9,#0x0,0x0175cb0c
0175cb04  ldr x9,[x0]
0175cb08  ldr x8,[x9, x8, LSL #0x0]
0175cb0c  blr x8
0175cb10  mov x8,x0
0175cb14  cbz x8,0x0175cb30
0175cb18  adrp x2,0x736d000
0175cb1c  add x2,x2,#0x251
0175cb20  mov x0,x19
0175cb24  mov x1,x8
0175cb28  bl 0x0174cd64
0175cb2c  b 0x0175cb38
0175cb30  mov x0,x19
0175cb34  bl 0x01252b00
0175cb38  mov w19,#0x1
0175cb3c  ldp x29,x30,[sp, #0x10]
0175cb40  mov w0,w19
0175cb44  ldp x20,x19,[sp], #0x20
0175cb48  ret
