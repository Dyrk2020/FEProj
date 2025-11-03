// ===== case158-EquipShopSchemeBase @ 016a75e4 =====
// existing function case158-EquipShopSchemeBase
016a75e4  sub sp,sp,#0x40
016a75e8  stp x20,x19,[sp, #0x20]
016a75ec  stp x29,x30,[sp, #0x30]
016a75f0  add x29,sp,#0x30
016a75f4  adrp x1,0x174a000
016a75f8  add x1,x1,#0x87c
016a75fc  mov x19,x0
016a7600  bl 0x0124ba40
016a7604  adrp x1,0x575d000
016a7608  add x1,x1,#0xa06
016a760c  mov x0,x19
016a7610  str x19,[sp]
016a7614  bl 0x01251aa0
016a7618  mov w8,#0x1
016a761c  str w8,[sp, #0x8]
016a7620  mov x0,sp
016a7624  bl 0x0174aa04
016a7628  adrp x1,0x5760000
016a762c  adrp x3,0x736d000
016a7630  add x1,x1,#0x1d1
016a7634  add x3,x3,#0x101
016a7638  add x0,sp,#0x10
016a763c  mov x2,sp
016a7640  bl 0x017a4000
016a7644  ldr x0,[sp, #0x10]
016a7648  mov w1,#0x10
016a764c  bl 0x0124cba0
016a7650  adrp x8,0x17a3000
016a7654  dup v0.2D,xzr
016a7658  add x8,x8,#0xa00
016a765c  mov v0.D[0x0],x8
016a7660  str q0,[x0]
016a7664  ldr x0,[sp, #0x10]
016a7668  adrp x1,0x17a4000
016a766c  add x1,x1,#0x3c4
016a7670  mov w2,#0x1
016a7674  bl 0x0124ec90
016a7678  ldr x0,[sp, #0x10]
016a767c  mov w1,#0xffffffff
016a7680  bl 0x0124c0c0
016a7684  ldr x19,[sp, #0x10]
016a7688  orr w1,wzr,#0xfffffffb
016a768c  mov w2,#0x6e7
016a7690  mov x0,x19
016a7694  bl 0x0124a650
016a7698  orr w1,wzr,#0xfffffffe
016a769c  mov x0,x19
016a76a0  bl 0x0124c0c0
016a76a4  orr w1,wzr,#0xfffffffe
016a76a8  mov x0,x19
016a76ac  bl 0x0124e920
016a76b0  mov w20,w0
016a76b4  adrp x1,0x5760000
016a76b8  add x1,x1,#0x1e5
016a76bc  mov x0,x19
016a76c0  bl 0x0124f120
016a76c4  orr w1,wzr,#0xfffffffe
016a76c8  mov w2,#0x1
016a76cc  mov x0,x19
016a76d0  bl 0x0124cfc0
016a76d4  mov x0,x19
016a76d8  mov w1,w20
016a76dc  bl 0x0124e060
016a76e0  orr w1,wzr,#0xfffffffd
016a76e4  mov x0,x19
016a76e8  bl 0x0124c4d0
016a76ec  ldr x19,[sp, #0x10]
016a76f0  orr w1,wzr,#0xfffffffd
016a76f4  mov w2,#0x6e7
016a76f8  mov x0,x19
016a76fc  bl 0x0124a650
016a7700  orr w1,wzr,#0xfffffffe
016a7704  mov x0,x19
016a7708  bl 0x0124c0c0
016a770c  orr w1,wzr,#0xfffffffe
016a7710  mov x0,x19
016a7714  bl 0x0124e920
016a7718  mov w20,w0
016a771c  adrp x1,0x5760000
016a7720  add x1,x1,#0x1e5
016a7724  mov x0,x19
016a7728  bl 0x0124f120
016a772c  orr w1,wzr,#0xfffffffe
016a7730  mov w2,#0x1
016a7734  mov x0,x19
016a7738  bl 0x0124cfc0
016a773c  mov x0,x19
016a7740  mov w1,w20
016a7744  bl 0x0124e060
016a7748  orr w1,wzr,#0xfffffffd
016a774c  mov x0,x19
016a7750  bl 0x0124c4d0
016a7754  adrp x1,0x5760000
016a7758  adrp x2,0x17a3000
016a775c  adrp x4,0x17a3000
016a7760  add x1,x1,#0x1eb
016a7764  add x2,x2,#0xbf0
016a7768  add x4,x4,#0xbf8
016a776c  add x0,sp,#0x10
016a7770  mov x3,xzr
016a7774  mov x5,xzr
016a7778  bl 0x017a3a08
016a777c  adrp x1,0x5760000
016a7780  adrp x2,0x17a3000
016a7784  adrp x4,0x17a3000
016a7788  add x1,x1,#0x1fb
016a778c  add x2,x2,#0xde8
016a7790  add x4,x4,#0xdf0
016a7794  mov x3,xzr
016a7798  mov x5,xzr
016a779c  bl 0x017a3c00
016a77a0  adrp x1,0x5760000
016a77a4  adrp x2,0x17a3000
016a77a8  adrp x4,0x17a3000
016a77ac  add x1,x1,#0x207
016a77b0  add x2,x2,#0xfe0
016a77b4  add x4,x4,#0xfe8
016a77b8  mov x3,xzr
016a77bc  mov x5,xzr
016a77c0  bl 0x017a3df8
016a77c4  adrp x1,0x5760000
016a77c8  adrp x2,0x17a3000
016a77cc  adrp x4,0x17a3000
016a77d0  add x1,x1,#0x211
016a77d4  add x2,x2,#0xff0
016a77d8  add x4,x4,#0xff8
016a77dc  mov x3,xzr
016a77e0  mov x5,xzr
016a77e4  bl 0x017a3df8
016a77e8  mov x19,x0
016a77ec  ldr w8,[x19, #0x8]
016a77f0  ldr x0,[x19]
016a77f4  sub w8,w8,#0x3
016a77f8  str w8,[x19, #0x8]
016a77fc  orr w1,wzr,#0xfffffffc
016a7800  bl 0x0124c4d0
016a7804  ldr w8,[x19, #0x8]
016a7808  ldr x0,[x19]
016a780c  str wzr,[x19, #0x8]
016a7810  cmp w8,#0x1
016a7814  b.lt 0x016a7820
016a7818  mvn w1,w8
016a781c  bl 0x0124c4d0
016a7820  ldr w8,[sp, #0x18]
016a7824  cmp w8,#0x1
016a7828  b.lt 0x016a7838
016a782c  ldr x0,[sp, #0x10]
016a7830  mvn w1,w8
016a7834  bl 0x0124c4d0
016a7838  ldr w8,[sp, #0x8]
016a783c  cmp w8,#0x1
016a7840  b.lt 0x016a7850
016a7844  ldr x0,[sp]
016a7848  mvn w1,w8
016a784c  bl 0x0124c4d0
016a7850  ldp x29,x30,[sp, #0x30]
016a7854  ldp x20,x19,[sp, #0x20]
016a7858  add sp,sp,#0x40
016a785c  ret
