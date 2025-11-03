// ===== case823_ActorBuff_sub19cccc4_lv2_19cedc0 @ 019cedc0 (DecompileAt3: cleared stale instructions at entry) =====
019cedc0  sub sp,sp,#0x40
019cedc4  stp x22,x21,[sp, #0x10]
019cedc8  stp x20,x19,[sp, #0x20]
019cedcc  stp x29,x30,[sp, #0x30]
019cedd0  add x29,sp,#0x30
019cedd4  mov x19,x0
019cedd8  ldr x8,[x19]
019ceddc  mov x20,x1
019cede0  cmp x8,x20
019cede4  b.eq 0x019cef10
019cede8  adrp x21,0x7319000
019cedec  ldr x21,[x21, #0x548]
019cedf0  ldr x8,[x21]
019cedf4  cbz x8,0x019cee44
019cedf8  mov x0,xzr
019cedfc  bl 0x01b4868c
019cee00  tst w0,#0xff
019cee04  b.eq 0x019ceea4
019cee08  ldr x8,[x19]
019cee0c  cmp x8,x20
019cee10  b.eq 0x019ceea4
019cee14  ldur w8,[x19, #-0xac]
019cee18  cmp w8,#0x1
019cee1c  b.lt 0x019ceea4
019cee20  bl 0x01b4635c
019cee24  ldur w8,[x19, #-0xac]
019cee28  ldr x0,[x0, #0x38]
019cee2c  mov w2,#0x24a4
019cee30  mov x1,x20
019cee34  add w8,w8,#0x5c
019cee38  str w8,[x0, #0x10]
019cee3c  bl 0x01b490bc
019cee40  b 0x019ceea4
019cee44  str x30,[x21]
019cee48  adrp x22,0x7317000
019cee4c  ldr x22,[x22, #0xd28]
019cee50  mov x0,xzr
019cee54  strb wzr,[x22]
019cee58  bl 0x01b4868c
019cee5c  tst w0,#0xff
019cee60  b.eq 0x019cee9c
019cee64  ldr x8,[x19]
019cee68  cmp x8,x20
019cee6c  b.eq 0x019cee9c
019cee70  ldur w8,[x19, #-0xac]
019cee74  cmp w8,#0x1
019cee78  b.lt 0x019cee9c
019cee7c  bl 0x01b4635c
019cee80  ldur w8,[x19, #-0xac]
019cee84  ldr x0,[x0, #0x38]
019cee88  mov w2,#0x24a4
019cee8c  mov x1,x20
019cee90  add w8,w8,#0x5c
019cee94  str w8,[x0, #0x10]
019cee98  bl 0x01b490bc
019cee9c  strb wzr,[x22]
019ceea0  str xzr,[x21]
019ceea4  ldur w9,[x19, #-0xb0]
019ceea8  str x20,[x19]
019ceeac  mov w8,w9
019ceeb0  tbz w9,#0x1f,0x019ceec0
019ceeb4  sub x8,x19,#0xb8
019ceeb8  sub x8,x8,w9, SXTH 
019ceebc  ldr w8,[x8]
019ceec0  ubfx w10,w9,#0x10,#0xf
019ceec4  cmp w9,#0x0
019ceec8  csel w1,wzr,w10,ge
019ceecc  str x20,[sp, #0x8]
019ceed0  tbnz w8,#0x1f,0x019ceeec
019ceed4  cbz w8,0x019cef10
019ceed8  orr w2,wzr,#0xe
019ceedc  add x3,sp,#0x8
019ceee0  mov w0,w8
019ceee4  bl 0x01b1d968
019ceee8  b 0x019cef10
019ceeec  mov x3,#0x6472
019ceef0  adrp x2,0x574b000
019ceef4  movk x3,#0x7474, LSL #16
019ceef8  add x2,x2,#0x398
019ceefc  mov w1,#0x1
019cef00  movk x3,#0x100, LSL #48
019cef04  mov w0,wzr
019cef08  mov w4,w8
019cef0c  bl 0x01b83618
019cef10  mov x0,x19
019cef14  ldp x29,x30,[sp, #0x30]
019cef18  ldp x20,x19,[sp, #0x20]
019cef1c  ldp x22,x21,[sp, #0x10]
019cef20  add sp,sp,#0x40
019cef24  ret
019cef28  stp x20,x19,[sp, #-0x20]!
019cef2c  stp x29,x30,[sp, #0x10]
019cef30  add x29,sp,#0x10
019cef34  mov w1,#0x1
019cef38  mov x19,x0
019cef3c  bl 0x0124ff50
019cef40  cbz w0,0x019cef6c
019cef44  adrp x2,0x736d000
019cef48  adrp x3,0x736d000
019cef4c  add x2,x2,#0x899
019cef50  add x3,x3,#0x898
019cef54  mov w1,#0x1
019cef58  mov w4,#0x1
019cef5c  mov x0,x19
019cef60  bl 0x0174b938
019cef64  ldr x20,[x0, #0x8]
019cef68  b 0x019cef70
019cef6c  mov x20,xzr
019cef70  mov w1,#0xb9d7
019cef74  movk w1,#0xfff0, LSL #16
019cef78  mov x0,x19
019cef7c  bl 0x0124e990
019cef80  mov x2,x0
019cef84  mov x0,x19
019cef88  mov x1,x20
019cef8c  bl 0x019cef9c
019cef90  ldp x29,x30,[sp, #0x10]
019cef94  ldp x20,x19,[sp], #0x20
019cef98  ret
