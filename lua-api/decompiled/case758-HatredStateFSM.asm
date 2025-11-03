// ===== case758-HatredStateFSM @ 0172bd90 =====
// existing function case758-HatredStateFSM
0172bd90  sub sp,sp,#0x40
0172bd94  stp x20,x19,[sp, #0x20]
0172bd98  stp x29,x30,[sp, #0x30]
0172bd9c  add x29,sp,#0x30
0172bda0  adrp x1,0x174a000
0172bda4  add x1,x1,#0x87c
0172bda8  mov x19,x0
0172bdac  bl 0x0124ba40
0172bdb0  adrp x1,0x575d000
0172bdb4  add x1,x1,#0xa06
0172bdb8  mov x0,x19
0172bdbc  str x19,[sp]
0172bdc0  bl 0x01251aa0
0172bdc4  mov w8,#0x1
0172bdc8  str w8,[sp, #0x8]
0172bdcc  mov x0,sp
0172bdd0  bl 0x0174aa04
0172bdd4  adrp x1,0x5770000
0172bdd8  adrp x3,0x736d000
0172bddc  add x1,x1,#0xd66
0172bde0  add x3,x3,#0x101
0172bde4  add x0,sp,#0x10
0172bde8  mov x2,sp
0172bdec  bl 0x0198f230
0172bdf0  ldr x0,[sp, #0x10]
0172bdf4  mov w1,#0x10
0172bdf8  bl 0x0124cba0
0172bdfc  adrp x8,0x198f000
0172be00  dup v0.2D,xzr
0172be04  add x8,x8,#0x14
0172be08  mov v0.D[0x0],x8
0172be0c  str q0,[x0]
0172be10  ldr x0,[sp, #0x10]
0172be14  adrp x1,0x198f000
0172be18  add x1,x1,#0x5f4
0172be1c  mov w2,#0x1
0172be20  bl 0x0124ec90
0172be24  ldr x0,[sp, #0x10]
0172be28  mov w1,#0xffffffff
0172be2c  bl 0x0124c0c0
0172be30  ldr x19,[sp, #0x10]
0172be34  orr w1,wzr,#0xfffffffb
0172be38  mov w2,#0x6e7
0172be3c  mov x0,x19
0172be40  bl 0x0124a650
0172be44  orr w1,wzr,#0xfffffffe
0172be48  mov x0,x19
0172be4c  bl 0x0124c0c0
0172be50  orr w1,wzr,#0xfffffffe
0172be54  mov x0,x19
0172be58  bl 0x0124e920
0172be5c  mov w20,w0
0172be60  adrp x1,0x5762000
0172be64  add x1,x1,#0x1cd
0172be68  mov x0,x19
0172be6c  bl 0x0124f120
0172be70  orr w1,wzr,#0xfffffffe
0172be74  mov w2,#0x1
0172be78  mov x0,x19
0172be7c  bl 0x0124cfc0
0172be80  mov x0,x19
0172be84  mov w1,w20
0172be88  bl 0x0124e060
0172be8c  orr w1,wzr,#0xfffffffd
0172be90  mov x0,x19
0172be94  bl 0x0124c4d0
0172be98  ldr x19,[sp, #0x10]
0172be9c  orr w1,wzr,#0xfffffffd
0172bea0  mov w2,#0x6e7
0172bea4  mov x0,x19
0172bea8  bl 0x0124a650
0172beac  orr w1,wzr,#0xfffffffe
0172beb0  mov x0,x19
0172beb4  bl 0x0124c0c0
0172beb8  orr w1,wzr,#0xfffffffe
0172bebc  mov x0,x19
0172bec0  bl 0x0124e920
0172bec4  mov w20,w0
0172bec8  adrp x1,0x5762000
0172becc  add x1,x1,#0x1cd
0172bed0  mov x0,x19
0172bed4  bl 0x0124f120
0172bed8  orr w1,wzr,#0xfffffffe
0172bedc  mov w2,#0x1
0172bee0  mov x0,x19
0172bee4  bl 0x0124cfc0
0172bee8  mov x0,x19
0172beec  mov w1,w20
0172bef0  bl 0x0124e060
0172bef4  orr w1,wzr,#0xfffffffd
0172bef8  mov x0,x19
0172befc  bl 0x0124c4d0
0172bf00  ldr x0,[sp, #0x10]
0172bf04  mov w1,#0x10
0172bf08  bl 0x0124cba0
0172bf0c  adrp x8,0x198f000
0172bf10  dup v0.2D,xzr
0172bf14  add x8,x8,#0x1c
0172bf18  mov v0.D[0x0],x8
0172bf1c  str q0,[x0]
0172bf20  ldr x0,[sp, #0x10]
0172bf24  adrp x1,0x198f000
0172bf28  add x1,x1,#0x718
0172bf2c  mov w2,#0x1
0172bf30  bl 0x0124ec90
0172bf34  ldr x0,[sp, #0x10]
0172bf38  mov w1,#0xffffffff
0172bf3c  bl 0x0124c0c0
0172bf40  ldr x19,[sp, #0x10]
0172bf44  orr w1,wzr,#0xfffffffb
0172bf48  mov w2,#0x6e7
0172bf4c  mov x0,x19
0172bf50  bl 0x0124a650
0172bf54  orr w1,wzr,#0xfffffffe
0172bf58  mov x0,x19
0172bf5c  bl 0x0124c0c0
0172bf60  orr w1,wzr,#0xfffffffe
0172bf64  mov x0,x19
0172bf68  bl 0x0124e920
0172bf6c  mov w20,w0
0172bf70  adrp x1,0x5766000
0172bf74  add x1,x1,#0x962
0172bf78  mov x0,x19
0172bf7c  bl 0x0124f120
0172bf80  orr w1,wzr,#0xfffffffe
0172bf84  mov w2,#0x1
0172bf88  mov x0,x19
0172bf8c  bl 0x0124cfc0
0172bf90  mov x0,x19
0172bf94  mov w1,w20
0172bf98  bl 0x0124e060
0172bf9c  orr w1,wzr,#0xfffffffd
0172bfa0  mov x0,x19
0172bfa4  bl 0x0124c4d0
0172bfa8  ldr x19,[sp, #0x10]
0172bfac  orr w1,wzr,#0xfffffffd
0172bfb0  mov w2,#0x6e7
0172bfb4  mov x0,x19
0172bfb8  bl 0x0124a650
0172bfbc  orr w1,wzr,#0xfffffffe
0172bfc0  mov x0,x19
0172bfc4  bl 0x0124c0c0
0172bfc8  orr w1,wzr,#0xfffffffe
0172bfcc  mov x0,x19
0172bfd0  bl 0x0124e920
0172bfd4  mov w20,w0
0172bfd8  adrp x1,0x5766000
0172bfdc  add x1,x1,#0x962
0172bfe0  mov x0,x19
0172bfe4  bl 0x0124f120
0172bfe8  orr w1,wzr,#0xfffffffe
0172bfec  mov w2,#0x1
0172bff0  mov x0,x19
0172bff4  bl 0x0124cfc0
0172bff8  mov x0,x19
0172bffc  mov w1,w20
0172c000  bl 0x0124e060
0172c004  orr w1,wzr,#0xfffffffd
0172c008  mov x0,x19
0172c00c  bl 0x0124c4d0
0172c010  adrp x1,0x5770000
0172c014  adrp x2,0x198f000
0172c018  adrp x4,0x198f000
0172c01c  add x1,x1,#0xd75
0172c020  add x2,x2,#0x20c
0172c024  add x4,x4,#0x214
0172c028  add x0,sp,#0x10
0172c02c  mov x3,xzr
0172c030  mov x5,xzr
0172c034  bl 0x0198f024
0172c038  mov x19,x0
0172c03c  ldr w8,[x19, #0x8]
0172c040  ldr x0,[x19]
0172c044  sub w8,w8,#0x3
0172c048  str w8,[x19, #0x8]
0172c04c  orr w1,wzr,#0xfffffffc
0172c050  bl 0x0124c4d0
0172c054  ldr w8,[x19, #0x8]
0172c058  ldr x0,[x19]
0172c05c  str wzr,[x19, #0x8]
0172c060  cmp w8,#0x1
0172c064  b.lt 0x0172c070
0172c068  mvn w1,w8
0172c06c  bl 0x0124c4d0
0172c070  ldr w8,[sp, #0x18]
0172c074  cmp w8,#0x1
0172c078  b.lt 0x0172c088
0172c07c  ldr x0,[sp, #0x10]
0172c080  mvn w1,w8
0172c084  bl 0x0124c4d0
0172c088  ldr w8,[sp, #0x8]
0172c08c  cmp w8,#0x1
0172c090  b.lt 0x0172c0a0
0172c094  ldr x0,[sp]
0172c098  mvn w1,w8
0172c09c  bl 0x0124c4d0
0172c0a0  ldp x29,x30,[sp, #0x30]
0172c0a4  ldp x20,x19,[sp, #0x20]
0172c0a8  add sp,sp,#0x40
0172c0ac  ret
