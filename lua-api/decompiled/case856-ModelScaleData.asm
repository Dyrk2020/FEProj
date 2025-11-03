// ===== case856-ModelScaleData @ 01742aa0 =====
// existing function case856-ModelScaleData
01742aa0  sub sp,sp,#0x40
01742aa4  str x19,[sp, #0x20]
01742aa8  stp x29,x30,[sp, #0x30]
01742aac  add x29,sp,#0x30
01742ab0  adrp x1,0x174a000
01742ab4  add x1,x1,#0x87c
01742ab8  mov x19,x0
01742abc  bl 0x0124ba40
01742ac0  adrp x1,0x575d000
01742ac4  add x1,x1,#0xa06
01742ac8  mov x0,x19
01742acc  str x19,[sp]
01742ad0  bl 0x01251aa0
01742ad4  mov w8,#0x1
01742ad8  str w8,[sp, #0x8]
01742adc  mov x0,sp
01742ae0  bl 0x0174aa04
01742ae4  adrp x1,0x5773000
01742ae8  adrp x3,0x736d000
01742aec  add x1,x1,#0xaa8
01742af0  add x3,x3,#0x101
01742af4  add x0,sp,#0x10
01742af8  mov x2,sp
01742afc  bl 0x01a03868
01742b00  adrp x1,0x5773000
01742b04  adrp x2,0x1a03000
01742b08  adrp x4,0x1a03000
01742b0c  add x1,x1,#0xab7
01742b10  add x2,x2,#0x660
01742b14  add x4,x4,#0x668
01742b18  add x0,sp,#0x10
01742b1c  mov x3,xzr
01742b20  mov x5,xzr
01742b24  bl 0x01a03478
01742b28  adrp x1,0x5773000
01742b2c  adrp x2,0x1a03000
01742b30  adrp x4,0x1a03000
01742b34  add x1,x1,#0xac1
01742b38  add x2,x2,#0x858
01742b3c  add x4,x4,#0x860
01742b40  mov x3,xzr
01742b44  mov x5,xzr
01742b48  bl 0x01a03670
01742b4c  mov x19,x0
01742b50  ldr w8,[x19, #0x8]
01742b54  ldr x0,[x19]
01742b58  sub w8,w8,#0x3
01742b5c  str w8,[x19, #0x8]
01742b60  orr w1,wzr,#0xfffffffc
01742b64  bl 0x0124c4d0
01742b68  ldr w8,[x19, #0x8]
01742b6c  ldr x0,[x19]
01742b70  str wzr,[x19, #0x8]
01742b74  cmp w8,#0x1
01742b78  b.lt 0x01742b84
01742b7c  mvn w1,w8
01742b80  bl 0x0124c4d0
01742b84  ldr w8,[sp, #0x18]
01742b88  cmp w8,#0x1
01742b8c  b.lt 0x01742b9c
01742b90  ldr x0,[sp, #0x10]
01742b94  mvn w1,w8
01742b98  bl 0x0124c4d0
01742b9c  ldr w8,[sp, #0x8]
01742ba0  cmp w8,#0x1
01742ba4  b.lt 0x01742bb4
01742ba8  ldr x0,[sp]
01742bac  mvn w1,w8
01742bb0  bl 0x0124c4d0
01742bb4  ldp x29,x30,[sp, #0x30]
01742bb8  ldr x19,[sp, #0x20]
01742bbc  add sp,sp,#0x40
01742bc0  ret
