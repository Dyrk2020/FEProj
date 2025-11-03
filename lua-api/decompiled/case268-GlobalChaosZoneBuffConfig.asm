// ===== case268-GlobalChaosZoneBuffConfig @ 016b9794 =====
// existing function case268-GlobalChaosZoneBuffConfig
016b9794  sub sp,sp,#0x40
016b9798  str x19,[sp, #0x20]
016b979c  stp x29,x30,[sp, #0x30]
016b97a0  add x29,sp,#0x30
016b97a4  adrp x1,0x174a000
016b97a8  add x1,x1,#0x87c
016b97ac  mov x19,x0
016b97b0  bl 0x0124ba40
016b97b4  adrp x1,0x575d000
016b97b8  add x1,x1,#0xa06
016b97bc  mov x0,x19
016b97c0  str x19,[sp]
016b97c4  bl 0x01251aa0
016b97c8  mov w8,#0x1
016b97cc  str w8,[sp, #0x8]
016b97d0  mov x0,sp
016b97d4  bl 0x0174aa04
016b97d8  adrp x1,0x5761000
016b97dc  adrp x3,0x736d000
016b97e0  add x1,x1,#0x7c8
016b97e4  add x3,x3,#0x101
016b97e8  add x0,sp,#0x10
016b97ec  mov x2,sp
016b97f0  bl 0x017e1834
016b97f4  adrp x1,0x575b000
016b97f8  adrp x2,0x17e1000
016b97fc  adrp x4,0x17e1000
016b9800  add x1,x1,#0x2f8
016b9804  add x2,x2,#0x5ec
016b9808  add x4,x4,#0x5f4
016b980c  add x0,sp,#0x10
016b9810  mov x3,xzr
016b9814  mov x5,xzr
016b9818  bl 0x017e1404
016b981c  adrp x1,0x5761000
016b9820  adrp x2,0x17e1000
016b9824  adrp x4,0x17e1000
016b9828  add x1,x1,#0x7e2
016b982c  add x2,x2,#0x7e4
016b9830  add x4,x4,#0x7ec
016b9834  mov x3,xzr
016b9838  mov x5,xzr
016b983c  bl 0x017e15fc
016b9840  adrp x1,0x5761000
016b9844  adrp x2,0x17e1000
016b9848  adrp x4,0x17e1000
016b984c  add x1,x1,#0x7eb
016b9850  add x2,x2,#0x7f4
016b9854  add x4,x4,#0x7fc
016b9858  mov x3,xzr
016b985c  mov x5,xzr
016b9860  bl 0x017e15fc
016b9864  adrp x1,0x5761000
016b9868  adrp x2,0x17e1000
016b986c  adrp x4,0x17e1000
016b9870  add x1,x1,#0x7f4
016b9874  add x2,x2,#0x804
016b9878  add x4,x4,#0x80c
016b987c  mov x3,xzr
016b9880  mov x5,xzr
016b9884  bl 0x017e15fc
016b9888  adrp x1,0x5761000
016b988c  adrp x2,0x17e1000
016b9890  adrp x4,0x17e1000
016b9894  add x1,x1,#0x7fd
016b9898  add x2,x2,#0x814
016b989c  add x4,x4,#0x81c
016b98a0  mov x3,xzr
016b98a4  mov x5,xzr
016b98a8  bl 0x017e15fc
016b98ac  adrp x1,0x5761000
016b98b0  adrp x2,0x17e1000
016b98b4  adrp x4,0x17e1000
016b98b8  add x1,x1,#0x807
016b98bc  add x2,x2,#0x824
016b98c0  add x4,x4,#0x82c
016b98c4  mov x3,xzr
016b98c8  mov x5,xzr
016b98cc  bl 0x017e15fc
016b98d0  mov x19,x0
016b98d4  ldr w8,[x19, #0x8]
016b98d8  ldr x0,[x19]
016b98dc  sub w8,w8,#0x3
016b98e0  str w8,[x19, #0x8]
016b98e4  orr w1,wzr,#0xfffffffc
016b98e8  bl 0x0124c4d0
016b98ec  ldr w8,[x19, #0x8]
016b98f0  ldr x0,[x19]
016b98f4  str wzr,[x19, #0x8]
016b98f8  cmp w8,#0x1
016b98fc  b.lt 0x016b9908
016b9900  mvn w1,w8
016b9904  bl 0x0124c4d0
016b9908  ldr w8,[sp, #0x18]
016b990c  cmp w8,#0x1
016b9910  b.lt 0x016b9920
016b9914  ldr x0,[sp, #0x10]
016b9918  mvn w1,w8
016b991c  bl 0x0124c4d0
016b9920  ldr w8,[sp, #0x8]
016b9924  cmp w8,#0x1
016b9928  b.lt 0x016b9938
016b992c  ldr x0,[sp]
016b9930  mvn w1,w8
016b9934  bl 0x0124c4d0
016b9938  ldp x29,x30,[sp, #0x30]
016b993c  ldr x19,[sp, #0x20]
016b9940  add sp,sp,#0x40
016b9944  ret
