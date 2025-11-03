// ===== case850_ActorSkill_sub19e9a08 @ 019e9a08 (DecompileAt3: cleared stale instructions at entry) =====
019e9a08  ldr w8,[x0, #0x6c]!
019e9a0c  cmp w8,w1
019e9a10  b.eq 0x019e9a94
019e9a14  ldur w8,[x0, #-0x64]
019e9a18  str w1,[x0]
019e9a1c  mov w4,w8
019e9a20  tbz w8,#0x1f,0x019e9a30
019e9a24  sub x9,x0,#0x6c
019e9a28  sub x9,x9,w8, SXTH 
019e9a2c  ldr w4,[x9]
019e9a30  sub sp,sp,#0x20
019e9a34  stp x29,x30,[sp, #0x10]
019e9a38  add x29,sp,#0x10
019e9a3c  ubfx w9,w8,#0x10,#0xf
019e9a40  cmp w8,#0x0
019e9a44  csel w8,wzr,w9,ge
019e9a48  stur w1,[x29, #-0x4]
019e9a4c  tbnz w4,#0x1f,0x019e9a6c
019e9a50  cbz w4,0x019e9a8c
019e9a54  orr w2,wzr,#0xc
019e9a58  sub x3,x29,#0x4
019e9a5c  mov w0,w4
019e9a60  mov w1,w8
019e9a64  bl 0x01b1d8c0
019e9a68  b 0x019e9a8c
019e9a6c  mov x3,#0x6472
019e9a70  adrp x2,0x574b000
019e9a74  movk x3,#0x7474, LSL #16
019e9a78  add x2,x2,#0x398
019e9a7c  mov w1,#0x1
019e9a80  movk x3,#0x100, LSL #48
019e9a84  mov w0,wzr
019e9a88  bl 0x01b83618
019e9a8c  ldp x29,x30,[sp, #0x10]
019e9a90  add sp,sp,#0x20
019e9a94  ret
