// ===== case668-AssistSnapshot @ 01717b14 =====
// existing function case668-AssistSnapshot
01717b14  sub sp,sp,#0x40
01717b18  str x19,[sp, #0x20]
01717b1c  stp x29,x30,[sp, #0x30]
01717b20  add x29,sp,#0x30
01717b24  adrp x1,0x174a000
01717b28  add x1,x1,#0x87c
01717b2c  mov x19,x0
01717b30  bl 0x0124ba40
01717b34  adrp x1,0x575d000
01717b38  add x1,x1,#0xa06
01717b3c  mov x0,x19
01717b40  str x19,[sp]
01717b44  bl 0x01251aa0
01717b48  mov w8,#0x1
01717b4c  str w8,[sp, #0x8]
01717b50  mov x0,sp
01717b54  bl 0x0174aa04
01717b58  adrp x1,0x576d000
01717b5c  adrp x3,0x736d000
01717b60  add x1,x1,#0x57
01717b64  add x3,x3,#0x101
01717b68  add x0,sp,#0x10
01717b6c  mov x2,sp
01717b70  bl 0x0193b76c
01717b74  adrp x1,0x576d000
01717b78  adrp x2,0x193b000
01717b7c  adrp x4,0x193b000
01717b80  add x1,x1,#0x46
01717b84  add x2,x2,#0x75c
01717b88  add x4,x4,#0x764
01717b8c  add x0,sp,#0x10
01717b90  mov x3,xzr
01717b94  mov x5,xzr
01717b98  bl 0x0193b574
01717b9c  mov x19,x0
01717ba0  ldr w8,[x19, #0x8]
01717ba4  ldr x0,[x19]
01717ba8  sub w8,w8,#0x3
01717bac  str w8,[x19, #0x8]
01717bb0  orr w1,wzr,#0xfffffffc
01717bb4  bl 0x0124c4d0
01717bb8  ldr w8,[x19, #0x8]
01717bbc  ldr x0,[x19]
01717bc0  str wzr,[x19, #0x8]
01717bc4  cmp w8,#0x1
01717bc8  b.lt 0x01717bd4
01717bcc  mvn w1,w8
01717bd0  bl 0x0124c4d0
01717bd4  ldr w8,[sp, #0x18]
01717bd8  cmp w8,#0x1
01717bdc  b.lt 0x01717bec
01717be0  ldr x0,[sp, #0x10]
01717be4  mvn w1,w8
01717be8  bl 0x0124c4d0
01717bec  ldr w8,[sp, #0x8]
01717bf0  cmp w8,#0x1
01717bf4  b.lt 0x01717c04
01717bf8  ldr x0,[sp]
01717bfc  mvn w1,w8
01717c00  bl 0x0124c4d0
01717c04  ldp x29,x30,[sp, #0x30]
01717c08  ldr x19,[sp, #0x20]
01717c0c  add sp,sp,#0x40
01717c10  ret
