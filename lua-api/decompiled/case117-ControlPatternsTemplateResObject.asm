// ===== case117-ControlPatternsTemplateResObject @ 0169fe8c =====
// existing function case117-ControlPatternsTemplateResObject
0169fe8c  sub sp,sp,#0x40
0169fe90  stp x20,x19,[sp, #0x20]
0169fe94  stp x29,x30,[sp, #0x30]
0169fe98  add x29,sp,#0x30
0169fe9c  adrp x1,0x174a000
0169fea0  add x1,x1,#0x87c
0169fea4  mov x19,x0
0169fea8  bl 0x0124ba40
0169feac  adrp x1,0x575d000
0169feb0  add x1,x1,#0xa06
0169feb4  mov x0,x19
0169feb8  str x19,[sp]
0169febc  bl 0x01251aa0
0169fec0  mov w8,#0x1
0169fec4  str w8,[sp, #0x8]
0169fec8  mov x0,sp
0169fecc  bl 0x0174aa04
0169fed0  adrp x1,0x575f000
0169fed4  adrp x3,0x736d000
0169fed8  add x1,x1,#0xb89
0169fedc  add x3,x3,#0x101
0169fee0  add x0,sp,#0x10
0169fee4  mov x2,sp
0169fee8  bl 0x01790598
0169feec  ldr x0,[sp, #0x10]
0169fef0  mov w1,#0x10
0169fef4  bl 0x0124cba0
0169fef8  adrp x8,0x1790000
0169fefc  dup v0.2D,xzr
0169ff00  add x8,x8,#0x590
0169ff04  mov v0.D[0x0],x8
0169ff08  str q0,[x0]
0169ff0c  ldr x0,[sp, #0x10]
0169ff10  adrp x1,0x1790000
0169ff14  add x1,x1,#0x95c
0169ff18  mov w2,#0x1
0169ff1c  bl 0x0124ec90
0169ff20  ldr x0,[sp, #0x10]
0169ff24  mov w1,#0xffffffff
0169ff28  bl 0x0124c0c0
0169ff2c  ldr x19,[sp, #0x10]
0169ff30  orr w1,wzr,#0xfffffffb
0169ff34  mov w2,#0x6e7
0169ff38  mov x0,x19
0169ff3c  bl 0x0124a650
0169ff40  orr w1,wzr,#0xfffffffe
0169ff44  mov x0,x19
0169ff48  bl 0x0124c0c0
0169ff4c  orr w1,wzr,#0xfffffffe
0169ff50  mov x0,x19
0169ff54  bl 0x0124e920
0169ff58  mov w20,w0
0169ff5c  adrp x1,0x575f000
0169ff60  add x1,x1,#0xbaa
0169ff64  mov x0,x19
0169ff68  bl 0x0124f120
0169ff6c  orr w1,wzr,#0xfffffffe
0169ff70  mov w2,#0x1
0169ff74  mov x0,x19
0169ff78  bl 0x0124cfc0
0169ff7c  mov x0,x19
0169ff80  mov w1,w20
0169ff84  bl 0x0124e060
0169ff88  orr w1,wzr,#0xfffffffd
0169ff8c  mov x0,x19
0169ff90  bl 0x0124c4d0
0169ff94  ldr x19,[sp, #0x10]
0169ff98  orr w1,wzr,#0xfffffffd
0169ff9c  mov w2,#0x6e7
0169ffa0  mov x0,x19
0169ffa4  bl 0x0124a650
0169ffa8  orr w1,wzr,#0xfffffffe
0169ffac  mov x0,x19
0169ffb0  bl 0x0124c0c0
0169ffb4  orr w1,wzr,#0xfffffffe
0169ffb8  mov x0,x19
0169ffbc  bl 0x0124e920
0169ffc0  mov w20,w0
0169ffc4  adrp x1,0x575f000
0169ffc8  add x1,x1,#0xbaa
0169ffcc  mov x0,x19
0169ffd0  bl 0x0124f120
0169ffd4  orr w1,wzr,#0xfffffffe
0169ffd8  mov w2,#0x1
0169ffdc  mov x0,x19
0169ffe0  bl 0x0124cfc0
0169ffe4  mov x0,x19
0169ffe8  mov w1,w20
0169ffec  bl 0x0124e060
0169fff0  orr w1,wzr,#0xfffffffd
0169fff4  mov x0,x19
0169fff8  bl 0x0124c4d0
0169fffc  ldr w8,[sp, #0x18]
016a0000  ldr x0,[sp, #0x10]
016a0004  sub w8,w8,#0x3
016a0008  str w8,[sp, #0x18]
016a000c  orr w1,wzr,#0xfffffffc
016a0010  bl 0x0124c4d0
016a0014  ldr w8,[sp, #0x18]
016a0018  ldr x0,[sp, #0x10]
016a001c  str wzr,[sp, #0x18]
016a0020  cmp w8,#0x1
016a0024  b.lt 0x016a0048
016a0028  mvn w1,w8
016a002c  bl 0x0124c4d0
016a0030  ldr w8,[sp, #0x18]
016a0034  cmp w8,#0x1
016a0038  b.lt 0x016a0048
016a003c  ldr x0,[sp, #0x10]
016a0040  mvn w1,w8
016a0044  bl 0x0124c4d0
016a0048  ldr w8,[sp, #0x8]
016a004c  cmp w8,#0x1
016a0050  b.lt 0x016a0060
016a0054  ldr x0,[sp]
016a0058  mvn w1,w8
016a005c  bl 0x0124c4d0
016a0060  ldp x29,x30,[sp, #0x30]
016a0064  ldp x20,x19,[sp, #0x20]
016a0068  add sp,sp,#0x40
016a006c  ret
