// ===== case397_DataFrame_sub1847a44_lv2_1847ab8 @ 01847ab8 (DecompileAt3: cleared stale instructions at entry) =====
01847ab8  stp x20,x19,[sp, #-0x20]!
01847abc  stp x29,x30,[sp, #0x10]
01847ac0  add x29,sp,#0x10
01847ac4  ldp x8,x9,[x2]
01847ac8  mov x19,x0
01847acc  add x0,x1,x9, ASR #0x1
01847ad0  tbz w9,#0x0,0x01847adc
01847ad4  ldr x9,[x0]
01847ad8  ldr x8,[x9, x8, LSL #0x0]
01847adc  blr x8
01847ae0  mov x8,x0
01847ae4  cbz x8,0x01847b00
01847ae8  adrp x2,0x736d000
01847aec  add x2,x2,#0x844
01847af0  mov x0,x19
01847af4  mov x1,x8
01847af8  bl 0x0174cd64
01847afc  b 0x01847b08
01847b00  mov x0,x19
01847b04  bl 0x01252b00
01847b08  mov w19,#0x1
01847b0c  ldp x29,x30,[sp, #0x10]
01847b10  mov w0,w19
01847b14  ldp x20,x19,[sp], #0x20
01847b18  ret
