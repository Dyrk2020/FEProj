// ===== case783-FilterEntry_FilterTags @ 01730b08 =====
// existing function case783-FilterEntry_FilterTags
01730b08  sub sp,sp,#0x40
01730b0c  str x19,[sp, #0x20]
01730b10  stp x29,x30,[sp, #0x30]
01730b14  add x29,sp,#0x30
01730b18  adrp x1,0x174a000
01730b1c  add x1,x1,#0x87c
01730b20  mov x19,x0
01730b24  bl 0x0124ba40
01730b28  adrp x1,0x575d000
01730b2c  add x1,x1,#0xa06
01730b30  mov x0,x19
01730b34  str x19,[sp]
01730b38  bl 0x01251aa0
01730b3c  mov w8,#0x1
01730b40  str w8,[sp, #0x8]
01730b44  mov x0,sp
01730b48  bl 0x0174aa04
01730b4c  adrp x1,0x5771000
01730b50  adrp x3,0x736d000
01730b54  add x1,x1,#0xa0b
01730b58  add x3,x3,#0x101
01730b5c  add x0,sp,#0x10
01730b60  mov x2,sp
01730b64  bl 0x019aaabc
01730b68  adrp x1,0x5771000
01730b6c  adrp x2,0x19aa000
01730b70  adrp x4,0x19aa000
01730b74  add x1,x1,#0xa22
01730b78  add x2,x2,#0x6bc
01730b7c  add x4,x4,#0x6c4
01730b80  add x0,sp,#0x10
01730b84  mov x3,xzr
01730b88  mov x5,xzr
01730b8c  bl 0x019aa4d4
01730b90  adrp x1,0x5771000
01730b94  adrp x2,0x19aa000
01730b98  adrp x4,0x19aa000
01730b9c  add x1,x1,#0xa28
01730ba0  add x2,x2,#0x8b4
01730ba4  add x4,x4,#0x8bc
01730ba8  mov x3,xzr
01730bac  mov x5,xzr
01730bb0  bl 0x019aa6cc
01730bb4  adrp x1,0x5762000
01730bb8  adrp x2,0x19aa000
01730bbc  adrp x4,0x19aa000
01730bc0  add x1,x1,#0x7c6
01730bc4  add x2,x2,#0xaac
01730bc8  add x4,x4,#0xab4
01730bcc  mov x3,xzr
01730bd0  mov x5,xzr
01730bd4  bl 0x019aa8c4
01730bd8  mov x19,x0
01730bdc  ldr w8,[x19, #0x8]
01730be0  ldr x0,[x19]
01730be4  sub w8,w8,#0x3
01730be8  str w8,[x19, #0x8]
01730bec  orr w1,wzr,#0xfffffffc
01730bf0  bl 0x0124c4d0
01730bf4  ldr w8,[x19, #0x8]
01730bf8  ldr x0,[x19]
01730bfc  str wzr,[x19, #0x8]
01730c00  cmp w8,#0x1
01730c04  b.lt 0x01730c10
01730c08  mvn w1,w8
01730c0c  bl 0x0124c4d0
01730c10  ldr w8,[sp, #0x18]
01730c14  cmp w8,#0x1
01730c18  b.lt 0x01730c28
01730c1c  ldr x0,[sp, #0x10]
01730c20  mvn w1,w8
01730c24  bl 0x0124c4d0
01730c28  ldr w8,[sp, #0x8]
01730c2c  cmp w8,#0x1
01730c30  b.lt 0x01730c40
01730c34  ldr x0,[sp]
01730c38  mvn w1,w8
01730c3c  bl 0x0124c4d0
01730c40  ldp x29,x30,[sp, #0x30]
01730c44  ldr x19,[sp, #0x20]
01730c48  add sp,sp,#0x40
01730c4c  ret
