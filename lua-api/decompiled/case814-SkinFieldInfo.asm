// ===== case814-SkinFieldInfo @ 01736ae0 =====
// existing function case814-SkinFieldInfo
01736ae0  sub sp,sp,#0x40
01736ae4  str x19,[sp, #0x20]
01736ae8  stp x29,x30,[sp, #0x30]
01736aec  add x29,sp,#0x30
01736af0  adrp x1,0x174a000
01736af4  add x1,x1,#0x87c
01736af8  mov x19,x0
01736afc  bl 0x0124ba40
01736b00  adrp x1,0x575d000
01736b04  add x1,x1,#0xa06
01736b08  mov x0,x19
01736b0c  str x19,[sp]
01736b10  bl 0x01251aa0
01736b14  mov w8,#0x1
01736b18  str w8,[sp, #0x8]
01736b1c  mov x0,sp
01736b20  bl 0x0174aa04
01736b24  adrp x1,0x5772000
01736b28  adrp x3,0x736d000
01736b2c  add x1,x1,#0x4ae
01736b30  add x3,x3,#0x101
01736b34  add x0,sp,#0x10
01736b38  mov x2,sp
01736b3c  bl 0x019c35f8
01736b40  adrp x1,0x5772000
01736b44  adrp x2,0x19c3000
01736b48  adrp x4,0x19c3000
01736b4c  add x1,x1,#0x4bc
01736b50  add x2,x2,#0x5e4
01736b54  add x4,x4,#0x5f0
01736b58  add x0,sp,#0x10
01736b5c  mov x3,xzr
01736b60  mov x5,xzr
01736b64  bl 0x019c33fc
01736b68  mov x19,x0
01736b6c  ldr w8,[x19, #0x8]
01736b70  ldr x0,[x19]
01736b74  sub w8,w8,#0x3
01736b78  str w8,[x19, #0x8]
01736b7c  orr w1,wzr,#0xfffffffc
01736b80  bl 0x0124c4d0
01736b84  ldr w8,[x19, #0x8]
01736b88  ldr x0,[x19]
01736b8c  str wzr,[x19, #0x8]
01736b90  cmp w8,#0x1
01736b94  b.lt 0x01736ba0
01736b98  mvn w1,w8
01736b9c  bl 0x0124c4d0
01736ba0  ldr w8,[sp, #0x18]
01736ba4  cmp w8,#0x1
01736ba8  b.lt 0x01736bb8
01736bac  ldr x0,[sp, #0x10]
01736bb0  mvn w1,w8
01736bb4  bl 0x0124c4d0
01736bb8  ldr w8,[sp, #0x8]
01736bbc  cmp w8,#0x1
01736bc0  b.lt 0x01736bd0
01736bc4  ldr x0,[sp]
01736bc8  mvn w1,w8
01736bcc  bl 0x0124c4d0
01736bd0  ldp x29,x30,[sp, #0x30]
01736bd4  ldr x19,[sp, #0x20]
01736bd8  add sp,sp,#0x40
01736bdc  ret
