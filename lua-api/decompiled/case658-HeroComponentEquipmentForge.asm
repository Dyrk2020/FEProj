// ===== case658-HeroComponentEquipmentForge @ 01715e44 =====
// existing function case658-HeroComponentEquipmentForge
01715e44  sub sp,sp,#0x40
01715e48  stp x20,x19,[sp, #0x20]
01715e4c  stp x29,x30,[sp, #0x30]
01715e50  add x29,sp,#0x30
01715e54  adrp x1,0x174a000
01715e58  add x1,x1,#0x87c
01715e5c  mov x19,x0
01715e60  bl 0x0124ba40
01715e64  adrp x1,0x575d000
01715e68  add x1,x1,#0xa06
01715e6c  mov x0,x19
01715e70  str x19,[sp]
01715e74  bl 0x01251aa0
01715e78  mov w8,#0x1
01715e7c  str w8,[sp, #0x8]
01715e80  mov x0,sp
01715e84  bl 0x0174aa04
01715e88  adrp x1,0x576c000
01715e8c  adrp x3,0x736d000
01715e90  add x1,x1,#0xb84
01715e94  add x3,x3,#0x101
01715e98  add x0,sp,#0x10
01715e9c  mov x2,sp
01715ea0  bl 0x0192e440
01715ea4  ldr x0,[sp, #0x10]
01715ea8  mov w1,#0x10
01715eac  bl 0x0124cba0
01715eb0  adrp x8,0x192d000
01715eb4  dup v0.2D,xzr
01715eb8  add x8,x8,#0xfa4
01715ebc  mov v0.D[0x0],x8
01715ec0  str q0,[x0]
01715ec4  ldr x0,[sp, #0x10]
01715ec8  adrp x1,0x192e000
01715ecc  add x1,x1,#0x804
01715ed0  mov w2,#0x1
01715ed4  bl 0x0124ec90
01715ed8  ldr x0,[sp, #0x10]
01715edc  mov w1,#0xffffffff
01715ee0  bl 0x0124c0c0
01715ee4  ldr x19,[sp, #0x10]
01715ee8  orr w1,wzr,#0xfffffffb
01715eec  mov w2,#0x6e7
01715ef0  mov x0,x19
01715ef4  bl 0x0124a650
01715ef8  orr w1,wzr,#0xfffffffe
01715efc  mov x0,x19
01715f00  bl 0x0124c0c0
01715f04  orr w1,wzr,#0xfffffffe
01715f08  mov x0,x19
01715f0c  bl 0x0124e920
01715f10  mov w20,w0
01715f14  adrp x1,0x576c000
01715f18  add x1,x1,#0xba0
01715f1c  mov x0,x19
01715f20  bl 0x0124f120
01715f24  orr w1,wzr,#0xfffffffe
01715f28  mov w2,#0x1
01715f2c  mov x0,x19
01715f30  bl 0x0124cfc0
01715f34  mov x0,x19
01715f38  mov w1,w20
01715f3c  bl 0x0124e060
01715f40  orr w1,wzr,#0xfffffffd
01715f44  mov x0,x19
01715f48  bl 0x0124c4d0
01715f4c  ldr x19,[sp, #0x10]
01715f50  orr w1,wzr,#0xfffffffd
01715f54  mov w2,#0x6e7
01715f58  mov x0,x19
01715f5c  bl 0x0124a650
01715f60  orr w1,wzr,#0xfffffffe
01715f64  mov x0,x19
01715f68  bl 0x0124c0c0
01715f6c  orr w1,wzr,#0xfffffffe
01715f70  mov x0,x19
01715f74  bl 0x0124e920
01715f78  mov w20,w0
01715f7c  adrp x1,0x576c000
01715f80  add x1,x1,#0xba0
01715f84  mov x0,x19
01715f88  bl 0x0124f120
01715f8c  orr w1,wzr,#0xfffffffe
01715f90  mov w2,#0x1
01715f94  mov x0,x19
01715f98  bl 0x0124cfc0
01715f9c  mov x0,x19
01715fa0  mov w1,w20
01715fa4  bl 0x0124e060
01715fa8  orr w1,wzr,#0xfffffffd
01715fac  mov x0,x19
01715fb0  bl 0x0124c4d0
01715fb4  adrp x1,0x576c000
01715fb8  adrp x2,0x192e000
01715fbc  adrp x4,0x192e000
01715fc0  add x1,x1,#0xbae
01715fc4  add x2,x2,#0x194
01715fc8  add x4,x4,#0x19c
01715fcc  add x0,sp,#0x10
01715fd0  mov x3,xzr
01715fd4  mov x5,xzr
01715fd8  bl 0x0192dfac
01715fdc  adrp x1,0x576c000
01715fe0  adrp x2,0x192e000
01715fe4  adrp x4,0x192e000
01715fe8  add x1,x1,#0xbbb
01715fec  add x2,x2,#0x1b8
01715ff0  add x4,x4,#0x1c0
01715ff4  mov x3,xzr
01715ff8  mov x5,xzr
01715ffc  bl 0x0192dfac
01716000  adrp x1,0x5768000
01716004  adrp x2,0x192e000
01716008  adrp x4,0x192e000
0171600c  add x1,x1,#0xd77
01716010  add x2,x2,#0x1dc
01716014  add x4,x4,#0x1e4
01716018  mov x3,xzr
0171601c  mov x5,xzr
01716020  bl 0x0192dfac
01716024  adrp x1,0x576c000
01716028  adrp x2,0x192e000
0171602c  adrp x4,0x192e000
01716030  add x1,x1,#0xbcf
01716034  add x2,x2,#0x200
01716038  add x4,x4,#0x208
0171603c  mov x3,xzr
01716040  mov x5,xzr
01716044  bl 0x0192dfac
01716048  adrp x1,0x5762000
0171604c  adrp x2,0x192e000
01716050  adrp x4,0x192e000
01716054  add x1,x1,#0x36
01716058  add x2,x2,#0x224
0171605c  add x4,x4,#0x22c
01716060  mov x3,xzr
01716064  mov x5,xzr
01716068  bl 0x0192dfac
0171606c  adrp x1,0x576c000
01716070  adrp x2,0x192e000
01716074  add x1,x1,#0xbde
01716078  add x2,x2,#0x430
0171607c  mov x3,xzr
01716080  mov x4,xzr
01716084  mov x5,xzr
01716088  bl 0x0192e248
0171608c  adrp x1,0x576c000
01716090  adrp x2,0x192e000
01716094  add x1,x1,#0xbec
01716098  add x2,x2,#0x438
0171609c  mov x3,xzr
017160a0  mov x4,xzr
017160a4  mov x5,xzr
017160a8  bl 0x0192e248
017160ac  mov x19,x0
017160b0  ldr w8,[x19, #0x8]
017160b4  ldr x0,[x19]
017160b8  sub w8,w8,#0x3
017160bc  str w8,[x19, #0x8]
017160c0  orr w1,wzr,#0xfffffffc
017160c4  bl 0x0124c4d0
017160c8  ldr w8,[x19, #0x8]
017160cc  ldr x0,[x19]
017160d0  str wzr,[x19, #0x8]
017160d4  cmp w8,#0x1
017160d8  b.lt 0x017160e4
017160dc  mvn w1,w8
017160e0  bl 0x0124c4d0
017160e4  ldr w8,[sp, #0x18]
017160e8  cmp w8,#0x1
017160ec  b.lt 0x017160fc
017160f0  ldr x0,[sp, #0x10]
017160f4  mvn w1,w8
017160f8  bl 0x0124c4d0
017160fc  ldr w8,[sp, #0x8]
01716100  cmp w8,#0x1
01716104  b.lt 0x01716114
01716108  ldr x0,[sp]
0171610c  mvn w1,w8
01716110  bl 0x0124c4d0
01716114  ldp x29,x30,[sp, #0x30]
01716118  ldp x20,x19,[sp, #0x20]
0171611c  add sp,sp,#0x40
01716120  ret
