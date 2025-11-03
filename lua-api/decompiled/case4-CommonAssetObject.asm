// ===== case4-CommonAssetObject @ 0168d72c =====
// existing function case4-CommonAssetObject
0168d72c  sub sp,sp,#0x40
0168d730  str x19,[sp, #0x20]
0168d734  stp x29,x30,[sp, #0x30]
0168d738  add x29,sp,#0x30
0168d73c  adrp x1,0x174a000
0168d740  add x1,x1,#0x87c
0168d744  mov x19,x0
0168d748  bl 0x0124ba40
0168d74c  adrp x1,0x575d000
0168d750  add x1,x1,#0xa06
0168d754  mov x0,x19
0168d758  str x19,[sp]
0168d75c  bl 0x01251aa0
0168d760  mov w8,#0x1
0168d764  str w8,[sp, #0x8]
0168d768  mov x0,sp
0168d76c  bl 0x0174aa04
0168d770  adrp x1,0x5767000
0168d774  adrp x3,0x736d000
0168d778  add x1,x1,#0xe4
0168d77c  add x3,x3,#0x101
0168d780  add x0,sp,#0x10
0168d784  mov x2,sp
0168d788  bl 0x01751f0c
0168d78c  adrp x1,0x575d000
0168d790  adrp x2,0x1751000
0168d794  add x1,x1,#0xbc5
0168d798  add x2,x2,#0xd04
0168d79c  add x0,sp,#0x10
0168d7a0  mov x3,xzr
0168d7a4  mov x4,xzr
0168d7a8  mov x5,xzr
0168d7ac  bl 0x01751b1c
0168d7b0  adrp x1,0x5944000
0168d7b4  adrp x2,0x1751000
0168d7b8  add x1,x1,#0xbee
0168d7bc  add x2,x2,#0xd0c
0168d7c0  mov x3,xzr
0168d7c4  mov x4,xzr
0168d7c8  mov x5,xzr
0168d7cc  bl 0x01751b1c
0168d7d0  adrp x1,0x57f9000
0168d7d4  adrp x2,0x1751000
0168d7d8  adrp x4,0x1751000
0168d7dc  add x1,x1,#0xcf2
0168d7e0  add x2,x2,#0xefc
0168d7e4  add x4,x4,#0xf04
0168d7e8  mov x3,xzr
0168d7ec  mov x5,xzr
0168d7f0  bl 0x01751d14
0168d7f4  mov x19,x0
0168d7f8  ldr w8,[x19, #0x8]
0168d7fc  ldr x0,[x19]
0168d800  sub w8,w8,#0x3
0168d804  str w8,[x19, #0x8]
0168d808  orr w1,wzr,#0xfffffffc
0168d80c  bl 0x0124c4d0
0168d810  ldr w8,[x19, #0x8]
0168d814  ldr x0,[x19]
0168d818  str wzr,[x19, #0x8]
0168d81c  cmp w8,#0x1
0168d820  b.lt 0x0168d82c
0168d824  mvn w1,w8
0168d828  bl 0x0124c4d0
0168d82c  ldr w8,[sp, #0x18]
0168d830  cmp w8,#0x1
0168d834  b.lt 0x0168d844
0168d838  ldr x0,[sp, #0x10]
0168d83c  mvn w1,w8
0168d840  bl 0x0124c4d0
0168d844  ldr w8,[sp, #0x8]
0168d848  cmp w8,#0x1
0168d84c  b.lt 0x0168d85c
0168d850  ldr x0,[sp]
0168d854  mvn w1,w8
0168d858  bl 0x0124c4d0
0168d85c  ldp x29,x30,[sp, #0x30]
0168d860  ldr x19,[sp, #0x20]
0168d864  add sp,sp,#0x40
0168d868  ret
