// ===== case15_SkillManager_sub1756f4c_lv2_1756fc0 @ 01756fc0 (DecompileAt3: cleared stale instructions at entry) =====
01756fc0  stp x20,x19,[sp, #-0x20]!
01756fc4  stp x29,x30,[sp, #0x10]
01756fc8  add x29,sp,#0x10
01756fcc  ldp x8,x9,[x2]
01756fd0  mov x19,x0
01756fd4  add x0,x1,x9, ASR #0x1
01756fd8  tbz w9,#0x0,0x01756fe4
01756fdc  ldr x9,[x0]
01756fe0  ldr x8,[x9, x8, LSL #0x0]
01756fe4  blr x8
01756fe8  mov x8,x0
01756fec  cbz x8,0x01757008
01756ff0  adrp x2,0x736d000
01756ff4  add x2,x2,#0x180
01756ff8  mov x0,x19
01756ffc  mov x1,x8
01757000  bl 0x0174cd64
01757004  b 0x01757010
01757008  mov x0,x19
0175700c  bl 0x01252b00
01757010  mov w19,#0x1
01757014  ldp x29,x30,[sp, #0x10]
01757018  mov w0,w19
0175701c  ldp x20,x19,[sp], #0x20
01757020  ret
