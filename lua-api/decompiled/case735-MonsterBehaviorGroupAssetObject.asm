// ===== case735-MonsterBehaviorGroupAssetObject @ 01726904 =====
// existing function case735-MonsterBehaviorGroupAssetObject
01726904  sub sp,sp,#0x40
01726908  str x19,[sp, #0x20]
0172690c  stp x29,x30,[sp, #0x30]
01726910  add x29,sp,#0x30
01726914  adrp x1,0x174a000
01726918  add x1,x1,#0x87c
0172691c  mov x19,x0
01726920  bl 0x0124ba40
01726924  adrp x1,0x575d000
01726928  add x1,x1,#0xa06
0172692c  mov x0,x19
01726930  str x19,[sp]
01726934  bl 0x01251aa0
01726938  mov w8,#0x1
0172693c  str w8,[sp, #0x8]
01726940  mov x0,sp
01726944  bl 0x0174aa04
01726948  adrp x1,0x5770000
0172694c  adrp x3,0x736d000
01726950  add x1,x1,#0x60
01726954  add x3,x3,#0x101
01726958  add x0,sp,#0x10
0172695c  mov x2,sp
01726960  bl 0x0197d414
01726964  adrp x1,0x575d000
01726968  adrp x2,0x197d000
0172696c  adrp x4,0x197d000
01726970  add x1,x1,#0xa00
01726974  add x2,x2,#0x404
01726978  add x4,x4,#0x40c
0172697c  add x0,sp,#0x10
01726980  mov x3,xzr
01726984  mov x5,xzr
01726988  bl 0x0197d21c
0172698c  mov x19,x0
01726990  ldr w8,[x19, #0x8]
01726994  ldr x0,[x19]
01726998  sub w8,w8,#0x3
0172699c  str w8,[x19, #0x8]
017269a0  orr w1,wzr,#0xfffffffc
017269a4  bl 0x0124c4d0
017269a8  ldr w8,[x19, #0x8]
017269ac  ldr x0,[x19]
017269b0  str wzr,[x19, #0x8]
017269b4  cmp w8,#0x1
017269b8  b.lt 0x017269c4
017269bc  mvn w1,w8
017269c0  bl 0x0124c4d0
017269c4  ldr w8,[sp, #0x18]
017269c8  cmp w8,#0x1
017269cc  b.lt 0x017269dc
017269d0  ldr x0,[sp, #0x10]
017269d4  mvn w1,w8
017269d8  bl 0x0124c4d0
017269dc  ldr w8,[sp, #0x8]
017269e0  cmp w8,#0x1
017269e4  b.lt 0x017269f4
017269e8  ldr x0,[sp]
017269ec  mvn w1,w8
017269f0  bl 0x0124c4d0
017269f4  ldp x29,x30,[sp, #0x30]
017269f8  ldr x19,[sp, #0x20]
017269fc  add sp,sp,#0x40
01726a00  ret
