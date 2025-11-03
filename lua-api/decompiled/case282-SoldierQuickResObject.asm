// ===== case282-SoldierQuickResObject @ 016bb68c =====
// existing function case282-SoldierQuickResObject
016bb68c  sub sp,sp,#0x40
016bb690  str x19,[sp, #0x20]
016bb694  stp x29,x30,[sp, #0x30]
016bb698  add x29,sp,#0x30
016bb69c  adrp x1,0x174a000
016bb6a0  add x1,x1,#0x87c
016bb6a4  mov x19,x0
016bb6a8  bl 0x0124ba40
016bb6ac  adrp x1,0x575d000
016bb6b0  add x1,x1,#0xa06
016bb6b4  mov x0,x19
016bb6b8  str x19,[sp]
016bb6bc  bl 0x01251aa0
016bb6c0  mov w8,#0x1
016bb6c4  str w8,[sp, #0x8]
016bb6c8  mov x0,sp
016bb6cc  bl 0x0174aa04
016bb6d0  adrp x1,0x5761000
016bb6d4  adrp x3,0x736d000
016bb6d8  add x1,x1,#0xb6e
016bb6dc  add x3,x3,#0x101
016bb6e0  add x0,sp,#0x10
016bb6e4  mov x2,sp
016bb6e8  bl 0x017ea2fc
016bb6ec  adrp x1,0x5761000
016bb6f0  adrp x2,0x17ea000
016bb6f4  adrp x4,0x17ea000
016bb6f8  add x1,x1,#0xb84
016bb6fc  add x2,x2,#0x2dc
016bb700  add x4,x4,#0x2e4
016bb704  add x0,sp,#0x10
016bb708  mov x3,xzr
016bb70c  mov x5,xzr
016bb710  bl 0x017ea0f4
016bb714  adrp x1,0x5761000
016bb718  adrp x2,0x17ea000
016bb71c  adrp x4,0x17ea000
016bb720  add x1,x1,#0xb9a
016bb724  add x2,x2,#0x2ec
016bb728  add x4,x4,#0x2f4
016bb72c  mov x3,xzr
016bb730  mov x5,xzr
016bb734  bl 0x017ea0f4
016bb738  mov x19,x0
016bb73c  ldr w8,[x19, #0x8]
016bb740  ldr x0,[x19]
016bb744  sub w8,w8,#0x3
016bb748  str w8,[x19, #0x8]
016bb74c  orr w1,wzr,#0xfffffffc
016bb750  bl 0x0124c4d0
016bb754  ldr w8,[x19, #0x8]
016bb758  ldr x0,[x19]
016bb75c  str wzr,[x19, #0x8]
016bb760  cmp w8,#0x1
016bb764  b.lt 0x016bb770
016bb768  mvn w1,w8
016bb76c  bl 0x0124c4d0
016bb770  ldr w8,[sp, #0x18]
016bb774  cmp w8,#0x1
016bb778  b.lt 0x016bb788
016bb77c  ldr x0,[sp, #0x10]
016bb780  mvn w1,w8
016bb784  bl 0x0124c4d0
016bb788  ldr w8,[sp, #0x8]
016bb78c  cmp w8,#0x1
016bb790  b.lt 0x016bb7a0
016bb794  ldr x0,[sp]
016bb798  mvn w1,w8
016bb79c  bl 0x0124c4d0
016bb7a0  ldp x29,x30,[sp, #0x30]
016bb7a4  ldr x19,[sp, #0x20]
016bb7a8  add sp,sp,#0x40
016bb7ac  ret
