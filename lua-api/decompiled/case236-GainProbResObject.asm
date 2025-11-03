// ===== case236-GainProbResObject @ 016b4b88 =====
// existing function case236-GainProbResObject
016b4b88  sub sp,sp,#0x40
016b4b8c  str x19,[sp, #0x20]
016b4b90  stp x29,x30,[sp, #0x30]
016b4b94  add x29,sp,#0x30
016b4b98  adrp x1,0x174a000
016b4b9c  add x1,x1,#0x87c
016b4ba0  mov x19,x0
016b4ba4  bl 0x0124ba40
016b4ba8  adrp x1,0x575d000
016b4bac  add x1,x1,#0xa06
016b4bb0  mov x0,x19
016b4bb4  str x19,[sp]
016b4bb8  bl 0x01251aa0
016b4bbc  mov w8,#0x1
016b4bc0  str w8,[sp, #0x8]
016b4bc4  mov x0,sp
016b4bc8  bl 0x0174aa04
016b4bcc  adrp x1,0x5761000
016b4bd0  adrp x3,0x736d000
016b4bd4  add x1,x1,#0x1f5
016b4bd8  add x3,x3,#0x101
016b4bdc  add x0,sp,#0x10
016b4be0  mov x2,sp
016b4be4  bl 0x017cd740
016b4be8  adrp x1,0x5761000
016b4bec  adrp x2,0x17cd000
016b4bf0  adrp x4,0x17cd000
016b4bf4  add x1,x1,#0x207
016b4bf8  add x2,x2,#0x730
016b4bfc  add x4,x4,#0x738
016b4c00  add x0,sp,#0x10
016b4c04  mov x3,xzr
016b4c08  mov x5,xzr
016b4c0c  bl 0x017cd548
016b4c10  mov x19,x0
016b4c14  ldr w8,[x19, #0x8]
016b4c18  ldr x0,[x19]
016b4c1c  sub w8,w8,#0x3
016b4c20  str w8,[x19, #0x8]
016b4c24  orr w1,wzr,#0xfffffffc
016b4c28  bl 0x0124c4d0
016b4c2c  ldr w8,[x19, #0x8]
016b4c30  ldr x0,[x19]
016b4c34  str wzr,[x19, #0x8]
016b4c38  cmp w8,#0x1
016b4c3c  b.lt 0x016b4c48
016b4c40  mvn w1,w8
016b4c44  bl 0x0124c4d0
016b4c48  ldr w8,[sp, #0x18]
016b4c4c  cmp w8,#0x1
016b4c50  b.lt 0x016b4c60
016b4c54  ldr x0,[sp, #0x10]
016b4c58  mvn w1,w8
016b4c5c  bl 0x0124c4d0
016b4c60  ldr w8,[sp, #0x8]
016b4c64  cmp w8,#0x1
016b4c68  b.lt 0x016b4c78
016b4c6c  ldr x0,[sp]
016b4c70  mvn w1,w8
016b4c74  bl 0x0124c4d0
016b4c78  ldp x29,x30,[sp, #0x30]
016b4c7c  ldr x19,[sp, #0x20]
016b4c80  add sp,sp,#0x40
016b4c84  ret
