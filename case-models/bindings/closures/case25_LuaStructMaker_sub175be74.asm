// ===== case25_LuaStructMaker_sub175be74 @ 0175be74 (DecompileAt3: cleared stale instructions at entry) =====
0175be74  sub sp,sp,#0x50
0175be78  str x23,[sp, #0x10]
0175be7c  stp x22,x21,[sp, #0x20]
0175be80  stp x20,x19,[sp, #0x30]
0175be84  stp x29,x30,[sp, #0x40]
0175be88  add x29,sp,#0x40
0175be8c  ldr x8,[x2]
0175be90  mov x19,x0
0175be94  mov x20,x3
0175be98  mov x21,x1
0175be9c  str x8,[x19]
0175bea0  ldr w8,[x2, #0x8]
0175bea4  str w8,[x19, #0x8]
0175bea8  str wzr,[x2, #0x8]
0175beac  mov w2,#0x1
0175beb0  bl 0x0174ae88
0175beb4  ldr x0,[x19]
0175beb8  adrp x1,0x175c000
0175bebc  add x1,x1,#0x1f8
0175bec0  mov w2,wzr
0175bec4  bl 0x0124ec90
0175bec8  ldr x22,[x19]
0175becc  orr w1,wzr,#0xfffffffe
0175bed0  mov x0,x22
0175bed4  bl 0x0124e920
0175bed8  mov w23,w0
0175bedc  adrp x1,0x575d000
0175bee0  add x1,x1,#0xa29
0175bee4  mov x0,x22
0175bee8  bl 0x0124f120
0175beec  orr w1,wzr,#0xfffffffe
0175bef0  mov w2,#0x1
0175bef4  mov x0,x22
0175bef8  bl 0x0124cfc0
0175befc  mov x0,x22
0175bf00  mov w1,w23
0175bf04  bl 0x0124e060
0175bf08  ldr w8,[x19, #0x8]
0175bf0c  add w8,w8,#0x1
0175bf10  str w8,[x19, #0x8]
0175bf14  mov x0,x19
0175bf18  mov x1,x21
0175bf1c  mov w2,wzr
0175bf20  bl 0x0174ae88
0175bf24  ldr x0,[x19]
0175bf28  mov w1,wzr
0175bf2c  mov w2,wzr
0175bf30  bl 0x0124f920
0175bf34  ldr x0,[x19]
0175bf38  orr w1,wzr,#0xfffffffe
0175bf3c  mov w2,#0x5e7
0175bf40  bl 0x01252d10
0175bf44  ldr x0,[x19]
0175bf48  orr w1,wzr,#0xfffffffe
0175bf4c  bl 0x0124c0c0
0175bf50  ldr x0,[x19]
0175bf54  orr w1,wzr,#0xfffffffe
0175bf58  mov w2,#0xc07
0175bf5c  bl 0x01252d10
0175bf60  ldr x0,[x19]
0175bf64  mov w1,#0xffffffff
0175bf68  bl 0x0124c0c0
0175bf6c  ldr x0,[x19]
0175bf70  orr w1,wzr,#0xfffffffd
0175bf74  mov w2,#0xc1a
0175bf78  bl 0x01252d10
0175bf7c  ldr x0,[x19]
0175bf80  adrp x1,0x175c000
0175bf84  add x1,x1,#0x1f8
0175bf88  mov w2,wzr
0175bf8c  bl 0x0124ec90
0175bf90  ldr x22,[x19]
0175bf94  orr w1,wzr,#0xfffffffe
0175bf98  mov x0,x22
0175bf9c  bl 0x0124e920
0175bfa0  mov w23,w0
0175bfa4  adrp x1,0x575d000
0175bfa8  add x1,x1,#0xa29
0175bfac  mov x0,x22
0175bfb0  bl 0x0124f120
0175bfb4  orr w1,wzr,#0xfffffffe
0175bfb8  mov w2,#0x1
0175bfbc  mov x0,x22
0175bfc0  bl 0x0124cfc0
0175bfc4  mov x0,x22
0175bfc8  mov w1,w23
0175bfcc  bl 0x0124e060
0175bfd0  ldr w8,[x19, #0x8]
0175bfd4  add w8,w8,#0x1
0175bfd8  str w8,[x19, #0x8]
0175bfdc  mov x0,x19
0175bfe0  mov x1,x21
0175bfe4  bl 0x0174b264
0175bfe8  ldr w8,[x19, #0x8]
0175bfec  ldr x0,[x19]
0175bff0  add w8,w8,#0x1
0175bff4  str w8,[x19, #0x8]
0175bff8  mov w1,#0xb9d8
0175bffc  movk w1,#0xfff0, LSL #16
0175c000  mov x2,x20
0175c004  bl 0x0124a650
0175c008  ldr x0,[x19]
0175c00c  mov w1,#0xffffffff
0175c010  bl 0x0124ff50
0175c014  cbz w0,0x0175c0ec
0175c018  ldr x0,[x19]
0175c01c  mov w1,#0xffffffff
0175c020  mov w2,#0xc1a
0175c024  bl 0x0124a650
0175c028  ldr x0,[x19]
0175c02c  mov w1,#0xffffffff
0175c030  mov w2,#0xc07
0175c034  bl 0x0124a650
0175c038  ldr x0,[x19]
0175c03c  mov w1,#0xfffffffa
0175c040  mov w2,#0xdad
0175c044  bl 0x01252d10
0175c048  ldr x0,[x19]
0175c04c  orr w1,wzr,#0xfffffffc
0175c050  mov w2,#0xdad
0175c054  bl 0x01252d10
0175c058  ldr x0,[x19]
0175c05c  orr w1,wzr,#0xfffffffe
0175c060  mov w2,#0xdad
0175c064  bl 0x01252d10
0175c068  ldr x0,[x19]
0175c06c  mov w1,#0xffffffff
0175c070  bl 0x0124c0c0
0175c074  ldr x0,[x19]
0175c078  adrp x2,0x736d000
0175c07c  mov w1,#0xb9d8
0175c080  add x2,x2,#0x24a
0175c084  movk w1,#0xfff0, LSL #16
0175c088  bl 0x01252d10
0175c08c  ldr x0,[x19]
0175c090  orr w1,wzr,#0xfffffffe
0175c094  bl 0x0124c0c0
0175c098  ldr x0,[x19]
0175c09c  adrp x2,0x736d000
0175c0a0  mov w1,#0xb9d8
0175c0a4  add x2,x2,#0x24b
0175c0a8  movk w1,#0xfff0, LSL #16
0175c0ac  bl 0x01252d10
0175c0b0  ldr x0,[x19]
0175c0b4  orr w1,wzr,#0xfffffffd
0175c0b8  bl 0x0124c0c0
0175c0bc  ldr x0,[x19]
0175c0c0  adrp x2,0x736d000
0175c0c4  mov w1,#0xb9d8
0175c0c8  add x2,x2,#0x24c
0175c0cc  movk w1,#0xfff0, LSL #16
0175c0d0  bl 0x01252d10
0175c0d4  ldp x29,x30,[sp, #0x40]
0175c0d8  ldp x20,x19,[sp, #0x30]
0175c0dc  ldp x22,x21,[sp, #0x20]
0175c0e0  ldr x23,[sp, #0x10]
0175c0e4  add sp,sp,#0x50
0175c0e8  ret
0175c0ec  ldr w8,[x19, #0x8]
0175c0f0  mov w0,#0x10
0175c0f4  add w8,w8,#0x1
0175c0f8  str w8,[x19, #0x8]
0175c0fc  bl 0x01250920
0175c100  mov x20,x0
0175c104  adrp x1,0x575d000
0175c108  add x1,x1,#0xa2e
0175c10c  add x0,sp,#0x8
0175c110  mov x2,sp
0175c114  bl 0x0571b104
0175c118  mov w22,#0x1
0175c11c  add x1,sp,#0x8
0175c120  mov x0,x20
0175c124  bl 0x056fed48
0175c128  adrp x1,0x7318000
0175c12c  adrp x2,0x7313000
0175c130  ldr x1,[x1, #0x6a0]
0175c134  ldr x2,[x2, #0xbc8]
0175c138  mov x0,x20
0175c13c  mov w22,wzr
0175c140  bl 0x0124dd00
0175c144  mov x21,x0
0175c148  b 0x0175c1a0
