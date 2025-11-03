// ===== case569-UnitComponentRes @ 01701ae8 =====
// existing function case569-UnitComponentRes
01701ae8  sub sp,sp,#0x40
01701aec  str x19,[sp, #0x20]
01701af0  stp x29,x30,[sp, #0x30]
01701af4  add x29,sp,#0x30
01701af8  adrp x1,0x174a000
01701afc  add x1,x1,#0x87c
01701b00  mov x19,x0
01701b04  bl 0x0124ba40
01701b08  adrp x1,0x575d000
01701b0c  add x1,x1,#0xa06
01701b10  mov x0,x19
01701b14  str x19,[sp]
01701b18  bl 0x01251aa0
01701b1c  mov w8,#0x1
01701b20  str w8,[sp, #0x8]
01701b24  mov x0,sp
01701b28  bl 0x0174aa04
01701b2c  adrp x1,0x5769000
01701b30  adrp x3,0x736d000
01701b34  add x1,x1,#0xe9d
01701b38  add x3,x3,#0x101
01701b3c  add x0,sp,#0x10
01701b40  mov x2,sp
01701b44  bl 0x018de78c
01701b48  adrp x1,0x5769000
01701b4c  adrp x2,0x18de000
01701b50  adrp x4,0x18de000
01701b54  add x1,x1,#0xeae
01701b58  add x2,x2,#0x77c
01701b5c  add x4,x4,#0x784
01701b60  add x0,sp,#0x10
01701b64  mov x3,xzr
01701b68  mov x5,xzr
01701b6c  bl 0x018de594
01701b70  mov x19,x0
01701b74  ldr w8,[x19, #0x8]
01701b78  ldr x0,[x19]
01701b7c  sub w8,w8,#0x3
01701b80  str w8,[x19, #0x8]
01701b84  orr w1,wzr,#0xfffffffc
01701b88  bl 0x0124c4d0
01701b8c  ldr w8,[x19, #0x8]
01701b90  ldr x0,[x19]
01701b94  str wzr,[x19, #0x8]
01701b98  cmp w8,#0x1
01701b9c  b.lt 0x01701ba8
01701ba0  mvn w1,w8
01701ba4  bl 0x0124c4d0
01701ba8  ldr w8,[sp, #0x18]
01701bac  cmp w8,#0x1
01701bb0  b.lt 0x01701bc0
01701bb4  ldr x0,[sp, #0x10]
01701bb8  mvn w1,w8
01701bbc  bl 0x0124c4d0
01701bc0  ldr w8,[sp, #0x8]
01701bc4  cmp w8,#0x1
01701bc8  b.lt 0x01701bd8
01701bcc  ldr x0,[sp]
01701bd0  mvn w1,w8
01701bd4  bl 0x0124c4d0
01701bd8  ldp x29,x30,[sp, #0x30]
01701bdc  ldr x19,[sp, #0x20]
01701be0  add sp,sp,#0x40
01701be4  ret
