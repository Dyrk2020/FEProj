// ===== case775-EffectFlags @ 0172fae8 =====
// existing function case775-EffectFlags
0172fae8  sub sp,sp,#0x40
0172faec  str x19,[sp, #0x20]
0172faf0  stp x29,x30,[sp, #0x30]
0172faf4  add x29,sp,#0x30
0172faf8  adrp x1,0x174a000
0172fafc  add x1,x1,#0x87c
0172fb00  mov x19,x0
0172fb04  bl 0x0124ba40
0172fb08  adrp x1,0x575d000
0172fb0c  add x1,x1,#0xa06
0172fb10  mov x0,x19
0172fb14  str x19,[sp]
0172fb18  bl 0x01251aa0
0172fb1c  mov w8,#0x1
0172fb20  str w8,[sp, #0x8]
0172fb24  mov x0,sp
0172fb28  bl 0x0174aa04
0172fb2c  adrp x1,0x5771000
0172fb30  adrp x3,0x736d000
0172fb34  add x1,x1,#0x7e5
0172fb38  add x3,x3,#0x101
0172fb3c  add x0,sp,#0x10
0172fb40  mov x2,sp
0172fb44  bl 0x019a3904
0172fb48  adrp x1,0x5771000
0172fb4c  adrp x2,0x19a3000
0172fb50  adrp x4,0x19a3000
0172fb54  add x1,x1,#0x7f1
0172fb58  add x2,x2,#0x8e4
0172fb5c  add x4,x4,#0x8ec
0172fb60  add x0,sp,#0x10
0172fb64  mov x3,xzr
0172fb68  mov x5,xzr
0172fb6c  bl 0x019a36fc
0172fb70  adrp x1,0x5771000
0172fb74  adrp x2,0x19a3000
0172fb78  adrp x4,0x19a3000
0172fb7c  add x1,x1,#0x7fc
0172fb80  add x2,x2,#0x8f4
0172fb84  add x4,x4,#0x8fc
0172fb88  mov x3,xzr
0172fb8c  mov x5,xzr
0172fb90  bl 0x019a36fc
0172fb94  mov x19,x0
0172fb98  ldr w8,[x19, #0x8]
0172fb9c  ldr x0,[x19]
0172fba0  sub w8,w8,#0x3
0172fba4  str w8,[x19, #0x8]
0172fba8  orr w1,wzr,#0xfffffffc
0172fbac  bl 0x0124c4d0
0172fbb0  ldr w8,[x19, #0x8]
0172fbb4  ldr x0,[x19]
0172fbb8  str wzr,[x19, #0x8]
0172fbbc  cmp w8,#0x1
0172fbc0  b.lt 0x0172fbcc
0172fbc4  mvn w1,w8
0172fbc8  bl 0x0124c4d0
0172fbcc  ldr w8,[sp, #0x18]
0172fbd0  cmp w8,#0x1
0172fbd4  b.lt 0x0172fbe4
0172fbd8  ldr x0,[sp, #0x10]
0172fbdc  mvn w1,w8
0172fbe0  bl 0x0124c4d0
0172fbe4  ldr w8,[sp, #0x8]
0172fbe8  cmp w8,#0x1
0172fbec  b.lt 0x0172fbfc
0172fbf0  ldr x0,[sp]
0172fbf4  mvn w1,w8
0172fbf8  bl 0x0124c4d0
0172fbfc  ldp x29,x30,[sp, #0x30]
0172fc00  ldr x19,[sp, #0x20]
0172fc04  add sp,sp,#0x40
0172fc08  ret
