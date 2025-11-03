// ===== case37_FEBattleContext_sub1763fb0 @ 01763fb0 (DecompileAt3: cleared stale instructions at entry) =====
01763fb0  stp x20,x19,[sp, #-0x20]!
01763fb4  stp x29,x30,[sp, #0x10]
01763fb8  add x29,sp,#0x10
01763fbc  mov w1,#0x1
01763fc0  mov x19,x0
01763fc4  bl 0x0124ff50
01763fc8  cbz w0,0x01763ff4
01763fcc  adrp x2,0x736d000
01763fd0  adrp x3,0x736d000
01763fd4  add x2,x2,#0x280
01763fd8  add x3,x3,#0x27f
01763fdc  mov w1,#0x1
01763fe0  mov w4,#0x1
01763fe4  mov x0,x19
01763fe8  bl 0x0174b938
01763fec  ldr x20,[x0, #0x8]
01763ff0  b 0x01763ff8
01763ff4  mov x20,xzr
01763ff8  mov w1,#0xb9d7
01763ffc  movk w1,#0xfff0, LSL #16
01764000  mov x0,x19
01764004  bl 0x0124e990
01764008  mov x2,x0
0176400c  mov x0,x19
01764010  mov x1,x20
01764014  bl 0x01764024
01764018  ldp x29,x30,[sp, #0x10]
0176401c  ldp x20,x19,[sp], #0x20
01764020  ret
