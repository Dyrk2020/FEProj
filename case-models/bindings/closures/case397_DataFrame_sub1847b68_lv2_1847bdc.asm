// ===== case397_DataFrame_sub1847b68_lv2_1847bdc @ 01847bdc (DecompileAt3: cleared stale instructions at entry) =====
01847bdc  stp x20,x19,[sp, #-0x20]!
01847be0  stp x29,x30,[sp, #0x10]
01847be4  add x29,sp,#0x10
01847be8  ldp x8,x9,[x2]
01847bec  mov x19,x0
01847bf0  add x0,x1,x9, ASR #0x1
01847bf4  tbz w9,#0x0,0x01847c00
01847bf8  ldr x9,[x0]
01847bfc  ldr x8,[x9, x8, LSL #0x0]
01847c00  blr x8
01847c04  mov x8,x0
01847c08  cbz x8,0x01847c24
01847c0c  adrp x2,0x736d000
01847c10  add x2,x2,#0x720
01847c14  mov x0,x19
01847c18  mov x1,x8
01847c1c  bl 0x0174cd64
01847c20  b 0x01847c2c
01847c24  mov x0,x19
01847c28  bl 0x01252b00
01847c2c  mov w19,#0x1
01847c30  ldp x29,x30,[sp, #0x10]
01847c34  mov w0,w19
01847c38  ldp x20,x19,[sp], #0x20
01847c3c  ret
