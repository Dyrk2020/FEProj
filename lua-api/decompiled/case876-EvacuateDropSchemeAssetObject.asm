// ===== case876-EvacuateDropSchemeAssetObject @ 017495d4 =====
// existing function case876-EvacuateDropSchemeAssetObject
017495d4  sub sp,sp,#0x40
017495d8  str x19,[sp, #0x20]
017495dc  stp x29,x30,[sp, #0x30]
017495e0  add x29,sp,#0x30
017495e4  adrp x1,0x174a000
017495e8  add x1,x1,#0x87c
017495ec  mov x19,x0
017495f0  bl 0x0124ba40
017495f4  adrp x1,0x575d000
017495f8  add x1,x1,#0xa06
017495fc  mov x0,x19
01749600  str x19,[sp]
01749604  bl 0x01251aa0
01749608  mov w8,#0x1
0174960c  str w8,[sp, #0x8]
01749610  mov x0,sp
01749614  bl 0x0174aa04
01749618  adrp x1,0x5774000
0174961c  adrp x3,0x736d000
01749620  add x1,x1,#0xb6
01749624  add x3,x3,#0x101
01749628  add x0,sp,#0x10
0174962c  mov x2,sp
01749630  bl 0x01a16cc4
01749634  adrp x1,0x575d000
01749638  adrp x2,0x1a16000
0174963c  adrp x4,0x1a16000
01749640  add x1,x1,#0xa00
01749644  add x2,x2,#0xcb4
01749648  add x4,x4,#0xcbc
0174964c  add x0,sp,#0x10
01749650  mov x3,xzr
01749654  mov x5,xzr
01749658  bl 0x01a16acc
0174965c  mov x19,x0
01749660  ldr w8,[x19, #0x8]
01749664  ldr x0,[x19]
01749668  sub w8,w8,#0x3
0174966c  str w8,[x19, #0x8]
01749670  orr w1,wzr,#0xfffffffc
01749674  bl 0x0124c4d0
01749678  ldr w8,[x19, #0x8]
0174967c  ldr x0,[x19]
01749680  str wzr,[x19, #0x8]
01749684  cmp w8,#0x1
01749688  b.lt 0x01749694
0174968c  mvn w1,w8
01749690  bl 0x0124c4d0
01749694  ldr w8,[sp, #0x18]
01749698  cmp w8,#0x1
0174969c  b.lt 0x017496ac
017496a0  ldr x0,[sp, #0x10]
017496a4  mvn w1,w8
017496a8  bl 0x0124c4d0
017496ac  ldr w8,[sp, #0x8]
017496b0  cmp w8,#0x1
017496b4  b.lt 0x017496c4
017496b8  ldr x0,[sp]
017496bc  mvn w1,w8
017496c0  bl 0x0124c4d0
017496c4  ldp x29,x30,[sp, #0x30]
017496c8  ldr x19,[sp, #0x20]
017496cc  add sp,sp,#0x40
017496d0  ret
