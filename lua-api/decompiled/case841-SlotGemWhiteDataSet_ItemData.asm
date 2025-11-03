// ===== case841-SlotGemWhiteDataSet_ItemData @ 0173cfc0 =====
// existing function case841-SlotGemWhiteDataSet_ItemData
0173cfc0  sub sp,sp,#0x40
0173cfc4  str x19,[sp, #0x20]
0173cfc8  stp x29,x30,[sp, #0x30]
0173cfcc  add x29,sp,#0x30
0173cfd0  adrp x1,0x174a000
0173cfd4  add x1,x1,#0x87c
0173cfd8  mov x19,x0
0173cfdc  bl 0x0124ba40
0173cfe0  adrp x1,0x575d000
0173cfe4  add x1,x1,#0xa06
0173cfe8  mov x0,x19
0173cfec  str x19,[sp]
0173cff0  bl 0x01251aa0
0173cff4  mov w8,#0x1
0173cff8  str w8,[sp, #0x8]
0173cffc  mov x0,sp
0173d000  bl 0x0174aa04
0173d004  adrp x1,0x5772000
0173d008  adrp x3,0x736d000
0173d00c  add x1,x1,#0xf4a
0173d010  add x3,x3,#0x101
0173d014  add x0,sp,#0x10
0173d018  mov x2,sp
0173d01c  bl 0x019dfef8
0173d020  adrp x1,0x575f000
0173d024  adrp x2,0x19df000
0173d028  adrp x4,0x19df000
0173d02c  add x1,x1,#0x98
0173d030  add x2,x2,#0xc98
0173d034  add x4,x4,#0xca0
0173d038  add x0,sp,#0x10
0173d03c  mov x3,xzr
0173d040  mov x5,xzr
0173d044  bl 0x019dfab0
0173d048  adrp x1,0x576c000
0173d04c  adrp x2,0x19df000
0173d050  adrp x4,0x19df000
0173d054  add x1,x1,#0xa22
0173d058  add x2,x2,#0xcbc
0173d05c  add x4,x4,#0xcc4
0173d060  mov x3,xzr
0173d064  mov x5,xzr
0173d068  bl 0x019dfab0
0173d06c  adrp x1,0x5761000
0173d070  adrp x2,0x19df000
0173d074  adrp x4,0x19df000
0173d078  add x1,x1,#0x732
0173d07c  add x2,x2,#0xce0
0173d080  add x4,x4,#0xce8
0173d084  mov x3,xzr
0173d088  mov x5,xzr
0173d08c  bl 0x019dfab0
0173d090  adrp x1,0x5772000
0173d094  adrp x2,0x19df000
0173d098  adrp x4,0x19df000
0173d09c  add x1,x1,#0xf67
0173d0a0  add x2,x2,#0xed8
0173d0a4  add x4,x4,#0xee0
0173d0a8  mov x3,xzr
0173d0ac  mov x5,xzr
0173d0b0  bl 0x019dfcf0
0173d0b4  adrp x1,0x5772000
0173d0b8  adrp x2,0x19df000
0173d0bc  adrp x4,0x19df000
0173d0c0  add x1,x1,#0xf75
0173d0c4  add x2,x2,#0xee8
0173d0c8  add x4,x4,#0xef0
0173d0cc  mov x3,xzr
0173d0d0  mov x5,xzr
0173d0d4  bl 0x019dfab0
0173d0d8  mov x19,x0
0173d0dc  ldr w8,[x19, #0x8]
0173d0e0  ldr x0,[x19]
0173d0e4  sub w8,w8,#0x3
0173d0e8  str w8,[x19, #0x8]
0173d0ec  orr w1,wzr,#0xfffffffc
0173d0f0  bl 0x0124c4d0
0173d0f4  ldr w8,[x19, #0x8]
0173d0f8  ldr x0,[x19]
0173d0fc  str wzr,[x19, #0x8]
0173d100  cmp w8,#0x1
0173d104  b.lt 0x0173d110
0173d108  mvn w1,w8
0173d10c  bl 0x0124c4d0
0173d110  ldr w8,[sp, #0x18]
0173d114  cmp w8,#0x1
0173d118  b.lt 0x0173d128
0173d11c  ldr x0,[sp, #0x10]
0173d120  mvn w1,w8
0173d124  bl 0x0124c4d0
0173d128  ldr w8,[sp, #0x8]
0173d12c  cmp w8,#0x1
0173d130  b.lt 0x0173d140
0173d134  ldr x0,[sp]
0173d138  mvn w1,w8
0173d13c  bl 0x0124c4d0
0173d140  ldp x29,x30,[sp, #0x30]
0173d144  ldr x19,[sp, #0x20]
0173d148  add sp,sp,#0x40
0173d14c  ret
