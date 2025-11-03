// ===== case397_DataFrame_sub1846b44_lv2_1846bb8 @ 01846bb8 (DecompileAt3: cleared stale instructions at entry) =====
01846bb8  stp x20,x19,[sp, #-0x20]!
01846bbc  stp x29,x30,[sp, #0x10]
01846bc0  add x29,sp,#0x10
01846bc4  ldp x8,x9,[x2]
01846bc8  mov x19,x0
01846bcc  add x0,x1,x9, ASR #0x1
01846bd0  tbz w9,#0x0,0x01846bdc
01846bd4  ldr x9,[x0]
01846bd8  ldr x8,[x9, x8, LSL #0x0]
01846bdc  blr x8
01846be0  mov x8,x0
01846be4  cbz x8,0x01846c00
01846be8  adrp x2,0x736d000
01846bec  add x2,x2,#0x25d
01846bf0  mov x0,x19
01846bf4  mov x1,x8
01846bf8  bl 0x0174cd64
01846bfc  b 0x01846c08
01846c00  mov x0,x19
01846c04  bl 0x01252b00
01846c08  mov w19,#0x1
01846c0c  ldp x29,x30,[sp, #0x10]
01846c10  mov w0,w19
01846c14  ldp x20,x19,[sp], #0x20
01846c18  ret
