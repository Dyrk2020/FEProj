// ===== case507-WayPointParam @ 016f5758 =====
// existing function case507-WayPointParam
016f5758  sub sp,sp,#0x40
016f575c  str x19,[sp, #0x20]
016f5760  stp x29,x30,[sp, #0x30]
016f5764  add x29,sp,#0x30
016f5768  adrp x1,0x174a000
016f576c  add x1,x1,#0x87c
016f5770  mov x19,x0
016f5774  bl 0x0124ba40
016f5778  adrp x1,0x575d000
016f577c  add x1,x1,#0xa06
016f5780  mov x0,x19
016f5784  str x19,[sp]
016f5788  bl 0x01251aa0
016f578c  mov w8,#0x1
016f5790  str w8,[sp, #0x8]
016f5794  mov x0,sp
016f5798  bl 0x0174aa04
016f579c  adrp x1,0x5768000
016f57a0  adrp x3,0x736d000
016f57a4  add x1,x1,#0x314
016f57a8  add x3,x3,#0x101
016f57ac  add x0,sp,#0x10
016f57b0  mov x2,sp
016f57b4  bl 0x01899a4c
016f57b8  adrp x1,0x5964000
016f57bc  adrp x2,0x1899000
016f57c0  adrp x4,0x1899000
016f57c4  add x1,x1,#0x464
016f57c8  add x2,x2,#0x8ac
016f57cc  add x4,x4,#0x8b4
016f57d0  add x0,sp,#0x10
016f57d4  mov x3,xzr
016f57d8  mov x5,xzr
016f57dc  bl 0x018996c4
016f57e0  adrp x1,0x5964000
016f57e4  adrp x2,0x1899000
016f57e8  adrp x4,0x1899000
016f57ec  add x1,x1,#0x477
016f57f0  add x2,x2,#0x914
016f57f4  add x4,x4,#0x91c
016f57f8  mov x3,xzr
016f57fc  mov x5,xzr
016f5800  bl 0x018996c4
016f5804  adrp x1,0x58e7000
016f5808  adrp x2,0x1899000
016f580c  adrp x4,0x1899000
016f5810  add x1,x1,#0x938
016f5814  add x2,x2,#0x97c
016f5818  add x4,x4,#0x984
016f581c  mov x3,xzr
016f5820  mov x5,xzr
016f5824  bl 0x018996c4
016f5828  adrp x1,0x5988000
016f582c  adrp x2,0x1899000
016f5830  adrp x4,0x1899000
016f5834  add x1,x1,#0x91a
016f5838  add x2,x2,#0x9e4
016f583c  add x4,x4,#0x9ec
016f5840  mov x3,xzr
016f5844  mov x5,xzr
016f5848  bl 0x018996c4
016f584c  mov x19,x0
016f5850  ldr w8,[x19, #0x8]
016f5854  ldr x0,[x19]
016f5858  sub w8,w8,#0x3
016f585c  str w8,[x19, #0x8]
016f5860  orr w1,wzr,#0xfffffffc
016f5864  bl 0x0124c4d0
016f5868  ldr w8,[x19, #0x8]
016f586c  ldr x0,[x19]
016f5870  str wzr,[x19, #0x8]
016f5874  cmp w8,#0x1
016f5878  b.lt 0x016f5884
016f587c  mvn w1,w8
016f5880  bl 0x0124c4d0
016f5884  ldr w8,[sp, #0x18]
016f5888  cmp w8,#0x1
016f588c  b.lt 0x016f589c
016f5890  ldr x0,[sp, #0x10]
016f5894  mvn w1,w8
016f5898  bl 0x0124c4d0
016f589c  ldr w8,[sp, #0x8]
016f58a0  cmp w8,#0x1
016f58a4  b.lt 0x016f58b4
016f58a8  ldr x0,[sp]
016f58ac  mvn w1,w8
016f58b0  bl 0x0124c4d0
016f58b4  ldp x29,x30,[sp, #0x30]
016f58b8  ldr x19,[sp, #0x20]
016f58bc  add sp,sp,#0x40
016f58c0  ret
