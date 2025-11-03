// ===== case524-ActorComponentFlowMgr @ 016f8724 =====
// existing function case524-ActorComponentFlowMgr
016f8724  sub sp,sp,#0x40
016f8728  str x19,[sp, #0x20]
016f872c  stp x29,x30,[sp, #0x30]
016f8730  add x29,sp,#0x30
016f8734  adrp x1,0x174a000
016f8738  add x1,x1,#0x87c
016f873c  mov x19,x0
016f8740  bl 0x0124ba40
016f8744  adrp x1,0x575d000
016f8748  add x1,x1,#0xa06
016f874c  mov x0,x19
016f8750  str x19,[sp]
016f8754  bl 0x01251aa0
016f8758  mov w8,#0x1
016f875c  str w8,[sp, #0x8]
016f8760  mov x0,sp
016f8764  bl 0x0174aa04
016f8768  adrp x1,0x5768000
016f876c  adrp x3,0x736d000
016f8770  add x1,x1,#0x9ca
016f8774  add x3,x3,#0x101
016f8778  add x0,sp,#0x10
016f877c  mov x2,sp
016f8780  bl 0x018acf30
016f8784  adrp x1,0x5768000
016f8788  adrp x2,0x18ac000
016f878c  add x1,x1,#0x9e0
016f8790  add x2,x2,#0xf08
016f8794  add x0,sp,#0x10
016f8798  mov x3,xzr
016f879c  mov x4,xzr
016f87a0  mov x5,xzr
016f87a4  bl 0x018acd20
016f87a8  adrp x1,0x5768000
016f87ac  adrp x2,0x18ac000
016f87b0  add x1,x1,#0x9e9
016f87b4  add x2,x2,#0xf10
016f87b8  mov x3,xzr
016f87bc  mov x4,xzr
016f87c0  mov x5,xzr
016f87c4  bl 0x018acd20
016f87c8  adrp x1,0x5768000
016f87cc  adrp x2,0x18ac000
016f87d0  add x1,x1,#0x9f1
016f87d4  add x2,x2,#0xf18
016f87d8  mov x3,xzr
016f87dc  mov x4,xzr
016f87e0  mov x5,xzr
016f87e4  bl 0x018acd20
016f87e8  adrp x1,0x5768000
016f87ec  adrp x2,0x18ac000
016f87f0  add x1,x1,#0x9f9
016f87f4  add x2,x2,#0xf20
016f87f8  mov x3,xzr
016f87fc  mov x4,xzr
016f8800  mov x5,xzr
016f8804  bl 0x018acd20
016f8808  adrp x1,0x5768000
016f880c  adrp x2,0x18ac000
016f8810  add x1,x1,#0xa05
016f8814  add x2,x2,#0xf28
016f8818  mov x3,xzr
016f881c  mov x4,xzr
016f8820  mov x5,xzr
016f8824  bl 0x018acd20
016f8828  mov x19,x0
016f882c  ldr w8,[x19, #0x8]
016f8830  ldr x0,[x19]
016f8834  sub w8,w8,#0x3
016f8838  str w8,[x19, #0x8]
016f883c  orr w1,wzr,#0xfffffffc
016f8840  bl 0x0124c4d0
016f8844  ldr w8,[x19, #0x8]
016f8848  ldr x0,[x19]
016f884c  str wzr,[x19, #0x8]
016f8850  cmp w8,#0x1
016f8854  b.lt 0x016f8860
016f8858  mvn w1,w8
016f885c  bl 0x0124c4d0
016f8860  ldr w8,[sp, #0x18]
016f8864  cmp w8,#0x1
016f8868  b.lt 0x016f8878
016f886c  ldr x0,[sp, #0x10]
016f8870  mvn w1,w8
016f8874  bl 0x0124c4d0
016f8878  ldr w8,[sp, #0x8]
016f887c  cmp w8,#0x1
016f8880  b.lt 0x016f8890
016f8884  ldr x0,[sp]
016f8888  mvn w1,w8
016f888c  bl 0x0124c4d0
016f8890  ldp x29,x30,[sp, #0x30]
016f8894  ldr x19,[sp, #0x20]
016f8898  add sp,sp,#0x40
016f889c  ret
