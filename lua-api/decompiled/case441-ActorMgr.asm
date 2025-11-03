// ===== case441-ActorMgr @ 016e87a4 =====
// existing function case441-ActorMgr
016e87a4  sub sp,sp,#0x40
016e87a8  str x19,[sp, #0x20]
016e87ac  stp x29,x30,[sp, #0x30]
016e87b0  add x29,sp,#0x30
016e87b4  adrp x1,0x174a000
016e87b8  add x1,x1,#0x87c
016e87bc  mov x19,x0
016e87c0  bl 0x0124ba40
016e87c4  adrp x1,0x575d000
016e87c8  add x1,x1,#0xa06
016e87cc  mov x0,x19
016e87d0  str x19,[sp]
016e87d4  bl 0x01251aa0
016e87d8  mov w8,#0x1
016e87dc  str w8,[sp, #0x8]
016e87e0  mov x0,sp
016e87e4  bl 0x0174aa04
016e87e8  adrp x1,0x5766000
016e87ec  adrp x3,0x736d000
016e87f0  add x1,x1,#0x916
016e87f4  add x3,x3,#0x101
016e87f8  add x0,sp,#0x10
016e87fc  mov x2,sp
016e8800  bl 0x01867ddc
016e8804  adrp x1,0x5766000
016e8808  adrp x2,0x1867000
016e880c  adrp x4,0x1867000
016e8810  add x1,x1,#0x8a3
016e8814  add x2,x2,#0xdcc
016e8818  add x4,x4,#0xdd4
016e881c  add x0,sp,#0x10
016e8820  mov x3,xzr
016e8824  mov x5,xzr
016e8828  bl 0x01867be4
016e882c  mov x19,x0
016e8830  ldr w8,[x19, #0x8]
016e8834  ldr x0,[x19]
016e8838  sub w8,w8,#0x3
016e883c  str w8,[x19, #0x8]
016e8840  orr w1,wzr,#0xfffffffc
016e8844  bl 0x0124c4d0
016e8848  ldr w8,[x19, #0x8]
016e884c  ldr x0,[x19]
016e8850  str wzr,[x19, #0x8]
016e8854  cmp w8,#0x1
016e8858  b.lt 0x016e8864
016e885c  mvn w1,w8
016e8860  bl 0x0124c4d0
016e8864  ldr w8,[sp, #0x18]
016e8868  cmp w8,#0x1
016e886c  b.lt 0x016e887c
016e8870  ldr x0,[sp, #0x10]
016e8874  mvn w1,w8
016e8878  bl 0x0124c4d0
016e887c  ldr w8,[sp, #0x8]
016e8880  cmp w8,#0x1
016e8884  b.lt 0x016e8894
016e8888  ldr x0,[sp]
016e888c  mvn w1,w8
016e8890  bl 0x0124c4d0
016e8894  ldp x29,x30,[sp, #0x30]
016e8898  ldr x19,[sp, #0x20]
016e889c  add sp,sp,#0x40
016e88a0  ret
