// ===== case850_ActorSkill_sub19e9600 @ 019e9600 (DecompileAt3: cleared stale instructions at entry) =====
019e9600  ldrb w8,[x0, #0x18]!
019e9604  cmp w8,w1, UXTB 
019e9608  b.eq 0x019e968c
019e960c  ldur w8,[x0, #-0x10]
019e9610  strb w1,[x0]
019e9614  mov w4,w8
019e9618  tbz w8,#0x1f,0x019e9628
019e961c  sub x9,x0,#0x18
019e9620  sub x9,x9,w8, SXTH 
019e9624  ldr w4,[x9]
019e9628  sub sp,sp,#0x20
019e962c  stp x29,x30,[sp, #0x10]
019e9630  add x29,sp,#0x10
019e9634  ubfx w9,w8,#0x10,#0xf
019e9638  cmp w8,#0x0
019e963c  csel w8,wzr,w9,ge
019e9640  sturb w1,[x29, #-0x4]
019e9644  tbnz w4,#0x1f,0x019e9664
019e9648  cbz w4,0x019e9684
019e964c  mov w2,#0x2
019e9650  sub x3,x29,#0x4
019e9654  mov w0,w4
019e9658  mov w1,w8
019e965c  bl 0x01b1d810
019e9660  b 0x019e9684
019e9664  mov x3,#0x6472
019e9668  adrp x2,0x574b000
019e966c  movk x3,#0x7474, LSL #16
019e9670  add x2,x2,#0x398
019e9674  mov w1,#0x1
019e9678  movk x3,#0x100, LSL #48
019e967c  mov w0,wzr
019e9680  bl 0x01b83618
019e9684  ldp x29,x30,[sp, #0x10]
019e9688  add sp,sp,#0x20
019e968c  ret
