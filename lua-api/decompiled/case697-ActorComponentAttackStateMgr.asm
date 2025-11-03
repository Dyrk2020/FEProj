// ===== case697-ActorComponentAttackStateMgr @ 017206bc =====
// existing function case697-ActorComponentAttackStateMgr
017206bc  sub sp,sp,#0x40
017206c0  str x19,[sp, #0x20]
017206c4  stp x29,x30,[sp, #0x30]
017206c8  add x29,sp,#0x30
017206cc  adrp x1,0x174a000
017206d0  add x1,x1,#0x87c
017206d4  mov x19,x0
017206d8  bl 0x0124ba40
017206dc  adrp x1,0x575d000
017206e0  add x1,x1,#0xa06
017206e4  mov x0,x19
017206e8  str x19,[sp]
017206ec  bl 0x01251aa0
017206f0  mov w8,#0x1
017206f4  str w8,[sp, #0x8]
017206f8  mov x0,sp
017206fc  bl 0x0174aa04
01720700  adrp x1,0x576f000
01720704  adrp x3,0x736d000
01720708  add x1,x1,#0x57e
0172070c  add x3,x3,#0x101
01720710  add x0,sp,#0x10
01720714  mov x2,sp
01720718  bl 0x0195d080
0172071c  adrp x1,0x576f000
01720720  adrp x2,0x195d000
01720724  adrp x4,0x195d000
01720728  add x1,x1,#0x59b
0172072c  add x2,x2,#0x5c
01720730  add x4,x4,#0x64
01720734  add x0,sp,#0x10
01720738  mov x3,xzr
0172073c  mov x5,xzr
01720740  bl 0x0195ce74
01720744  mov x19,x0
01720748  ldr w8,[x19, #0x8]
0172074c  ldr x0,[x19]
01720750  sub w8,w8,#0x3
01720754  str w8,[x19, #0x8]
01720758  orr w1,wzr,#0xfffffffc
0172075c  bl 0x0124c4d0
01720760  ldr w8,[x19, #0x8]
01720764  ldr x0,[x19]
01720768  str wzr,[x19, #0x8]
0172076c  cmp w8,#0x1
01720770  b.lt 0x0172077c
01720774  mvn w1,w8
01720778  bl 0x0124c4d0
0172077c  ldr w8,[sp, #0x18]
01720780  cmp w8,#0x1
01720784  b.lt 0x01720794
01720788  ldr x0,[sp, #0x10]
0172078c  mvn w1,w8
01720790  bl 0x0124c4d0
01720794  ldr w8,[sp, #0x8]
01720798  cmp w8,#0x1
0172079c  b.lt 0x017207ac
017207a0  ldr x0,[sp]
017207a4  mvn w1,w8
017207a8  bl 0x0124c4d0
017207ac  ldp x29,x30,[sp, #0x30]
017207b0  ldr x19,[sp, #0x20]
017207b4  add sp,sp,#0x40
017207b8  ret
