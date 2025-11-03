// ===== case301-AIHeroOrientationResObject @ 016bef34 =====
// existing function case301-AIHeroOrientationResObject
016bef34  sub sp,sp,#0x40
016bef38  stp x20,x19,[sp, #0x20]
016bef3c  stp x29,x30,[sp, #0x30]
016bef40  add x29,sp,#0x30
016bef44  adrp x1,0x174a000
016bef48  add x1,x1,#0x87c
016bef4c  mov x19,x0
016bef50  bl 0x0124ba40
016bef54  adrp x1,0x575d000
016bef58  add x1,x1,#0xa06
016bef5c  mov x0,x19
016bef60  str x19,[sp]
016bef64  bl 0x01251aa0
016bef68  mov w8,#0x1
016bef6c  str w8,[sp, #0x8]
016bef70  mov x0,sp
016bef74  bl 0x0174aa04
016bef78  adrp x1,0x5762000
016bef7c  adrp x3,0x736d000
016bef80  add x1,x1,#0x6ee
016bef84  add x3,x3,#0x101
016bef88  add x0,sp,#0x10
016bef8c  mov x2,sp
016bef90  bl 0x017f61f0
016bef94  ldr x0,[sp, #0x10]
016bef98  mov w1,#0x10
016bef9c  bl 0x0124cba0
016befa0  adrp x8,0x17f5000
016befa4  dup v0.2D,xzr
016befa8  add x8,x8,#0xff0
016befac  mov v0.D[0x0],x8
016befb0  str q0,[x0]
016befb4  ldr x0,[sp, #0x10]
016befb8  adrp x1,0x17f6000
016befbc  add x1,x1,#0x5b4
016befc0  mov w2,#0x1
016befc4  bl 0x0124ec90
016befc8  ldr x0,[sp, #0x10]
016befcc  mov w1,#0xffffffff
016befd0  bl 0x0124c0c0
016befd4  ldr x19,[sp, #0x10]
016befd8  orr w1,wzr,#0xfffffffb
016befdc  mov w2,#0x6e7
016befe0  mov x0,x19
016befe4  bl 0x0124a650
016befe8  orr w1,wzr,#0xfffffffe
016befec  mov x0,x19
016beff0  bl 0x0124c0c0
016beff4  orr w1,wzr,#0xfffffffe
016beff8  mov x0,x19
016beffc  bl 0x0124e920
016bf000  mov w20,w0
016bf004  adrp x1,0x5762000
016bf008  add x1,x1,#0x709
016bf00c  mov x0,x19
016bf010  bl 0x0124f120
016bf014  orr w1,wzr,#0xfffffffe
016bf018  mov w2,#0x1
016bf01c  mov x0,x19
016bf020  bl 0x0124cfc0
016bf024  mov x0,x19
016bf028  mov w1,w20
016bf02c  bl 0x0124e060
016bf030  orr w1,wzr,#0xfffffffd
016bf034  mov x0,x19
016bf038  bl 0x0124c4d0
016bf03c  ldr x19,[sp, #0x10]
016bf040  orr w1,wzr,#0xfffffffd
016bf044  mov w2,#0x6e7
016bf048  mov x0,x19
016bf04c  bl 0x0124a650
016bf050  orr w1,wzr,#0xfffffffe
016bf054  mov x0,x19
016bf058  bl 0x0124c0c0
016bf05c  orr w1,wzr,#0xfffffffe
016bf060  mov x0,x19
016bf064  bl 0x0124e920
016bf068  mov w20,w0
016bf06c  adrp x1,0x5762000
016bf070  add x1,x1,#0x709
016bf074  mov x0,x19
016bf078  bl 0x0124f120
016bf07c  orr w1,wzr,#0xfffffffe
016bf080  mov w2,#0x1
016bf084  mov x0,x19
016bf088  bl 0x0124cfc0
016bf08c  mov x0,x19
016bf090  mov w1,w20
016bf094  bl 0x0124e060
016bf098  orr w1,wzr,#0xfffffffd
016bf09c  mov x0,x19
016bf0a0  bl 0x0124c4d0
016bf0a4  adrp x1,0x5762000
016bf0a8  adrp x2,0x17f6000
016bf0ac  adrp x4,0x17f6000
016bf0b0  add x1,x1,#0x71f
016bf0b4  add x2,x2,#0x1e0
016bf0b8  add x4,x4,#0x1e8
016bf0bc  add x0,sp,#0x10
016bf0c0  mov x3,xzr
016bf0c4  mov x5,xzr
016bf0c8  bl 0x017f5ff8
016bf0cc  mov x19,x0
016bf0d0  ldr w8,[x19, #0x8]
016bf0d4  ldr x0,[x19]
016bf0d8  sub w8,w8,#0x3
016bf0dc  str w8,[x19, #0x8]
016bf0e0  orr w1,wzr,#0xfffffffc
016bf0e4  bl 0x0124c4d0
016bf0e8  ldr w8,[x19, #0x8]
016bf0ec  ldr x0,[x19]
016bf0f0  str wzr,[x19, #0x8]
016bf0f4  cmp w8,#0x1
016bf0f8  b.lt 0x016bf104
016bf0fc  mvn w1,w8
016bf100  bl 0x0124c4d0
016bf104  ldr w8,[sp, #0x18]
016bf108  cmp w8,#0x1
016bf10c  b.lt 0x016bf11c
016bf110  ldr x0,[sp, #0x10]
016bf114  mvn w1,w8
016bf118  bl 0x0124c4d0
016bf11c  ldr w8,[sp, #0x8]
016bf120  cmp w8,#0x1
016bf124  b.lt 0x016bf134
016bf128  ldr x0,[sp]
016bf12c  mvn w1,w8
016bf130  bl 0x0124c4d0
016bf134  ldp x29,x30,[sp, #0x30]
016bf138  ldp x20,x19,[sp, #0x20]
016bf13c  add sp,sp,#0x40
016bf140  ret
