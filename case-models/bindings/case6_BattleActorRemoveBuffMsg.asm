// ===== case6_BattleActorRemoveBuffMsg @ 0168db18 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case6-BattleActorRemoveBuffMsg
0168db18  sub sp,sp,#0x40
0168db1c  stp x20,x19,[sp, #0x20]
0168db20  stp x29,x30,[sp, #0x30]
0168db24  add x29,sp,#0x30
0168db28  adrp x1,0x174a000
0168db2c  add x1,x1,#0x87c
0168db30  mov x19,x0
0168db34  bl 0x0124ba40
0168db38  adrp x1,0x575d000
0168db3c  add x1,x1,#0xa06
0168db40  mov x0,x19
0168db44  str x19,[sp]
0168db48  bl 0x01251aa0
0168db4c  mov w8,#0x1
0168db50  str w8,[sp, #0x8]
0168db54  mov x0,sp
0168db58  bl 0x0174aa04
0168db5c  adrp x1,0x575d000
0168db60  adrp x3,0x736d000
0168db64  add x1,x1,#0xca0
0168db68  add x3,x3,#0x101
0168db6c  add x0,sp,#0x10
0168db70  mov x2,sp
0168db74  bl 0x01752c70
0168db78  ldr x0,[sp, #0x10]
0168db7c  mov w1,#0x10
0168db80  bl 0x0124cba0
0168db84  adrp x8,0x1752000
0168db88  dup v0.2D,xzr
0168db8c  add x8,x8,#0xc54
0168db90  mov v0.D[0x0],x8
0168db94  str q0,[x0]
0168db98  ldr x0,[sp, #0x10]
0168db9c  adrp x1,0x1753000
0168dba0  add x1,x1,#0x34
0168dba4  mov w2,#0x1
0168dba8  bl 0x0124ec90
0168dbac  ldr x0,[sp, #0x10]
0168dbb0  mov w1,#0xffffffff
0168dbb4  bl 0x0124c0c0
0168dbb8  ldr x19,[sp, #0x10]
0168dbbc  orr w1,wzr,#0xfffffffb
0168dbc0  mov w2,#0x6e7
0168dbc4  mov x0,x19
0168dbc8  bl 0x0124a650
0168dbcc  orr w1,wzr,#0xfffffffe
0168dbd0  mov x0,x19
0168dbd4  bl 0x0124c0c0
0168dbd8  orr w1,wzr,#0xfffffffe
0168dbdc  mov x0,x19
0168dbe0  bl 0x0124e920
0168dbe4  mov w20,w0
0168dbe8  adrp x1,0x5784000
0168dbec  add x1,x1,#0x488
0168dbf0  mov x0,x19
0168dbf4  bl 0x0124f120
0168dbf8  orr w1,wzr,#0xfffffffe
0168dbfc  mov w2,#0x1
0168dc00  mov x0,x19
0168dc04  bl 0x0124cfc0
0168dc08  mov x0,x19
0168dc0c  mov w1,w20
0168dc10  bl 0x0124e060
0168dc14  orr w1,wzr,#0xfffffffd
0168dc18  mov x0,x19
0168dc1c  bl 0x0124c4d0
0168dc20  ldr x19,[sp, #0x10]
0168dc24  orr w1,wzr,#0xfffffffd
0168dc28  mov w2,#0x6e7
0168dc2c  mov x0,x19
0168dc30  bl 0x0124a650
0168dc34  orr w1,wzr,#0xfffffffe
0168dc38  mov x0,x19
0168dc3c  bl 0x0124c0c0
0168dc40  orr w1,wzr,#0xfffffffe
0168dc44  mov x0,x19
0168dc48  bl 0x0124e920
0168dc4c  mov w20,w0
0168dc50  adrp x1,0x5784000
0168dc54  add x1,x1,#0x488
0168dc58  mov x0,x19
0168dc5c  bl 0x0124f120
0168dc60  orr w1,wzr,#0xfffffffe
0168dc64  mov w2,#0x1
0168dc68  mov x0,x19
0168dc6c  bl 0x0124cfc0
0168dc70  mov x0,x19
0168dc74  mov w1,w20
0168dc78  bl 0x0124e060
0168dc7c  orr w1,wzr,#0xfffffffd
0168dc80  mov x0,x19
0168dc84  bl 0x0124c4d0
0168dc88  ldr w8,[sp, #0x18]
0168dc8c  ldr x0,[sp, #0x10]
0168dc90  sub w8,w8,#0x3
0168dc94  str w8,[sp, #0x18]
0168dc98  orr w1,wzr,#0xfffffffc
0168dc9c  bl 0x0124c4d0
0168dca0  ldr w8,[sp, #0x18]
0168dca4  ldr x0,[sp, #0x10]
0168dca8  str wzr,[sp, #0x18]
0168dcac  cmp w8,#0x1
0168dcb0  b.lt 0x0168dcd4
0168dcb4  mvn w1,w8
0168dcb8  bl 0x0124c4d0
0168dcbc  ldr w8,[sp, #0x18]
0168dcc0  cmp w8,#0x1
0168dcc4  b.lt 0x0168dcd4
0168dcc8  ldr x0,[sp, #0x10]
0168dccc  mvn w1,w8
0168dcd0  bl 0x0124c4d0
0168dcd4  ldr w8,[sp, #0x8]
0168dcd8  cmp w8,#0x1
0168dcdc  b.lt 0x0168dcec
0168dce0  ldr x0,[sp]
0168dce4  mvn w1,w8
0168dce8  bl 0x0124c4d0
0168dcec  ldp x29,x30,[sp, #0x30]
0168dcf0  ldp x20,x19,[sp, #0x20]
0168dcf4  add sp,sp,#0x40
0168dcf8  ret
