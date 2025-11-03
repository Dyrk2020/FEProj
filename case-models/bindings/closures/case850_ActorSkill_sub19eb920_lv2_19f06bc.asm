// ===== case850_ActorSkill_sub19eb920_lv2_19f06bc @ 019f06bc (DecompileAt3: cleared stale instructions at entry) =====
019f06bc  str x25,[sp, #-0x50]!
019f06c0  stp x24,x23,[sp, #0x10]
019f06c4  stp x22,x21,[sp, #0x20]
019f06c8  stp x20,x19,[sp, #0x30]
019f06cc  stp x29,x30,[sp, #0x40]
019f06d0  add x29,sp,#0x40
019f06d4  adrp x25,0x7319000
019f06d8  ldr x25,[x25, #0x548]
019f06dc  mov x23,x30
019f06e0  mov x21,x1
019f06e4  mov x20,x0
019f06e8  ldr x9,[x25]
019f06ec  mov x19,x8
019f06f0  cbz x9,0x019f0740
019f06f4  ldr x1,[x21]
019f06f8  mov x0,x20
019f06fc  mov w2,wzr
019f0700  bl 0x019f07f4
019f0704  ldr x8,[x25]
019f0708  add x22,x20,#0x8
019f070c  cbz x8,0x019f076c
019f0710  ldr x1,[x21, #0x8]
019f0714  mov x0,x22
019f0718  mov w2,wzr
019f071c  bl 0x019f0970
019f0720  ldr x8,[x25]
019f0724  add x24,x20,#0x10
019f0728  cbz x8,0x019f0798
019f072c  ldr x1,[x21, #0x10]
019f0730  mov x0,x24
019f0734  mov w2,wzr
019f0738  bl 0x019f0aec
019f073c  b 0x019f07c0
019f0740  str x23,[x25]
019f0744  adrp x22,0x7317000
019f0748  ldr x22,[x22, #0xd28]
019f074c  mov x0,x20
019f0750  mov w2,wzr
019f0754  strb wzr,[x22]
019f0758  ldr x1,[x21]
019f075c  bl 0x019f07f4
019f0760  strb wzr,[x22]
019f0764  str xzr,[x25]
019f0768  add x22,x20,#0x8
019f076c  str x23,[x25]
019f0770  adrp x24,0x7317000
019f0774  ldr x24,[x24, #0xd28]
019f0778  add x0,x20,#0x8
019f077c  mov w2,wzr
019f0780  strb wzr,[x24]
019f0784  ldr x1,[x21, #0x8]
019f0788  bl 0x019f0970
019f078c  strb wzr,[x24]
019f0790  str xzr,[x25]
019f0794  add x24,x20,#0x10
019f0798  str x23,[x25]
019f079c  adrp x23,0x7317000
019f07a0  ldr x23,[x23, #0xd28]
019f07a4  add x0,x20,#0x10
019f07a8  mov w2,wzr
019f07ac  strb wzr,[x23]
019f07b0  ldr x1,[x21, #0x10]
019f07b4  bl 0x019f0aec
019f07b8  strb wzr,[x23]
019f07bc  str xzr,[x25]
019f07c0  stp xzr,xzr,[x19, #0x8]
019f07c4  ldr x8,[x20]
019f07c8  ldp x29,x30,[sp, #0x40]
019f07cc  str x8,[x19]
019f07d0  ldr x8,[x22]
019f07d4  ldp x22,x21,[sp, #0x20]
019f07d8  str x8,[x19, #0x8]
019f07dc  ldr x8,[x24]
019f07e0  ldp x24,x23,[sp, #0x10]
019f07e4  str x8,[x19, #0x10]
019f07e8  ldp x20,x19,[sp, #0x30]
019f07ec  ldr x25,[sp], #0x50
019f07f0  ret
019f07f4  str x23,[sp, #-0x40]!
019f07f8  stp x22,x21,[sp, #0x10]
019f07fc  stp x20,x19,[sp, #0x20]
019f0800  stp x29,x30,[sp, #0x30]
019f0804  add x29,sp,#0x30
019f0808  mov x19,x0
019f080c  ldr x8,[x19]
019f0810  mov x20,x1
019f0814  cmp x8,x20
019f0818  b.eq 0x019f0958
019f081c  adrp x21,0x7319000
019f0820  ldr x21,[x21, #0x548]
019f0824  ldr x8,[x21]
019f0828  cbz x8,0x019f0880
019f082c  mov x0,xzr
019f0830  bl 0x01b4868c
019f0834  tst w0,#0xff
019f0838  b.eq 0x019f08e8
019f083c  ldr x8,[x19]
019f0840  cmp x8,x20
019f0844  b.eq 0x019f08e8
019f0848  sub x8,x19,#0x1cc
019f084c  ldr w8,[x8]
019f0850  cmp w8,#0x1
019f0854  b.lt 0x019f08e8
019f0858  sub x21,x19,#0x1d8
019f085c  bl 0x01b4635c
019f0860  ldr w8,[x21, #0xc]
019f0864  ldr x0,[x0, #0x38]
019f0868  mov w2,#0x841
019f086c  mov x1,x20
019f0870  add w8,w8,#0xed
019f0874  str w8,[x0, #0x10]
019f0878  bl 0x01b490bc
019f087c  b 0x019f08e8
019f0880  str x30,[x21]
019f0884  adrp x22,0x7317000
019f0888  ldr x22,[x22, #0xd28]
019f088c  mov x0,xzr
019f0890  strb wzr,[x22]
019f0894  bl 0x01b4868c
019f0898  tst w0,#0xff
019f089c  b.eq 0x019f08e0
019f08a0  ldr x8,[x19]
019f08a4  cmp x8,x20
019f08a8  b.eq 0x019f08e0
019f08ac  sub x8,x19,#0x1cc
019f08b0  ldr w8,[x8]
019f08b4  cmp w8,#0x1
019f08b8  b.lt 0x019f08e0
019f08bc  sub x23,x19,#0x1d8
019f08c0  bl 0x01b4635c
019f08c4  ldr w8,[x23, #0xc]
019f08c8  ldr x0,[x0, #0x38]
019f08cc  mov w2,#0x841
019f08d0  mov x1,x20
019f08d4  add w8,w8,#0xed
019f08d8  str w8,[x0, #0x10]
019f08dc  bl 0x01b490bc
019f08e0  strb wzr,[x22]
019f08e4  str xzr,[x21]
019f08e8  str x20,[x19]
019f08ec  sub x8,x19,#0x1d0
019f08f0  ldr w9,[x8]
019f08f4  mov w8,w9
019f08f8  tbz w9,#0x1f,0x019f0908
019f08fc  sub x8,x19,#0x1d8
019f0900  sub x8,x8,w9, SXTH 
019f0904  ldr w8,[x8]
019f0908  ubfx w10,w9,#0x10,#0xf
019f090c  cmp w9,#0x0
019f0910  csel w1,wzr,w10,ge
019f0914  str x20,[sp, #0x8]
019f0918  tbnz w8,#0x1f,0x019f0934
019f091c  cbz w8,0x019f0958
019f0920  mov w2,#0x24
019f0924  add x3,sp,#0x8
019f0928  mov w0,w8
019f092c  bl 0x01b1d968
019f0930  b 0x019f0958
019f0934  mov x3,#0x6472
019f0938  adrp x2,0x574b000
019f093c  movk x3,#0x7474, LSL #16
019f0940  add x2,x2,#0x398
019f0944  mov w1,#0x1
019f0948  movk x3,#0x100, LSL #48
019f094c  mov w0,wzr
019f0950  mov w4,w8
019f0954  bl 0x01b83618
019f0958  mov x0,x19
019f095c  ldp x29,x30,[sp, #0x30]
019f0960  ldp x20,x19,[sp, #0x20]
019f0964  ldp x22,x21,[sp, #0x10]
019f0968  ldr x23,[sp], #0x40
019f096c  ret
019f0970  str x23,[sp, #-0x40]!
019f0974  stp x22,x21,[sp, #0x10]
019f0978  stp x20,x19,[sp, #0x20]
019f097c  stp x29,x30,[sp, #0x30]
019f0980  add x29,sp,#0x30
019f0984  mov x19,x0
019f0988  ldr x8,[x19]
019f098c  mov x20,x1
019f0990  cmp x8,x20
019f0994  b.eq 0x019f0ad4
019f0998  adrp x21,0x7319000
019f099c  ldr x21,[x21, #0x548]
019f09a0  ldr x8,[x21]
019f09a4  cbz x8,0x019f09fc
019f09a8  mov x0,xzr
019f09ac  bl 0x01b4868c
019f09b0  tst w0,#0xff
019f09b4  b.eq 0x019f0a64
019f09b8  ldr x8,[x19]
019f09bc  cmp x8,x20
019f09c0  b.eq 0x019f0a64
019f09c4  sub x8,x19,#0x1d4
019f09c8  ldr w8,[x8]
019f09cc  cmp w8,#0x1
019f09d0  b.lt 0x019f0a64
019f09d4  sub x21,x19,#0x1e0
019f09d8  bl 0x01b4635c
019f09dc  ldr w8,[x21, #0xc]
019f09e0  ldr x0,[x0, #0x38]
019f09e4  mov w2,#0x842
019f09e8  mov x1,x20
019f09ec  add w8,w8,#0xf5
019f09f0  str w8,[x0, #0x10]
019f09f4  bl 0x01b490bc
019f09f8  b 0x019f0a64
019f09fc  str x30,[x21]
019f0a00  adrp x22,0x7317000
019f0a04  ldr x22,[x22, #0xd28]
019f0a08  mov x0,xzr
019f0a0c  strb wzr,[x22]
019f0a10  bl 0x01b4868c
019f0a14  tst w0,#0xff
019f0a18  b.eq 0x019f0a5c
019f0a1c  ldr x8,[x19]
019f0a20  cmp x8,x20
019f0a24  b.eq 0x019f0a5c
019f0a28  sub x8,x19,#0x1d4
019f0a2c  ldr w8,[x8]
019f0a30  cmp w8,#0x1
019f0a34  b.lt 0x019f0a5c
019f0a38  sub x23,x19,#0x1e0
019f0a3c  bl 0x01b4635c
019f0a40  ldr w8,[x23, #0xc]
019f0a44  ldr x0,[x0, #0x38]
019f0a48  mov w2,#0x842
019f0a4c  mov x1,x20
019f0a50  add w8,w8,#0xf5
019f0a54  str w8,[x0, #0x10]
019f0a58  bl 0x01b490bc
019f0a5c  strb wzr,[x22]
019f0a60  str xzr,[x21]
019f0a64  str x20,[x19]
019f0a68  sub x8,x19,#0x1d8
019f0a6c  ldr w9,[x8]
019f0a70  mov w8,w9
019f0a74  tbz w9,#0x1f,0x019f0a84
019f0a78  sub x8,x19,#0x1e0
019f0a7c  sub x8,x8,w9, SXTH 
019f0a80  ldr w8,[x8]
019f0a84  ubfx w10,w9,#0x10,#0xf
019f0a88  cmp w9,#0x0
019f0a8c  csel w1,wzr,w10,ge
019f0a90  str x20,[sp, #0x8]
019f0a94  tbnz w8,#0x1f,0x019f0ab0
019f0a98  cbz w8,0x019f0ad4
019f0a9c  mov w2,#0x25
019f0aa0  add x3,sp,#0x8
019f0aa4  mov w0,w8
019f0aa8  bl 0x01b1d968
019f0aac  b 0x019f0ad4
019f0ab0  mov x3,#0x6472
019f0ab4  adrp x2,0x574b000
019f0ab8  movk x3,#0x7474, LSL #16
019f0abc  add x2,x2,#0x398
019f0ac0  mov w1,#0x1
019f0ac4  movk x3,#0x100, LSL #48
019f0ac8  mov w0,wzr
019f0acc  mov w4,w8
019f0ad0  bl 0x01b83618
019f0ad4  mov x0,x19
019f0ad8  ldp x29,x30,[sp, #0x30]
019f0adc  ldp x20,x19,[sp, #0x20]
019f0ae0  ldp x22,x21,[sp, #0x10]
019f0ae4  ldr x23,[sp], #0x40
019f0ae8  ret
019f0aec  str x23,[sp, #-0x40]!
019f0af0  stp x22,x21,[sp, #0x10]
019f0af4  stp x20,x19,[sp, #0x20]
019f0af8  stp x29,x30,[sp, #0x30]
019f0afc  add x29,sp,#0x30
019f0b00  mov x19,x0
019f0b04  ldr x8,[x19]
019f0b08  mov x20,x1
019f0b0c  cmp x8,x20
019f0b10  b.eq 0x019f0c50
019f0b14  adrp x21,0x7319000
019f0b18  ldr x21,[x21, #0x548]
019f0b1c  ldr x8,[x21]
019f0b20  cbz x8,0x019f0b78
019f0b24  mov x0,xzr
019f0b28  bl 0x01b4868c
019f0b2c  tst w0,#0xff
019f0b30  b.eq 0x019f0be0
019f0b34  ldr x8,[x19]
019f0b38  cmp x8,x20
019f0b3c  b.eq 0x019f0be0
019f0b40  sub x8,x19,#0x1dc
019f0b44  ldr w8,[x8]
019f0b48  cmp w8,#0x1
019f0b4c  b.lt 0x019f0be0
019f0b50  sub x21,x19,#0x1e8
019f0b54  bl 0x01b4635c
019f0b58  ldr w8,[x21, #0xc]
019f0b5c  ldr x0,[x0, #0x38]
019f0b60  mov w2,#0x843
019f0b64  mov x1,x20
019f0b68  add w8,w8,#0xfd
019f0b6c  str w8,[x0, #0x10]
019f0b70  bl 0x01b490bc
019f0b74  b 0x019f0be0
019f0b78  str x30,[x21]
019f0b7c  adrp x22,0x7317000
019f0b80  ldr x22,[x22, #0xd28]
019f0b84  mov x0,xzr
019f0b88  strb wzr,[x22]
019f0b8c  bl 0x01b4868c
019f0b90  tst w0,#0xff
019f0b94  b.eq 0x019f0bd8
019f0b98  ldr x8,[x19]
019f0b9c  cmp x8,x20
019f0ba0  b.eq 0x019f0bd8
019f0ba4  sub x8,x19,#0x1dc
019f0ba8  ldr w8,[x8]
019f0bac  cmp w8,#0x1
019f0bb0  b.lt 0x019f0bd8
019f0bb4  sub x23,x19,#0x1e8
019f0bb8  bl 0x01b4635c
019f0bbc  ldr w8,[x23, #0xc]
019f0bc0  ldr x0,[x0, #0x38]
019f0bc4  mov w2,#0x843
019f0bc8  mov x1,x20
019f0bcc  add w8,w8,#0xfd
019f0bd0  str w8,[x0, #0x10]
019f0bd4  bl 0x01b490bc
019f0bd8  strb wzr,[x22]
019f0bdc  str xzr,[x21]
019f0be0  str x20,[x19]
019f0be4  sub x8,x19,#0x1e0
019f0be8  ldr w9,[x8]
019f0bec  mov w8,w9
019f0bf0  tbz w9,#0x1f,0x019f0c00
019f0bf4  sub x8,x19,#0x1e8
019f0bf8  sub x8,x8,w9, SXTH 
019f0bfc  ldr w8,[x8]
019f0c00  ubfx w10,w9,#0x10,#0xf
019f0c04  cmp w9,#0x0
019f0c08  csel w1,wzr,w10,ge
019f0c0c  str x20,[sp, #0x8]
019f0c10  tbnz w8,#0x1f,0x019f0c2c
019f0c14  cbz w8,0x019f0c50
019f0c18  mov w2,#0x26
019f0c1c  add x3,sp,#0x8
019f0c20  mov w0,w8
019f0c24  bl 0x01b1d968
019f0c28  b 0x019f0c50
019f0c2c  mov x3,#0x6472
019f0c30  adrp x2,0x574b000
019f0c34  movk x3,#0x7474, LSL #16
019f0c38  add x2,x2,#0x398
019f0c3c  mov w1,#0x1
019f0c40  movk x3,#0x100, LSL #48
019f0c44  mov w0,wzr
019f0c48  mov w4,w8
019f0c4c  bl 0x01b83618
019f0c50  mov x0,x19
019f0c54  ldp x29,x30,[sp, #0x30]
019f0c58  ldp x20,x19,[sp, #0x20]
019f0c5c  ldp x22,x21,[sp, #0x10]
019f0c60  ldr x23,[sp], #0x40
019f0c64  ret
019f0c68  stp x20,x19,[sp, #-0x20]!
019f0c6c  stp x29,x30,[sp, #0x10]
019f0c70  add x29,sp,#0x10
019f0c74  mov w1,#0x1
019f0c78  mov x19,x0
019f0c7c  bl 0x0124ff50
019f0c80  cbz w0,0x019f0cac
019f0c84  adrp x2,0x736d000
019f0c88  adrp x3,0x736d000
019f0c8c  add x2,x2,#0x208
019f0c90  add x3,x3,#0x207
019f0c94  mov w1,#0x1
019f0c98  mov w4,#0x1
019f0c9c  mov x0,x19
019f0ca0  bl 0x0174b938
019f0ca4  ldr x20,[x0, #0x8]
019f0ca8  b 0x019f0cb0
019f0cac  mov x20,xzr
019f0cb0  mov w1,#0xb9d7
019f0cb4  movk w1,#0xfff0, LSL #16
019f0cb8  mov x0,x19
019f0cbc  bl 0x0124e990
019f0cc0  mov x2,x0
019f0cc4  mov x0,x19
019f0cc8  mov x1,x20
019f0ccc  bl 0x019f0cdc
019f0cd0  ldp x29,x30,[sp, #0x10]
019f0cd4  ldp x20,x19,[sp], #0x20
019f0cd8  ret
