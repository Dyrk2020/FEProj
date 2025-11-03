// ===== case339_EventManagerAdapter_sub1812f40_lv2_1812fb4 @ 01812fb4 (DecompileAt3: cleared stale instructions at entry) =====
01812fb4  stp x20,x19,[sp, #-0x20]!
01812fb8  stp x29,x30,[sp, #0x10]
01812fbc  add x29,sp,#0x10
01812fc0  ldp x8,x9,[x2]
01812fc4  mov x19,x0
01812fc8  add x0,x1,x9, ASR #0x1
01812fcc  tbz w9,#0x0,0x01812fd8
01812fd0  ldr x9,[x0]
01812fd4  ldr x8,[x9, x8, LSL #0x0]
01812fd8  blr x8
01812fdc  mov x8,x0
01812fe0  cbz x8,0x01812ffc
01812fe4  adrp x2,0x736d000
01812fe8  add x2,x2,#0x71e
01812fec  mov x0,x19
01812ff0  mov x1,x8
01812ff4  bl 0x0174cd64
01812ff8  b 0x01813004
01812ffc  mov x0,x19
01813000  bl 0x01252b00
01813004  mov w19,#0x1
01813008  ldp x29,x30,[sp, #0x10]
0181300c  mov w0,w19
01813010  ldp x20,x19,[sp], #0x20
01813014  ret
