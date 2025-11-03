// ===== case305-USBSkillResObject @ 016bf748 =====
// existing function case305-USBSkillResObject
016bf748  sub sp,sp,#0x40
016bf74c  stp x20,x19,[sp, #0x20]
016bf750  stp x29,x30,[sp, #0x30]
016bf754  add x29,sp,#0x30
016bf758  adrp x1,0x174a000
016bf75c  add x1,x1,#0x87c
016bf760  mov x19,x0
016bf764  bl 0x0124ba40
016bf768  adrp x1,0x575d000
016bf76c  add x1,x1,#0xa06
016bf770  mov x0,x19
016bf774  str x19,[sp]
016bf778  bl 0x01251aa0
016bf77c  mov w8,#0x1
016bf780  str w8,[sp, #0x8]
016bf784  mov x0,sp
016bf788  bl 0x0174aa04
016bf78c  adrp x1,0x5762000
016bf790  adrp x3,0x736d000
016bf794  add x1,x1,#0x777
016bf798  add x3,x3,#0x101
016bf79c  add x0,sp,#0x10
016bf7a0  mov x2,sp
016bf7a4  bl 0x017f7fe0
016bf7a8  ldr x0,[sp, #0x10]
016bf7ac  mov w1,#0x10
016bf7b0  bl 0x0124cba0
016bf7b4  adrp x8,0x17f7000
016bf7b8  dup v0.2D,xzr
016bf7bc  add x8,x8,#0xde0
016bf7c0  mov v0.D[0x0],x8
016bf7c4  str q0,[x0]
016bf7c8  ldr x0,[sp, #0x10]
016bf7cc  adrp x1,0x17f8000
016bf7d0  add x1,x1,#0x3a4
016bf7d4  mov w2,#0x1
016bf7d8  bl 0x0124ec90
016bf7dc  ldr x0,[sp, #0x10]
016bf7e0  mov w1,#0xffffffff
016bf7e4  bl 0x0124c0c0
016bf7e8  ldr x19,[sp, #0x10]
016bf7ec  orr w1,wzr,#0xfffffffb
016bf7f0  mov w2,#0x6e7
016bf7f4  mov x0,x19
016bf7f8  bl 0x0124a650
016bf7fc  orr w1,wzr,#0xfffffffe
016bf800  mov x0,x19
016bf804  bl 0x0124c0c0
016bf808  orr w1,wzr,#0xfffffffe
016bf80c  mov x0,x19
016bf810  bl 0x0124e920
016bf814  mov w20,w0
016bf818  adrp x1,0x5762000
016bf81c  add x1,x1,#0x789
016bf820  mov x0,x19
016bf824  bl 0x0124f120
016bf828  orr w1,wzr,#0xfffffffe
016bf82c  mov w2,#0x1
016bf830  mov x0,x19
016bf834  bl 0x0124cfc0
016bf838  mov x0,x19
016bf83c  mov w1,w20
016bf840  bl 0x0124e060
016bf844  orr w1,wzr,#0xfffffffd
016bf848  mov x0,x19
016bf84c  bl 0x0124c4d0
016bf850  ldr x19,[sp, #0x10]
016bf854  orr w1,wzr,#0xfffffffd
016bf858  mov w2,#0x6e7
016bf85c  mov x0,x19
016bf860  bl 0x0124a650
016bf864  orr w1,wzr,#0xfffffffe
016bf868  mov x0,x19
016bf86c  bl 0x0124c0c0
016bf870  orr w1,wzr,#0xfffffffe
016bf874  mov x0,x19
016bf878  bl 0x0124e920
016bf87c  mov w20,w0
016bf880  adrp x1,0x5762000
016bf884  add x1,x1,#0x789
016bf888  mov x0,x19
016bf88c  bl 0x0124f120
016bf890  orr w1,wzr,#0xfffffffe
016bf894  mov w2,#0x1
016bf898  mov x0,x19
016bf89c  bl 0x0124cfc0
016bf8a0  mov x0,x19
016bf8a4  mov w1,w20
016bf8a8  bl 0x0124e060
016bf8ac  orr w1,wzr,#0xfffffffd
016bf8b0  mov x0,x19
016bf8b4  bl 0x0124c4d0
016bf8b8  adrp x1,0x5762000
016bf8bc  adrp x2,0x17f7000
016bf8c0  adrp x4,0x17f7000
016bf8c4  add x1,x1,#0x796
016bf8c8  add x2,x2,#0xfd0
016bf8cc  add x4,x4,#0xfd8
016bf8d0  add x0,sp,#0x10
016bf8d4  mov x3,xzr
016bf8d8  mov x5,xzr
016bf8dc  bl 0x017f7de8
016bf8e0  mov x19,x0
016bf8e4  ldr w8,[x19, #0x8]
016bf8e8  ldr x0,[x19]
016bf8ec  sub w8,w8,#0x3
016bf8f0  str w8,[x19, #0x8]
016bf8f4  orr w1,wzr,#0xfffffffc
016bf8f8  bl 0x0124c4d0
016bf8fc  ldr w8,[x19, #0x8]
016bf900  ldr x0,[x19]
016bf904  str wzr,[x19, #0x8]
016bf908  cmp w8,#0x1
016bf90c  b.lt 0x016bf918
016bf910  mvn w1,w8
016bf914  bl 0x0124c4d0
016bf918  ldr w8,[sp, #0x18]
016bf91c  cmp w8,#0x1
016bf920  b.lt 0x016bf930
016bf924  ldr x0,[sp, #0x10]
016bf928  mvn w1,w8
016bf92c  bl 0x0124c4d0
016bf930  ldr w8,[sp, #0x8]
016bf934  cmp w8,#0x1
016bf938  b.lt 0x016bf948
016bf93c  ldr x0,[sp]
016bf940  mvn w1,w8
016bf944  bl 0x0124c4d0
016bf948  ldp x29,x30,[sp, #0x30]
016bf94c  ldp x20,x19,[sp, #0x20]
016bf950  add sp,sp,#0x40
016bf954  ret
