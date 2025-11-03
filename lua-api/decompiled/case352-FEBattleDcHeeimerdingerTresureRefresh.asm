// ===== case352-FEBattleDcHeeimerdingerTresureRefresh @ 016d1164 =====
// existing function case352-FEBattleDcHeeimerdingerTresureRefresh
016d1164  sub sp,sp,#0x40
016d1168  str x19,[sp, #0x20]
016d116c  stp x29,x30,[sp, #0x30]
016d1170  add x29,sp,#0x30
016d1174  adrp x1,0x174a000
016d1178  add x1,x1,#0x87c
016d117c  mov x19,x0
016d1180  bl 0x0124ba40
016d1184  adrp x1,0x575d000
016d1188  add x1,x1,#0xa06
016d118c  mov x0,x19
016d1190  str x19,[sp]
016d1194  bl 0x01251aa0
016d1198  mov w8,#0x1
016d119c  str w8,[sp, #0x8]
016d11a0  mov x0,sp
016d11a4  bl 0x0174aa04
016d11a8  adrp x1,0x5763000
016d11ac  adrp x3,0x736d000
016d11b0  add x1,x1,#0xd8b
016d11b4  add x3,x3,#0x101
016d11b8  add x0,sp,#0x10
016d11bc  mov x2,sp
016d11c0  bl 0x0181cf74
016d11c4  adrp x1,0x5944000
016d11c8  adrp x2,0x181c000
016d11cc  adrp x4,0x181c000
016d11d0  add x1,x1,#0xaba
016d11d4  add x2,x2,#0xb34
016d11d8  add x4,x4,#0xb3c
016d11dc  add x0,sp,#0x10
016d11e0  mov x3,xzr
016d11e4  mov x5,xzr
016d11e8  bl 0x0181c94c
016d11ec  adrp x1,0x5763000
016d11f0  adrp x2,0x181c000
016d11f4  adrp x4,0x181c000
016d11f8  add x1,x1,#0xd81
016d11fc  add x2,x2,#0xd2c
016d1200  add x4,x4,#0xd34
016d1204  mov x3,xzr
016d1208  mov x5,xzr
016d120c  bl 0x0181cb44
016d1210  adrp x1,0x5773000
016d1214  adrp x2,0x181c000
016d1218  adrp x4,0x181c000
016d121c  add x1,x1,#0x77a
016d1220  add x2,x2,#0xd3c
016d1224  add x4,x4,#0xd44
016d1228  mov x3,xzr
016d122c  mov x5,xzr
016d1230  bl 0x0181c94c
016d1234  adrp x1,0x5763000
016d1238  adrp x2,0x181c000
016d123c  adrp x4,0x181c000
016d1240  add x1,x1,#0xdb1
016d1244  add x2,x2,#0xd4c
016d1248  add x4,x4,#0xd54
016d124c  mov x3,xzr
016d1250  mov x5,xzr
016d1254  bl 0x0181c94c
016d1258  adrp x1,0x5972000
016d125c  adrp x2,0x181c000
016d1260  adrp x4,0x181c000
016d1264  add x1,x1,#0xaa5
016d1268  add x2,x2,#0xd5c
016d126c  add x4,x4,#0xd64
016d1270  mov x3,xzr
016d1274  mov x5,xzr
016d1278  bl 0x0181cb44
016d127c  adrp x1,0x5761000
016d1280  adrp x2,0x181c000
016d1284  adrp x4,0x181c000
016d1288  add x1,x1,#0x469
016d128c  add x2,x2,#0xf54
016d1290  add x4,x4,#0xf5c
016d1294  mov x3,xzr
016d1298  mov x5,xzr
016d129c  bl 0x0181cd6c
016d12a0  adrp x1,0x5763000
016d12a4  adrp x2,0x181c000
016d12a8  adrp x4,0x181c000
016d12ac  add x1,x1,#0xd0d
016d12b0  add x2,x2,#0xf64
016d12b4  add x4,x4,#0xf6c
016d12b8  mov x3,xzr
016d12bc  mov x5,xzr
016d12c0  bl 0x0181cb44
016d12c4  mov x19,x0
016d12c8  ldr w8,[x19, #0x8]
016d12cc  ldr x0,[x19]
016d12d0  sub w8,w8,#0x3
016d12d4  str w8,[x19, #0x8]
016d12d8  orr w1,wzr,#0xfffffffc
016d12dc  bl 0x0124c4d0
016d12e0  ldr w8,[x19, #0x8]
016d12e4  ldr x0,[x19]
016d12e8  str wzr,[x19, #0x8]
016d12ec  cmp w8,#0x1
016d12f0  b.lt 0x016d12fc
016d12f4  mvn w1,w8
016d12f8  bl 0x0124c4d0
016d12fc  ldr w8,[sp, #0x18]
016d1300  cmp w8,#0x1
016d1304  b.lt 0x016d1314
016d1308  ldr x0,[sp, #0x10]
016d130c  mvn w1,w8
016d1310  bl 0x0124c4d0
016d1314  ldr w8,[sp, #0x8]
016d1318  cmp w8,#0x1
016d131c  b.lt 0x016d132c
016d1320  ldr x0,[sp]
016d1324  mvn w1,w8
016d1328  bl 0x0124c4d0
016d132c  ldp x29,x30,[sp, #0x30]
016d1330  ldr x19,[sp, #0x20]
016d1334  add sp,sp,#0x40
016d1338  ret
