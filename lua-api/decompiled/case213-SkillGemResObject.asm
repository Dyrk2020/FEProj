// ===== case213-SkillGemResObject @ 016b121c =====
// existing function case213-SkillGemResObject
016b121c  sub sp,sp,#0x50
016b1220  str x21,[sp, #0x20]
016b1224  stp x20,x19,[sp, #0x30]
016b1228  stp x29,x30,[sp, #0x40]
016b122c  add x29,sp,#0x40
016b1230  adrp x1,0x174a000
016b1234  add x1,x1,#0x87c
016b1238  mov x19,x0
016b123c  bl 0x0124ba40
016b1240  adrp x1,0x575d000
016b1244  add x1,x1,#0xa06
016b1248  mov x0,x19
016b124c  str x19,[sp]
016b1250  bl 0x01251aa0
016b1254  mov w8,#0x1
016b1258  str w8,[sp, #0x8]
016b125c  mov x0,sp
016b1260  bl 0x0174aa04
016b1264  adrp x1,0x5760000
016b1268  adrp x3,0x736d000
016b126c  add x1,x1,#0xf70
016b1270  add x3,x3,#0x101
016b1274  add x0,sp,#0x10
016b1278  mov x2,sp
016b127c  bl 0x017c1bb4
016b1280  adrp x1,0x5760000
016b1284  adrp x2,0x17c1000
016b1288  adrp x4,0x17c1000
016b128c  add x1,x1,#0xf82
016b1290  add x2,x2,#0x9a4
016b1294  add x4,x4,#0x9ac
016b1298  add x0,sp,#0x10
016b129c  mov x3,xzr
016b12a0  mov x5,xzr
016b12a4  bl 0x017c17bc
016b12a8  adrp x1,0x5760000
016b12ac  adrp x2,0x17c1000
016b12b0  adrp x4,0x17c1000
016b12b4  add x1,x1,#0xe7f
016b12b8  add x2,x2,#0xb9c
016b12bc  add x4,x4,#0xba4
016b12c0  mov x3,xzr
016b12c4  mov x5,xzr
016b12c8  bl 0x017c19b4
016b12cc  mov x19,x0
016b12d0  ldr x0,[x19]
016b12d4  mov w1,#0x10
016b12d8  bl 0x0124cba0
016b12dc  adrp x8,0x17c1000
016b12e0  dup v0.2D,xzr
016b12e4  add x8,x8,#0xbac
016b12e8  mov v0.D[0x0],x8
016b12ec  str q0,[x0]
016b12f0  ldr x0,[x19]
016b12f4  adrp x1,0x17c2000
016b12f8  add x1,x1,#0x3b8
016b12fc  mov w2,#0x1
016b1300  bl 0x0124ec90
016b1304  ldr x0,[x19]
016b1308  mov w1,#0xffffffff
016b130c  bl 0x0124c0c0
016b1310  ldr x20,[x19]
016b1314  orr w1,wzr,#0xfffffffb
016b1318  mov w2,#0x6e7
016b131c  mov x0,x20
016b1320  bl 0x0124a650
016b1324  orr w1,wzr,#0xfffffffe
016b1328  mov x0,x20
016b132c  bl 0x0124c0c0
016b1330  orr w1,wzr,#0xfffffffe
016b1334  mov x0,x20
016b1338  bl 0x0124e920
016b133c  mov w21,w0
016b1340  adrp x1,0x5760000
016b1344  add x1,x1,#0xec5
016b1348  mov x0,x20
016b134c  bl 0x0124f120
016b1350  orr w1,wzr,#0xfffffffe
016b1354  mov w2,#0x1
016b1358  mov x0,x20
016b135c  bl 0x0124cfc0
016b1360  mov x0,x20
016b1364  mov w1,w21
016b1368  bl 0x0124e060
016b136c  orr w1,wzr,#0xfffffffd
016b1370  mov x0,x20
016b1374  bl 0x0124c4d0
016b1378  ldr x20,[x19]
016b137c  orr w1,wzr,#0xfffffffd
016b1380  mov w2,#0x6e7
016b1384  mov x0,x20
016b1388  bl 0x0124a650
016b138c  orr w1,wzr,#0xfffffffe
016b1390  mov x0,x20
016b1394  bl 0x0124c0c0
016b1398  orr w1,wzr,#0xfffffffe
016b139c  mov x0,x20
016b13a0  bl 0x0124e920
016b13a4  mov w21,w0
016b13a8  adrp x1,0x5760000
016b13ac  add x1,x1,#0xec5
016b13b0  mov x0,x20
016b13b4  bl 0x0124f120
016b13b8  orr w1,wzr,#0xfffffffe
016b13bc  mov w2,#0x1
016b13c0  mov x0,x20
016b13c4  bl 0x0124cfc0
016b13c8  mov x0,x20
016b13cc  mov w1,w21
016b13d0  bl 0x0124e060
016b13d4  orr w1,wzr,#0xfffffffd
016b13d8  mov x0,x20
016b13dc  bl 0x0124c4d0
016b13e0  ldr w8,[x19, #0x8]
016b13e4  ldr x0,[x19]
016b13e8  sub w8,w8,#0x3
016b13ec  str w8,[x19, #0x8]
016b13f0  orr w1,wzr,#0xfffffffc
016b13f4  bl 0x0124c4d0
016b13f8  ldr w8,[x19, #0x8]
016b13fc  ldr x0,[x19]
016b1400  str wzr,[x19, #0x8]
016b1404  cmp w8,#0x1
016b1408  b.lt 0x016b1414
016b140c  mvn w1,w8
016b1410  bl 0x0124c4d0
016b1414  ldr w8,[sp, #0x18]
016b1418  cmp w8,#0x1
016b141c  b.lt 0x016b142c
016b1420  ldr x0,[sp, #0x10]
016b1424  mvn w1,w8
016b1428  bl 0x0124c4d0
016b142c  ldr w8,[sp, #0x8]
016b1430  cmp w8,#0x1
016b1434  b.lt 0x016b1444
016b1438  ldr x0,[sp]
016b143c  mvn w1,w8
016b1440  bl 0x0124c4d0
016b1444  ldp x29,x30,[sp, #0x40]
016b1448  ldp x20,x19,[sp, #0x30]
016b144c  ldr x21,[sp, #0x20]
016b1450  add sp,sp,#0x50
016b1454  ret
