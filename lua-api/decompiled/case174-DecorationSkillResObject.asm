// ===== case174-DecorationSkillResObject @ 016aad34 =====
// existing function case174-DecorationSkillResObject
016aad34  sub sp,sp,#0x40
016aad38  str x19,[sp, #0x20]
016aad3c  stp x29,x30,[sp, #0x30]
016aad40  add x29,sp,#0x30
016aad44  adrp x1,0x174a000
016aad48  add x1,x1,#0x87c
016aad4c  mov x19,x0
016aad50  bl 0x0124ba40
016aad54  adrp x1,0x575d000
016aad58  add x1,x1,#0xa06
016aad5c  mov x0,x19
016aad60  str x19,[sp]
016aad64  bl 0x01251aa0
016aad68  mov w8,#0x1
016aad6c  str w8,[sp, #0x8]
016aad70  mov x0,sp
016aad74  bl 0x0174aa04
016aad78  adrp x1,0x5760000
016aad7c  adrp x3,0x736d000
016aad80  add x1,x1,#0x75e
016aad84  add x3,x3,#0x101
016aad88  add x0,sp,#0x10
016aad8c  mov x2,sp
016aad90  bl 0x017ae8bc
016aad94  adrp x1,0x5760000
016aad98  adrp x2,0x17ae000
016aad9c  adrp x4,0x17ae000
016aada0  add x1,x1,#0x777
016aada4  add x2,x2,#0x89c
016aada8  add x4,x4,#0x8a4
016aadac  add x0,sp,#0x10
016aadb0  mov x3,xzr
016aadb4  mov x5,xzr
016aadb8  bl 0x017ae6b4
016aadbc  adrp x1,0x5760000
016aadc0  adrp x2,0x17ae000
016aadc4  adrp x4,0x17ae000
016aadc8  add x1,x1,#0x780
016aadcc  add x2,x2,#0x8ac
016aadd0  add x4,x4,#0x8b4
016aadd4  mov x3,xzr
016aadd8  mov x5,xzr
016aaddc  bl 0x017ae6b4
016aade0  mov x19,x0
016aade4  ldr w8,[x19, #0x8]
016aade8  ldr x0,[x19]
016aadec  sub w8,w8,#0x3
016aadf0  str w8,[x19, #0x8]
016aadf4  orr w1,wzr,#0xfffffffc
016aadf8  bl 0x0124c4d0
016aadfc  ldr w8,[x19, #0x8]
016aae00  ldr x0,[x19]
016aae04  str wzr,[x19, #0x8]
016aae08  cmp w8,#0x1
016aae0c  b.lt 0x016aae18
016aae10  mvn w1,w8
016aae14  bl 0x0124c4d0
016aae18  ldr w8,[sp, #0x18]
016aae1c  cmp w8,#0x1
016aae20  b.lt 0x016aae30
016aae24  ldr x0,[sp, #0x10]
016aae28  mvn w1,w8
016aae2c  bl 0x0124c4d0
016aae30  ldr w8,[sp, #0x8]
016aae34  cmp w8,#0x1
016aae38  b.lt 0x016aae48
016aae3c  ldr x0,[sp]
016aae40  mvn w1,w8
016aae44  bl 0x0124c4d0
016aae48  ldp x29,x30,[sp, #0x30]
016aae4c  ldr x19,[sp, #0x20]
016aae50  add sp,sp,#0x40
016aae54  ret
