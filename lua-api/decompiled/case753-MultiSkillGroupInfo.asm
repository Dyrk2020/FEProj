// ===== case753-MultiSkillGroupInfo @ 0172b16c =====
// existing function case753-MultiSkillGroupInfo
0172b16c  sub sp,sp,#0x40
0172b170  str x19,[sp, #0x20]
0172b174  stp x29,x30,[sp, #0x30]
0172b178  add x29,sp,#0x30
0172b17c  adrp x1,0x174a000
0172b180  add x1,x1,#0x87c
0172b184  mov x19,x0
0172b188  bl 0x0124ba40
0172b18c  adrp x1,0x575d000
0172b190  add x1,x1,#0xa06
0172b194  mov x0,x19
0172b198  str x19,[sp]
0172b19c  bl 0x01251aa0
0172b1a0  mov w8,#0x1
0172b1a4  str w8,[sp, #0x8]
0172b1a8  mov x0,sp
0172b1ac  bl 0x0174aa04
0172b1b0  adrp x1,0x5770000
0172b1b4  adrp x3,0x736d000
0172b1b8  add x1,x1,#0xc9b
0172b1bc  add x3,x3,#0x101
0172b1c0  add x0,sp,#0x10
0172b1c4  mov x2,sp
0172b1c8  bl 0x0198b854
0172b1cc  adrp x1,0x5770000
0172b1d0  adrp x2,0x198b000
0172b1d4  adrp x4,0x198b000
0172b1d8  add x1,x1,#0xcaf
0172b1dc  add x2,x2,#0x844
0172b1e0  add x4,x4,#0x84c
0172b1e4  add x0,sp,#0x10
0172b1e8  mov x3,xzr
0172b1ec  mov x5,xzr
0172b1f0  bl 0x0198b65c
0172b1f4  mov x19,x0
0172b1f8  ldr w8,[x19, #0x8]
0172b1fc  ldr x0,[x19]
0172b200  sub w8,w8,#0x3
0172b204  str w8,[x19, #0x8]
0172b208  orr w1,wzr,#0xfffffffc
0172b20c  bl 0x0124c4d0
0172b210  ldr w8,[x19, #0x8]
0172b214  ldr x0,[x19]
0172b218  str wzr,[x19, #0x8]
0172b21c  cmp w8,#0x1
0172b220  b.lt 0x0172b22c
0172b224  mvn w1,w8
0172b228  bl 0x0124c4d0
0172b22c  ldr w8,[sp, #0x18]
0172b230  cmp w8,#0x1
0172b234  b.lt 0x0172b244
0172b238  ldr x0,[sp, #0x10]
0172b23c  mvn w1,w8
0172b240  bl 0x0124c4d0
0172b244  ldr w8,[sp, #0x8]
0172b248  cmp w8,#0x1
0172b24c  b.lt 0x0172b25c
0172b250  ldr x0,[sp]
0172b254  mvn w1,w8
0172b258  bl 0x0124c4d0
0172b25c  ldp x29,x30,[sp, #0x30]
0172b260  ldr x19,[sp, #0x20]
0172b264  add sp,sp,#0x40
0172b268  ret
