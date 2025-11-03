// ===== case14_BuffManager_sub1756a54_lv2_1756ac8 @ 01756ac8 (DecompileAt3: cleared stale instructions at entry) =====
01756ac8  stp x20,x19,[sp, #-0x20]!
01756acc  stp x29,x30,[sp, #0x10]
01756ad0  add x29,sp,#0x10
01756ad4  ldp x8,x9,[x2]
01756ad8  mov x19,x0
01756adc  add x0,x1,x9, ASR #0x1
01756ae0  tbz w9,#0x0,0x01756aec
01756ae4  ldr x9,[x0]
01756ae8  ldr x8,[x9, x8, LSL #0x0]
01756aec  blr x8
01756af0  mov x8,x0
01756af4  cbz x8,0x01756b10
01756af8  adrp x2,0x736d000
01756afc  add x2,x2,#0x227
01756b00  mov x0,x19
01756b04  mov x1,x8
01756b08  bl 0x0174cd64
01756b0c  b 0x01756b18
01756b10  mov x0,x19
01756b14  bl 0x01252b00
01756b18  mov w19,#0x1
01756b1c  ldp x29,x30,[sp, #0x10]
01756b20  mov w0,w19
01756b24  ldp x20,x19,[sp], #0x20
01756b28  ret
