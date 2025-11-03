// ===== case283-ExtraGoldRuleResObject @ 016bb814 =====
// existing function case283-ExtraGoldRuleResObject
016bb814  sub sp,sp,#0x40
016bb818  str x19,[sp, #0x20]
016bb81c  stp x29,x30,[sp, #0x30]
016bb820  add x29,sp,#0x30
016bb824  adrp x1,0x174a000
016bb828  add x1,x1,#0x87c
016bb82c  mov x19,x0
016bb830  bl 0x0124ba40
016bb834  adrp x1,0x575d000
016bb838  add x1,x1,#0xa06
016bb83c  mov x0,x19
016bb840  str x19,[sp]
016bb844  bl 0x01251aa0
016bb848  mov w8,#0x1
016bb84c  str w8,[sp, #0x8]
016bb850  mov x0,sp
016bb854  bl 0x0174aa04
016bb858  adrp x1,0x5761000
016bb85c  adrp x3,0x736d000
016bb860  add x1,x1,#0xbae
016bb864  add x3,x3,#0x101
016bb868  add x0,sp,#0x10
016bb86c  mov x2,sp
016bb870  bl 0x017eab34
016bb874  adrp x1,0x575d000
016bb878  adrp x2,0x17ea000
016bb87c  adrp x4,0x17ea000
016bb880  add x1,x1,#0xded
016bb884  add x2,x2,#0xaf4
016bb888  add x4,x4,#0xafc
016bb88c  add x0,sp,#0x10
016bb890  mov x3,xzr
016bb894  mov x5,xzr
016bb898  bl 0x017ea90c
016bb89c  adrp x1,0x5761000
016bb8a0  adrp x2,0x17ea000
016bb8a4  adrp x4,0x17ea000
016bb8a8  add x1,x1,#0xbc5
016bb8ac  add x2,x2,#0xb04
016bb8b0  add x4,x4,#0xb0c
016bb8b4  mov x3,xzr
016bb8b8  mov x5,xzr
016bb8bc  bl 0x017ea90c
016bb8c0  adrp x1,0x5761000
016bb8c4  adrp x2,0x17ea000
016bb8c8  adrp x4,0x17ea000
016bb8cc  add x1,x1,#0xbd0
016bb8d0  add x2,x2,#0xb14
016bb8d4  add x4,x4,#0xb1c
016bb8d8  mov x3,xzr
016bb8dc  mov x5,xzr
016bb8e0  bl 0x017ea90c
016bb8e4  adrp x1,0x5761000
016bb8e8  adrp x2,0x17ea000
016bb8ec  adrp x4,0x17ea000
016bb8f0  add x1,x1,#0xbdd
016bb8f4  add x2,x2,#0xb24
016bb8f8  add x4,x4,#0xb2c
016bb8fc  mov x3,xzr
016bb900  mov x5,xzr
016bb904  bl 0x017ea90c
016bb908  mov x19,x0
016bb90c  ldr w8,[x19, #0x8]
016bb910  ldr x0,[x19]
016bb914  sub w8,w8,#0x3
016bb918  str w8,[x19, #0x8]
016bb91c  orr w1,wzr,#0xfffffffc
016bb920  bl 0x0124c4d0
016bb924  ldr w8,[x19, #0x8]
016bb928  ldr x0,[x19]
016bb92c  str wzr,[x19, #0x8]
016bb930  cmp w8,#0x1
016bb934  b.lt 0x016bb940
016bb938  mvn w1,w8
016bb93c  bl 0x0124c4d0
016bb940  ldr w8,[sp, #0x18]
016bb944  cmp w8,#0x1
016bb948  b.lt 0x016bb958
016bb94c  ldr x0,[sp, #0x10]
016bb950  mvn w1,w8
016bb954  bl 0x0124c4d0
016bb958  ldr w8,[sp, #0x8]
016bb95c  cmp w8,#0x1
016bb960  b.lt 0x016bb970
016bb964  ldr x0,[sp]
016bb968  mvn w1,w8
016bb96c  bl 0x0124c4d0
016bb970  ldp x29,x30,[sp, #0x30]
016bb974  ldr x19,[sp, #0x20]
016bb978  add sp,sp,#0x40
016bb97c  ret
