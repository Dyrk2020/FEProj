// ===== case212-SkillGemResObject @ 016b0ec4 =====
// existing function case212-SkillGemResObject
016b0ec4  sub sp,sp,#0x40
016b0ec8  stp x20,x19,[sp, #0x20]
016b0ecc  stp x29,x30,[sp, #0x30]
016b0ed0  add x29,sp,#0x30
016b0ed4  adrp x1,0x174a000
016b0ed8  add x1,x1,#0x87c
016b0edc  mov x19,x0
016b0ee0  bl 0x0124ba40
016b0ee4  adrp x1,0x575d000
016b0ee8  add x1,x1,#0xa06
016b0eec  mov x0,x19
016b0ef0  str x19,[sp]
016b0ef4  bl 0x01251aa0
016b0ef8  mov w8,#0x1
016b0efc  str w8,[sp, #0x8]
016b0f00  mov x0,sp
016b0f04  bl 0x0174aa04
016b0f08  adrp x1,0x5760000
016b0f0c  adrp x3,0x736d000
016b0f10  add x1,x1,#0xf5b
016b0f14  add x3,x3,#0x101
016b0f18  add x0,sp,#0x10
016b0f1c  mov x2,sp
016b0f20  bl 0x017c11b0
016b0f24  ldr x0,[sp, #0x10]
016b0f28  mov w1,#0x10
016b0f2c  bl 0x0124cba0
016b0f30  adrp x8,0x17c1000
016b0f34  dup v0.2D,xzr
016b0f38  add x8,x8,#0x1a0
016b0f3c  mov v0.D[0x0],x8
016b0f40  str q0,[x0]
016b0f44  ldr x0,[sp, #0x10]
016b0f48  adrp x1,0x17c1000
016b0f4c  add x1,x1,#0x574
016b0f50  mov w2,#0x1
016b0f54  bl 0x0124ec90
016b0f58  ldr x0,[sp, #0x10]
016b0f5c  mov w1,#0xffffffff
016b0f60  bl 0x0124c0c0
016b0f64  ldr x19,[sp, #0x10]
016b0f68  orr w1,wzr,#0xfffffffb
016b0f6c  mov w2,#0x6e7
016b0f70  mov x0,x19
016b0f74  bl 0x0124a650
016b0f78  orr w1,wzr,#0xfffffffe
016b0f7c  mov x0,x19
016b0f80  bl 0x0124c0c0
016b0f84  orr w1,wzr,#0xfffffffe
016b0f88  mov x0,x19
016b0f8c  bl 0x0124e920
016b0f90  mov w20,w0
016b0f94  adrp x1,0x575e000
016b0f98  add x1,x1,#0x56d
016b0f9c  mov x0,x19
016b0fa0  bl 0x0124f120
016b0fa4  orr w1,wzr,#0xfffffffe
016b0fa8  mov w2,#0x1
016b0fac  mov x0,x19
016b0fb0  bl 0x0124cfc0
016b0fb4  mov x0,x19
016b0fb8  mov w1,w20
016b0fbc  bl 0x0124e060
016b0fc0  orr w1,wzr,#0xfffffffd
016b0fc4  mov x0,x19
016b0fc8  bl 0x0124c4d0
016b0fcc  ldr x19,[sp, #0x10]
016b0fd0  orr w1,wzr,#0xfffffffd
016b0fd4  mov w2,#0x6e7
016b0fd8  mov x0,x19
016b0fdc  bl 0x0124a650
016b0fe0  orr w1,wzr,#0xfffffffe
016b0fe4  mov x0,x19
016b0fe8  bl 0x0124c0c0
016b0fec  orr w1,wzr,#0xfffffffe
016b0ff0  mov x0,x19
016b0ff4  bl 0x0124e920
016b0ff8  mov w20,w0
016b0ffc  adrp x1,0x575e000
016b1000  add x1,x1,#0x56d
016b1004  mov x0,x19
016b1008  bl 0x0124f120
016b100c  orr w1,wzr,#0xfffffffe
016b1010  mov w2,#0x1
016b1014  mov x0,x19
016b1018  bl 0x0124cfc0
016b101c  mov x0,x19
016b1020  mov w1,w20
016b1024  bl 0x0124e060
016b1028  orr w1,wzr,#0xfffffffd
016b102c  mov x0,x19
016b1030  bl 0x0124c4d0
016b1034  ldr x0,[sp, #0x10]
016b1038  mov w1,#0x10
016b103c  bl 0x0124cba0
016b1040  adrp x8,0x17c1000
016b1044  dup v0.2D,xzr
016b1048  add x8,x8,#0x1a8
016b104c  mov v0.D[0x0],x8
016b1050  str q0,[x0]
016b1054  ldr x0,[sp, #0x10]
016b1058  adrp x1,0x17c1000
016b105c  add x1,x1,#0x698
016b1060  mov w2,#0x1
016b1064  bl 0x0124ec90
016b1068  ldr x0,[sp, #0x10]
016b106c  mov w1,#0xffffffff
016b1070  bl 0x0124c0c0
016b1074  ldr x19,[sp, #0x10]
016b1078  orr w1,wzr,#0xfffffffb
016b107c  mov w2,#0x6e7
016b1080  mov x0,x19
016b1084  bl 0x0124a650
016b1088  orr w1,wzr,#0xfffffffe
016b108c  mov x0,x19
016b1090  bl 0x0124c0c0
016b1094  orr w1,wzr,#0xfffffffe
016b1098  mov x0,x19
016b109c  bl 0x0124e920
016b10a0  mov w20,w0
016b10a4  adrp x1,0x575e000
016b10a8  add x1,x1,#0x578
016b10ac  mov x0,x19
016b10b0  bl 0x0124f120
016b10b4  orr w1,wzr,#0xfffffffe
016b10b8  mov w2,#0x1
016b10bc  mov x0,x19
016b10c0  bl 0x0124cfc0
016b10c4  mov x0,x19
016b10c8  mov w1,w20
016b10cc  bl 0x0124e060
016b10d0  orr w1,wzr,#0xfffffffd
016b10d4  mov x0,x19
016b10d8  bl 0x0124c4d0
016b10dc  ldr x19,[sp, #0x10]
016b10e0  orr w1,wzr,#0xfffffffd
016b10e4  mov w2,#0x6e7
016b10e8  mov x0,x19
016b10ec  bl 0x0124a650
016b10f0  orr w1,wzr,#0xfffffffe
016b10f4  mov x0,x19
016b10f8  bl 0x0124c0c0
016b10fc  orr w1,wzr,#0xfffffffe
016b1100  mov x0,x19
016b1104  bl 0x0124e920
016b1108  mov w20,w0
016b110c  adrp x1,0x575e000
016b1110  add x1,x1,#0x578
016b1114  mov x0,x19
016b1118  bl 0x0124f120
016b111c  orr w1,wzr,#0xfffffffe
016b1120  mov w2,#0x1
016b1124  mov x0,x19
016b1128  bl 0x0124cfc0
016b112c  mov x0,x19
016b1130  mov w1,w20
016b1134  bl 0x0124e060
016b1138  orr w1,wzr,#0xfffffffd
016b113c  mov x0,x19
016b1140  bl 0x0124c4d0
016b1144  ldr w8,[sp, #0x18]
016b1148  ldr x0,[sp, #0x10]
016b114c  sub w8,w8,#0x3
016b1150  str w8,[sp, #0x18]
016b1154  orr w1,wzr,#0xfffffffc
016b1158  bl 0x0124c4d0
016b115c  ldr w8,[sp, #0x18]
016b1160  ldr x0,[sp, #0x10]
016b1164  str wzr,[sp, #0x18]
016b1168  cmp w8,#0x1
016b116c  b.lt 0x016b1190
016b1170  mvn w1,w8
016b1174  bl 0x0124c4d0
016b1178  ldr w8,[sp, #0x18]
016b117c  cmp w8,#0x1
016b1180  b.lt 0x016b1190
016b1184  ldr x0,[sp, #0x10]
016b1188  mvn w1,w8
016b118c  bl 0x0124c4d0
016b1190  ldr w8,[sp, #0x8]
016b1194  cmp w8,#0x1
016b1198  b.lt 0x016b11a8
016b119c  ldr x0,[sp]
016b11a0  mvn w1,w8
016b11a4  bl 0x0124c4d0
016b11a8  ldp x29,x30,[sp, #0x30]
016b11ac  ldp x20,x19,[sp, #0x20]
016b11b0  add sp,sp,#0x40
016b11b4  ret
