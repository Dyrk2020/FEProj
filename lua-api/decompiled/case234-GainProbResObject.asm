// ===== case234-GainProbResObject @ 016b46a8 =====
// existing function case234-GainProbResObject
016b46a8  sub sp,sp,#0x40
016b46ac  stp x20,x19,[sp, #0x20]
016b46b0  stp x29,x30,[sp, #0x30]
016b46b4  add x29,sp,#0x30
016b46b8  adrp x1,0x174a000
016b46bc  add x1,x1,#0x87c
016b46c0  mov x19,x0
016b46c4  bl 0x0124ba40
016b46c8  adrp x1,0x575d000
016b46cc  add x1,x1,#0xa06
016b46d0  mov x0,x19
016b46d4  str x19,[sp]
016b46d8  bl 0x01251aa0
016b46dc  mov w8,#0x1
016b46e0  str w8,[sp, #0x8]
016b46e4  mov x0,sp
016b46e8  bl 0x0174aa04
016b46ec  adrp x1,0x5761000
016b46f0  adrp x3,0x736d000
016b46f4  add x1,x1,#0x1d3
016b46f8  add x3,x3,#0x101
016b46fc  add x0,sp,#0x10
016b4700  mov x2,sp
016b4704  bl 0x017cc31c
016b4708  ldr x0,[sp, #0x10]
016b470c  mov w1,#0x10
016b4710  bl 0x0124cba0
016b4714  adrp x8,0x17cc000
016b4718  dup v0.2D,xzr
016b471c  add x8,x8,#0x30c
016b4720  mov v0.D[0x0],x8
016b4724  str q0,[x0]
016b4728  ldr x0,[sp, #0x10]
016b472c  adrp x1,0x17cc000
016b4730  add x1,x1,#0x6e0
016b4734  mov w2,#0x1
016b4738  bl 0x0124ec90
016b473c  ldr x0,[sp, #0x10]
016b4740  mov w1,#0xffffffff
016b4744  bl 0x0124c0c0
016b4748  ldr x19,[sp, #0x10]
016b474c  orr w1,wzr,#0xfffffffb
016b4750  mov w2,#0x6e7
016b4754  mov x0,x19
016b4758  bl 0x0124a650
016b475c  orr w1,wzr,#0xfffffffe
016b4760  mov x0,x19
016b4764  bl 0x0124c0c0
016b4768  orr w1,wzr,#0xfffffffe
016b476c  mov x0,x19
016b4770  bl 0x0124e920
016b4774  mov w20,w0
016b4778  adrp x1,0x575e000
016b477c  add x1,x1,#0x56d
016b4780  mov x0,x19
016b4784  bl 0x0124f120
016b4788  orr w1,wzr,#0xfffffffe
016b478c  mov w2,#0x1
016b4790  mov x0,x19
016b4794  bl 0x0124cfc0
016b4798  mov x0,x19
016b479c  mov w1,w20
016b47a0  bl 0x0124e060
016b47a4  orr w1,wzr,#0xfffffffd
016b47a8  mov x0,x19
016b47ac  bl 0x0124c4d0
016b47b0  ldr x19,[sp, #0x10]
016b47b4  orr w1,wzr,#0xfffffffd
016b47b8  mov w2,#0x6e7
016b47bc  mov x0,x19
016b47c0  bl 0x0124a650
016b47c4  orr w1,wzr,#0xfffffffe
016b47c8  mov x0,x19
016b47cc  bl 0x0124c0c0
016b47d0  orr w1,wzr,#0xfffffffe
016b47d4  mov x0,x19
016b47d8  bl 0x0124e920
016b47dc  mov w20,w0
016b47e0  adrp x1,0x575e000
016b47e4  add x1,x1,#0x56d
016b47e8  mov x0,x19
016b47ec  bl 0x0124f120
016b47f0  orr w1,wzr,#0xfffffffe
016b47f4  mov w2,#0x1
016b47f8  mov x0,x19
016b47fc  bl 0x0124cfc0
016b4800  mov x0,x19
016b4804  mov w1,w20
016b4808  bl 0x0124e060
016b480c  orr w1,wzr,#0xfffffffd
016b4810  mov x0,x19
016b4814  bl 0x0124c4d0
016b4818  ldr x0,[sp, #0x10]
016b481c  mov w1,#0x10
016b4820  bl 0x0124cba0
016b4824  adrp x8,0x17cc000
016b4828  dup v0.2D,xzr
016b482c  add x8,x8,#0x314
016b4830  mov v0.D[0x0],x8
016b4834  str q0,[x0]
016b4838  ldr x0,[sp, #0x10]
016b483c  adrp x1,0x17cc000
016b4840  add x1,x1,#0x804
016b4844  mov w2,#0x1
016b4848  bl 0x0124ec90
016b484c  ldr x0,[sp, #0x10]
016b4850  mov w1,#0xffffffff
016b4854  bl 0x0124c0c0
016b4858  ldr x19,[sp, #0x10]
016b485c  orr w1,wzr,#0xfffffffb
016b4860  mov w2,#0x6e7
016b4864  mov x0,x19
016b4868  bl 0x0124a650
016b486c  orr w1,wzr,#0xfffffffe
016b4870  mov x0,x19
016b4874  bl 0x0124c0c0
016b4878  orr w1,wzr,#0xfffffffe
016b487c  mov x0,x19
016b4880  bl 0x0124e920
016b4884  mov w20,w0
016b4888  adrp x1,0x575e000
016b488c  add x1,x1,#0x578
016b4890  mov x0,x19
016b4894  bl 0x0124f120
016b4898  orr w1,wzr,#0xfffffffe
016b489c  mov w2,#0x1
016b48a0  mov x0,x19
016b48a4  bl 0x0124cfc0
016b48a8  mov x0,x19
016b48ac  mov w1,w20
016b48b0  bl 0x0124e060
016b48b4  orr w1,wzr,#0xfffffffd
016b48b8  mov x0,x19
016b48bc  bl 0x0124c4d0
016b48c0  ldr x19,[sp, #0x10]
016b48c4  orr w1,wzr,#0xfffffffd
016b48c8  mov w2,#0x6e7
016b48cc  mov x0,x19
016b48d0  bl 0x0124a650
016b48d4  orr w1,wzr,#0xfffffffe
016b48d8  mov x0,x19
016b48dc  bl 0x0124c0c0
016b48e0  orr w1,wzr,#0xfffffffe
016b48e4  mov x0,x19
016b48e8  bl 0x0124e920
016b48ec  mov w20,w0
016b48f0  adrp x1,0x575e000
016b48f4  add x1,x1,#0x578
016b48f8  mov x0,x19
016b48fc  bl 0x0124f120
016b4900  orr w1,wzr,#0xfffffffe
016b4904  mov w2,#0x1
016b4908  mov x0,x19
016b490c  bl 0x0124cfc0
016b4910  mov x0,x19
016b4914  mov w1,w20
016b4918  bl 0x0124e060
016b491c  orr w1,wzr,#0xfffffffd
016b4920  mov x0,x19
016b4924  bl 0x0124c4d0
016b4928  ldr w8,[sp, #0x18]
016b492c  ldr x0,[sp, #0x10]
016b4930  sub w8,w8,#0x3
016b4934  str w8,[sp, #0x18]
016b4938  orr w1,wzr,#0xfffffffc
016b493c  bl 0x0124c4d0
016b4940  ldr w8,[sp, #0x18]
016b4944  ldr x0,[sp, #0x10]
016b4948  str wzr,[sp, #0x18]
016b494c  cmp w8,#0x1
016b4950  b.lt 0x016b4974
016b4954  mvn w1,w8
016b4958  bl 0x0124c4d0
016b495c  ldr w8,[sp, #0x18]
016b4960  cmp w8,#0x1
016b4964  b.lt 0x016b4974
016b4968  ldr x0,[sp, #0x10]
016b496c  mvn w1,w8
016b4970  bl 0x0124c4d0
016b4974  ldr w8,[sp, #0x8]
016b4978  cmp w8,#0x1
016b497c  b.lt 0x016b498c
016b4980  ldr x0,[sp]
016b4984  mvn w1,w8
016b4988  bl 0x0124c4d0
016b498c  ldp x29,x30,[sp, #0x30]
016b4990  ldp x20,x19,[sp, #0x20]
016b4994  add sp,sp,#0x40
016b4998  ret
