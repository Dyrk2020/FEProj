// ===== case397_DataFrame_sub1846c68_lv2_1846cdc @ 01846cdc (DecompileAt3: cleared stale instructions at entry) =====
01846cdc  stp x20,x19,[sp, #-0x20]!
01846ce0  stp x29,x30,[sp, #0x10]
01846ce4  add x29,sp,#0x10
01846ce8  ldp x8,x9,[x2]
01846cec  mov x19,x0
01846cf0  add x0,x1,x9, ASR #0x1
01846cf4  tbz w9,#0x0,0x01846d00
01846cf8  ldr x9,[x0]
01846cfc  ldr x8,[x9, x8, LSL #0x0]
01846d00  blr x8
01846d04  mov x8,x0
01846d08  cbz x8,0x01846d24
01846d0c  adrp x2,0x736d000
01846d10  add x2,x2,#0x83b
01846d14  mov x0,x19
01846d18  mov x1,x8
01846d1c  bl 0x0174cd64
01846d20  b 0x01846d2c
01846d24  mov x0,x19
01846d28  bl 0x01252b00
01846d2c  mov w19,#0x1
01846d30  ldp x29,x30,[sp, #0x10]
01846d34  mov w0,w19
01846d38  ldp x20,x19,[sp], #0x20
01846d3c  ret
