// ===== case716-VehicleResObject @ 01723a3c =====
// existing function case716-VehicleResObject
01723a3c  sub sp,sp,#0x40
01723a40  str x19,[sp, #0x20]
01723a44  stp x29,x30,[sp, #0x30]
01723a48  add x29,sp,#0x30
01723a4c  adrp x1,0x174a000
01723a50  add x1,x1,#0x87c
01723a54  mov x19,x0
01723a58  bl 0x0124ba40
01723a5c  adrp x1,0x575d000
01723a60  add x1,x1,#0xa06
01723a64  mov x0,x19
01723a68  str x19,[sp]
01723a6c  bl 0x01251aa0
01723a70  mov w8,#0x1
01723a74  str w8,[sp, #0x8]
01723a78  mov x0,sp
01723a7c  bl 0x0174aa04
01723a80  adrp x1,0x576f000
01723a84  adrp x3,0x736d000
01723a88  add x1,x1,#0xa86
01723a8c  add x3,x3,#0x101
01723a90  add x0,sp,#0x10
01723a94  mov x2,sp
01723a98  bl 0x019705d4
01723a9c  adrp x1,0x576f000
01723aa0  adrp x2,0x196f000
01723aa4  adrp x4,0x196f000
01723aa8  add x1,x1,#0xa97
01723aac  add x2,x2,#0xfbc
01723ab0  add x4,x4,#0xfc4
01723ab4  add x0,sp,#0x10
01723ab8  mov x3,xzr
01723abc  mov x5,xzr
01723ac0  bl 0x0196fdd4
01723ac4  adrp x1,0x576f000
01723ac8  adrp x2,0x1970000
01723acc  add x1,x1,#0xaa6
01723ad0  add x2,x2,#0x1b4
01723ad4  mov x3,xzr
01723ad8  mov x4,xzr
01723adc  mov x5,xzr
01723ae0  bl 0x0196ffcc
01723ae4  adrp x1,0x576f000
01723ae8  adrp x2,0x1970000
01723aec  add x1,x1,#0xaaf
01723af0  add x2,x2,#0x1bc
01723af4  mov x3,xzr
01723af8  mov x4,xzr
01723afc  mov x5,xzr
01723b00  bl 0x0196ffcc
01723b04  adrp x1,0x576f000
01723b08  adrp x2,0x1970000
01723b0c  add x1,x1,#0xab9
01723b10  add x2,x2,#0x1c4
01723b14  mov x3,xzr
01723b18  mov x4,xzr
01723b1c  mov x5,xzr
01723b20  bl 0x0196ffcc
01723b24  adrp x1,0x575b000
01723b28  adrp x2,0x1970000
01723b2c  adrp x4,0x1970000
01723b30  add x1,x1,#0x68f
01723b34  add x2,x2,#0x3b4
01723b38  add x4,x4,#0x3bc
01723b3c  mov x3,xzr
01723b40  mov x5,xzr
01723b44  bl 0x019701cc
01723b48  adrp x1,0x5769000
01723b4c  adrp x2,0x1970000
01723b50  adrp x4,0x1970000
01723b54  add x1,x1,#0x9fc
01723b58  add x2,x2,#0x3c4
01723b5c  add x4,x4,#0x3cc
01723b60  mov x3,xzr
01723b64  mov x5,xzr
01723b68  bl 0x019701cc
01723b6c  adrp x1,0x576f000
01723b70  adrp x2,0x1970000
01723b74  add x1,x1,#0xac1
01723b78  add x2,x2,#0x5bc
01723b7c  mov x3,xzr
01723b80  mov x4,xzr
01723b84  mov x5,xzr
01723b88  bl 0x019703d4
01723b8c  adrp x1,0x576f000
01723b90  adrp x2,0x1970000
01723b94  add x1,x1,#0xaca
01723b98  add x2,x2,#0x5c4
01723b9c  mov x3,xzr
01723ba0  mov x4,xzr
01723ba4  mov x5,xzr
01723ba8  bl 0x019703d4
01723bac  adrp x1,0x576f000
01723bb0  adrp x2,0x1970000
01723bb4  add x1,x1,#0xad2
01723bb8  add x2,x2,#0x5cc
01723bbc  mov x3,xzr
01723bc0  mov x4,xzr
01723bc4  mov x5,xzr
01723bc8  bl 0x019703d4
01723bcc  mov x19,x0
01723bd0  ldr w8,[x19, #0x8]
01723bd4  ldr x0,[x19]
01723bd8  sub w8,w8,#0x3
01723bdc  str w8,[x19, #0x8]
01723be0  orr w1,wzr,#0xfffffffc
01723be4  bl 0x0124c4d0
01723be8  ldr w8,[x19, #0x8]
01723bec  ldr x0,[x19]
01723bf0  str wzr,[x19, #0x8]
01723bf4  cmp w8,#0x1
01723bf8  b.lt 0x01723c04
01723bfc  mvn w1,w8
01723c00  bl 0x0124c4d0
01723c04  ldr w8,[sp, #0x18]
01723c08  cmp w8,#0x1
01723c0c  b.lt 0x01723c1c
01723c10  ldr x0,[sp, #0x10]
01723c14  mvn w1,w8
01723c18  bl 0x0124c4d0
01723c1c  ldr w8,[sp, #0x8]
01723c20  cmp w8,#0x1
01723c24  b.lt 0x01723c34
01723c28  ldr x0,[sp]
01723c2c  mvn w1,w8
01723c30  bl 0x0124c4d0
01723c34  ldp x29,x30,[sp, #0x30]
01723c38  ldr x19,[sp, #0x20]
01723c3c  add sp,sp,#0x40
01723c40  ret
