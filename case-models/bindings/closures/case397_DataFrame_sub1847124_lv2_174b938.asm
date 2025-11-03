// ===== case397_DataFrame_sub1847124_lv2_174b938 @ 0174b938 (DecompileAt3: cleared stale instructions at entry) =====
0174b938  str x23,[sp, #-0x40]!
0174b93c  stp x22,x21,[sp, #0x10]
0174b940  stp x20,x19,[sp, #0x20]
0174b944  stp x29,x30,[sp, #0x30]
0174b948  add x29,sp,#0x30
0174b94c  mov w23,w4
0174b950  mov x21,x3
0174b954  mov x22,x2
0174b958  mov x19,x0
0174b95c  bl 0x0124e920
0174b960  mov w20,w0
0174b964  mov x0,x19
0174b968  mov w1,w20
0174b96c  bl 0x01252360
0174b970  mov w1,#0xffffffff
0174b974  mov x0,x19
0174b978  bl 0x0124ff50
0174b97c  cmp w0,#0x5
0174b980  b.ne 0x0174b9bc
0174b984  mov w1,#0xffffffff
0174b988  mov w2,#0xc07
0174b98c  mov x0,x19
0174b990  bl 0x0124a650
0174b994  mov w1,#0xffffffff
0174b998  mov x0,x19
0174b99c  bl 0x0124ff50
0174b9a0  cbnz w0,0x0174b9e0
0174b9a4  tbz w23,#0x0,0x0174b9e0
0174b9a8  mov w1,#0xb9d8
0174b9ac  movk w1,#0xfff0, LSL #16
0174b9b0  mov x0,x19
0174b9b4  mov x2,x22
0174b9b8  b 0x0174b9f0
0174b9bc  mov w1,#0xb9d8
0174b9c0  movk w1,#0xfff0, LSL #16
0174b9c4  mov x0,x19
0174b9c8  mov x2,x21
0174b9cc  bl 0x0124a650
0174b9d0  mov x0,x19
0174b9d4  mov w1,w20
0174b9d8  bl 0x0174ba8c
0174b9dc  b 0x0174ba78
0174b9e0  mov w1,#0xb9d8
0174b9e4  movk w1,#0xfff0, LSL #16
0174b9e8  mov x0,x19
0174b9ec  mov x2,x21
0174b9f0  bl 0x0124a650
0174b9f4  orr w1,wzr,#0xfffffffd
0174b9f8  mov w2,#0x1
0174b9fc  b 0x0174ba08
0174ba00  orr w1,wzr,#0xfffffffe
0174ba04  mov w2,#0xffffffff
0174ba08  mov x0,x19
0174ba0c  bl 0x0124cfc0
0174ba10  orr w1,wzr,#0xfffffffe
0174ba14  mov x0,x19
0174ba18  bl 0x0124c4d0
0174ba1c  mov w1,#0xffffffff
0174ba20  orr w2,wzr,#0xfffffffe
0174ba24  mov x0,x19
0174ba28  bl 0x01250240
0174ba2c  cbnz w0,0x0174ba60
0174ba30  mov w1,#0xffffffff
0174ba34  mov w2,#0xdad
0174ba38  mov x0,x19
0174ba3c  bl 0x0124a650
0174ba40  mov w1,#0xffffffff
0174ba44  mov x0,x19
0174ba48  bl 0x0124ff50
0174ba4c  cbnz w0,0x0174ba00
0174ba50  orr w1,wzr,#0xfffffffd
0174ba54  mov x0,x19
0174ba58  bl 0x0124c4d0
0174ba5c  b 0x0174b9d0
0174ba60  orr w1,wzr,#0xfffffffd
0174ba64  mov x0,x19
0174ba68  bl 0x0124c4d0
0174ba6c  mov x0,x19
0174ba70  mov w1,w20
0174ba74  bl 0x0124e990
0174ba78  ldp x29,x30,[sp, #0x30]
0174ba7c  ldp x20,x19,[sp, #0x20]
0174ba80  ldp x22,x21,[sp, #0x10]
0174ba84  ldr x23,[sp], #0x40
0174ba88  ret
