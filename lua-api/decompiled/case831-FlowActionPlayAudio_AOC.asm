// ===== case831-FlowActionPlayAudio_AOC @ 0173a94c =====
// existing function case831-FlowActionPlayAudio_AOC
0173a94c  sub sp,sp,#0x40
0173a950  stp x20,x19,[sp, #0x20]
0173a954  stp x29,x30,[sp, #0x30]
0173a958  add x29,sp,#0x30
0173a95c  adrp x1,0x174a000
0173a960  add x1,x1,#0x87c
0173a964  mov x19,x0
0173a968  bl 0x0124ba40
0173a96c  adrp x1,0x575d000
0173a970  add x1,x1,#0xa06
0173a974  mov x0,x19
0173a978  str x19,[sp]
0173a97c  bl 0x01251aa0
0173a980  mov w8,#0x1
0173a984  str w8,[sp, #0x8]
0173a988  mov x0,sp
0173a98c  bl 0x0174aa04
0173a990  adrp x1,0x5772000
0173a994  adrp x3,0x736d000
0173a998  add x1,x1,#0x9f4
0173a99c  add x3,x3,#0x101
0173a9a0  add x0,sp,#0x10
0173a9a4  mov x2,sp
0173a9a8  bl 0x019d549c
0173a9ac  ldr x0,[sp, #0x10]
0173a9b0  mov w1,#0x10
0173a9b4  bl 0x0124cba0
0173a9b8  adrp x8,0x19d4000
0173a9bc  dup v0.2D,xzr
0173a9c0  add x8,x8,#0xe7c
0173a9c4  mov v0.D[0x0],x8
0173a9c8  str q0,[x0]
0173a9cc  ldr x0,[sp, #0x10]
0173a9d0  adrp x1,0x19d5000
0173a9d4  add x1,x1,#0x860
0173a9d8  mov w2,#0x1
0173a9dc  bl 0x0124ec90
0173a9e0  ldr x0,[sp, #0x10]
0173a9e4  mov w1,#0xffffffff
0173a9e8  bl 0x0124c0c0
0173a9ec  ldr x19,[sp, #0x10]
0173a9f0  orr w1,wzr,#0xfffffffb
0173a9f4  mov w2,#0x6e7
0173a9f8  mov x0,x19
0173a9fc  bl 0x0124a650
0173aa00  orr w1,wzr,#0xfffffffe
0173aa04  mov x0,x19
0173aa08  bl 0x0124c0c0
0173aa0c  orr w1,wzr,#0xfffffffe
0173aa10  mov x0,x19
0173aa14  bl 0x0124e920
0173aa18  mov w20,w0
0173aa1c  adrp x1,0x5772000
0173aa20  add x1,x1,#0xa0c
0173aa24  mov x0,x19
0173aa28  bl 0x0124f120
0173aa2c  orr w1,wzr,#0xfffffffe
0173aa30  mov w2,#0x1
0173aa34  mov x0,x19
0173aa38  bl 0x0124cfc0
0173aa3c  mov x0,x19
0173aa40  mov w1,w20
0173aa44  bl 0x0124e060
0173aa48  orr w1,wzr,#0xfffffffd
0173aa4c  mov x0,x19
0173aa50  bl 0x0124c4d0
0173aa54  ldr x19,[sp, #0x10]
0173aa58  orr w1,wzr,#0xfffffffd
0173aa5c  mov w2,#0x6e7
0173aa60  mov x0,x19
0173aa64  bl 0x0124a650
0173aa68  orr w1,wzr,#0xfffffffe
0173aa6c  mov x0,x19
0173aa70  bl 0x0124c0c0
0173aa74  orr w1,wzr,#0xfffffffe
0173aa78  mov x0,x19
0173aa7c  bl 0x0124e920
0173aa80  mov w20,w0
0173aa84  adrp x1,0x5772000
0173aa88  add x1,x1,#0xa0c
0173aa8c  mov x0,x19
0173aa90  bl 0x0124f120
0173aa94  orr w1,wzr,#0xfffffffe
0173aa98  mov w2,#0x1
0173aa9c  mov x0,x19
0173aaa0  bl 0x0124cfc0
0173aaa4  mov x0,x19
0173aaa8  mov w1,w20
0173aaac  bl 0x0124e060
0173aab0  orr w1,wzr,#0xfffffffd
0173aab4  mov x0,x19
0173aab8  bl 0x0124c4d0
0173aabc  adrp x1,0x5772000
0173aac0  adrp x2,0x19d5000
0173aac4  adrp x4,0x19d5000
0173aac8  add x1,x1,#0xa1b
0173aacc  add x2,x2,#0x6c
0173aad0  add x4,x4,#0x74
0173aad4  add x0,sp,#0x10
0173aad8  mov x3,xzr
0173aadc  mov x5,xzr
0173aae0  bl 0x019d4e84
0173aae4  adrp x1,0x5772000
0173aae8  adrp x2,0x19d5000
0173aaec  adrp x4,0x19d5000
0173aaf0  add x1,x1,#0xa25
0173aaf4  add x2,x2,#0x7c
0173aaf8  add x4,x4,#0x84
0173aafc  mov x3,xzr
0173ab00  mov x5,xzr
0173ab04  bl 0x019d4e84
0173ab08  adrp x1,0x5772000
0173ab0c  adrp x2,0x19d5000
0173ab10  adrp x4,0x19d5000
0173ab14  add x1,x1,#0xa36
0173ab18  add x2,x2,#0x274
0173ab1c  add x4,x4,#0x27c
0173ab20  mov x3,xzr
0173ab24  mov x5,xzr
0173ab28  bl 0x019d508c
0173ab2c  adrp x1,0x5772000
0173ab30  adrp x2,0x19d5000
0173ab34  adrp x4,0x19d5000
0173ab38  add x1,x1,#0xa46
0173ab3c  add x2,x2,#0x46c
0173ab40  add x4,x4,#0x480
0173ab44  mov x3,xzr
0173ab48  mov x5,xzr
0173ab4c  bl 0x019d5284
0173ab50  mov x19,x0
0173ab54  ldr w8,[x19, #0x8]
0173ab58  ldr x0,[x19]
0173ab5c  sub w8,w8,#0x3
0173ab60  str w8,[x19, #0x8]
0173ab64  orr w1,wzr,#0xfffffffc
0173ab68  bl 0x0124c4d0
0173ab6c  ldr w8,[x19, #0x8]
0173ab70  ldr x0,[x19]
0173ab74  str wzr,[x19, #0x8]
0173ab78  cmp w8,#0x1
0173ab7c  b.lt 0x0173ab88
0173ab80  mvn w1,w8
0173ab84  bl 0x0124c4d0
0173ab88  ldr w8,[sp, #0x18]
0173ab8c  cmp w8,#0x1
0173ab90  b.lt 0x0173aba0
0173ab94  ldr x0,[sp, #0x10]
0173ab98  mvn w1,w8
0173ab9c  bl 0x0124c4d0
0173aba0  ldr w8,[sp, #0x8]
0173aba4  cmp w8,#0x1
0173aba8  b.lt 0x0173abb8
0173abac  ldr x0,[sp]
0173abb0  mvn w1,w8
0173abb4  bl 0x0124c4d0
0173abb8  ldp x29,x30,[sp, #0x30]
0173abbc  ldp x20,x19,[sp, #0x20]
0173abc0  add sp,sp,#0x40
0173abc4  ret
