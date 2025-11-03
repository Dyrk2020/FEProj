// ===== case26_LuaFrameDataMgr_sub175c58c @ 0175c58c (DecompileAt3: cleared stale instructions at entry) =====
0175c58c  sub sp,sp,#0x50
0175c590  str x23,[sp, #0x10]
0175c594  stp x22,x21,[sp, #0x20]
0175c598  stp x20,x19,[sp, #0x30]
0175c59c  stp x29,x30,[sp, #0x40]
0175c5a0  add x29,sp,#0x40
0175c5a4  ldr x8,[x2]
0175c5a8  mov x19,x0
0175c5ac  mov x20,x3
0175c5b0  mov x21,x1
0175c5b4  str x8,[x19]
0175c5b8  ldr w8,[x2, #0x8]
0175c5bc  str w8,[x19, #0x8]
0175c5c0  str wzr,[x2, #0x8]
0175c5c4  mov w2,#0x1
0175c5c8  bl 0x0174ae88
0175c5cc  ldr x0,[x19]
0175c5d0  adrp x1,0x175c000
0175c5d4  add x1,x1,#0x910
0175c5d8  mov w2,wzr
0175c5dc  bl 0x0124ec90
0175c5e0  ldr x22,[x19]
0175c5e4  orr w1,wzr,#0xfffffffe
0175c5e8  mov x0,x22
0175c5ec  bl 0x0124e920
0175c5f0  mov w23,w0
0175c5f4  adrp x1,0x575d000
0175c5f8  add x1,x1,#0xa29
0175c5fc  mov x0,x22
0175c600  bl 0x0124f120
0175c604  orr w1,wzr,#0xfffffffe
0175c608  mov w2,#0x1
0175c60c  mov x0,x22
0175c610  bl 0x0124cfc0
0175c614  mov x0,x22
0175c618  mov w1,w23
0175c61c  bl 0x0124e060
0175c620  ldr w8,[x19, #0x8]
0175c624  add w8,w8,#0x1
0175c628  str w8,[x19, #0x8]
0175c62c  mov x0,x19
0175c630  mov x1,x21
0175c634  mov w2,wzr
0175c638  bl 0x0174ae88
0175c63c  ldr x0,[x19]
0175c640  mov w1,wzr
0175c644  mov w2,wzr
0175c648  bl 0x0124f920
0175c64c  ldr x0,[x19]
0175c650  orr w1,wzr,#0xfffffffe
0175c654  mov w2,#0x5e7
0175c658  bl 0x01252d10
0175c65c  ldr x0,[x19]
0175c660  orr w1,wzr,#0xfffffffe
0175c664  bl 0x0124c0c0
0175c668  ldr x0,[x19]
0175c66c  orr w1,wzr,#0xfffffffe
0175c670  mov w2,#0xc07
0175c674  bl 0x01252d10
0175c678  ldr x0,[x19]
0175c67c  mov w1,#0xffffffff
0175c680  bl 0x0124c0c0
0175c684  ldr x0,[x19]
0175c688  orr w1,wzr,#0xfffffffd
0175c68c  mov w2,#0xc1a
0175c690  bl 0x01252d10
0175c694  ldr x0,[x19]
0175c698  adrp x1,0x175c000
0175c69c  add x1,x1,#0x910
0175c6a0  mov w2,wzr
0175c6a4  bl 0x0124ec90
0175c6a8  ldr x22,[x19]
0175c6ac  orr w1,wzr,#0xfffffffe
0175c6b0  mov x0,x22
0175c6b4  bl 0x0124e920
0175c6b8  mov w23,w0
0175c6bc  adrp x1,0x575d000
0175c6c0  add x1,x1,#0xa29
0175c6c4  mov x0,x22
0175c6c8  bl 0x0124f120
0175c6cc  orr w1,wzr,#0xfffffffe
0175c6d0  mov w2,#0x1
0175c6d4  mov x0,x22
0175c6d8  bl 0x0124cfc0
0175c6dc  mov x0,x22
0175c6e0  mov w1,w23
0175c6e4  bl 0x0124e060
0175c6e8  ldr w8,[x19, #0x8]
0175c6ec  add w8,w8,#0x1
0175c6f0  str w8,[x19, #0x8]
0175c6f4  mov x0,x19
0175c6f8  mov x1,x21
0175c6fc  bl 0x0174b264
0175c700  ldr w8,[x19, #0x8]
0175c704  ldr x0,[x19]
0175c708  add w8,w8,#0x1
0175c70c  str w8,[x19, #0x8]
0175c710  mov w1,#0xb9d8
0175c714  movk w1,#0xfff0, LSL #16
0175c718  mov x2,x20
0175c71c  bl 0x0124a650
0175c720  ldr x0,[x19]
0175c724  mov w1,#0xffffffff
0175c728  bl 0x0124ff50
0175c72c  cbz w0,0x0175c804
0175c730  ldr x0,[x19]
0175c734  mov w1,#0xffffffff
0175c738  mov w2,#0xc1a
0175c73c  bl 0x0124a650
0175c740  ldr x0,[x19]
0175c744  mov w1,#0xffffffff
0175c748  mov w2,#0xc07
0175c74c  bl 0x0124a650
0175c750  ldr x0,[x19]
0175c754  mov w1,#0xfffffffa
0175c758  mov w2,#0xdad
0175c75c  bl 0x01252d10
0175c760  ldr x0,[x19]
0175c764  orr w1,wzr,#0xfffffffc
0175c768  mov w2,#0xdad
0175c76c  bl 0x01252d10
0175c770  ldr x0,[x19]
0175c774  orr w1,wzr,#0xfffffffe
0175c778  mov w2,#0xdad
0175c77c  bl 0x01252d10
0175c780  ldr x0,[x19]
0175c784  mov w1,#0xffffffff
0175c788  bl 0x0124c0c0
0175c78c  ldr x0,[x19]
0175c790  adrp x2,0x736d000
0175c794  mov w1,#0xb9d8
0175c798  add x2,x2,#0x24e
0175c79c  movk w1,#0xfff0, LSL #16
0175c7a0  bl 0x01252d10
0175c7a4  ldr x0,[x19]
0175c7a8  orr w1,wzr,#0xfffffffe
0175c7ac  bl 0x0124c0c0
0175c7b0  ldr x0,[x19]
0175c7b4  adrp x2,0x736d000
0175c7b8  mov w1,#0xb9d8
0175c7bc  add x2,x2,#0x24f
0175c7c0  movk w1,#0xfff0, LSL #16
0175c7c4  bl 0x01252d10
0175c7c8  ldr x0,[x19]
0175c7cc  orr w1,wzr,#0xfffffffd
0175c7d0  bl 0x0124c0c0
0175c7d4  ldr x0,[x19]
0175c7d8  adrp x2,0x736d000
0175c7dc  mov w1,#0xb9d8
0175c7e0  add x2,x2,#0x250
0175c7e4  movk w1,#0xfff0, LSL #16
0175c7e8  bl 0x01252d10
0175c7ec  ldp x29,x30,[sp, #0x40]
0175c7f0  ldp x20,x19,[sp, #0x30]
0175c7f4  ldp x22,x21,[sp, #0x20]
0175c7f8  ldr x23,[sp, #0x10]
0175c7fc  add sp,sp,#0x50
0175c800  ret
0175c804  ldr w8,[x19, #0x8]
0175c808  mov w0,#0x10
0175c80c  add w8,w8,#0x1
0175c810  str w8,[x19, #0x8]
0175c814  bl 0x01250920
0175c818  mov x20,x0
0175c81c  adrp x1,0x575d000
0175c820  add x1,x1,#0xa2e
0175c824  add x0,sp,#0x8
0175c828  mov x2,sp
0175c82c  bl 0x0571b104
0175c830  mov w22,#0x1
0175c834  add x1,sp,#0x8
0175c838  mov x0,x20
0175c83c  bl 0x056fed48
0175c840  adrp x1,0x7318000
0175c844  adrp x2,0x7313000
0175c848  ldr x1,[x1, #0x6a0]
0175c84c  ldr x2,[x2, #0xbc8]
0175c850  mov x0,x20
0175c854  mov w22,wzr
0175c858  bl 0x0124dd00
0175c85c  mov x21,x0
0175c860  b 0x0175c8b8
