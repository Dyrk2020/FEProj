// ===== case144-SkillFieldResObject @ 016a4f14 =====
// existing function case144-SkillFieldResObject
016a4f14  sub sp,sp,#0x40
016a4f18  stp x20,x19,[sp, #0x20]
016a4f1c  stp x29,x30,[sp, #0x30]
016a4f20  add x29,sp,#0x30
016a4f24  adrp x1,0x174a000
016a4f28  add x1,x1,#0x87c
016a4f2c  mov x19,x0
016a4f30  bl 0x0124ba40
016a4f34  adrp x1,0x575d000
016a4f38  add x1,x1,#0xa06
016a4f3c  mov x0,x19
016a4f40  str x19,[sp]
016a4f44  bl 0x01251aa0
016a4f48  mov w8,#0x1
016a4f4c  str w8,[sp, #0x8]
016a4f50  mov x0,sp
016a4f54  bl 0x0174aa04
016a4f58  adrp x1,0x575f000
016a4f5c  adrp x3,0x736d000
016a4f60  add x1,x1,#0xf93
016a4f64  add x3,x3,#0x101
016a4f68  add x0,sp,#0x10
016a4f6c  mov x2,sp
016a4f70  bl 0x0179d260
016a4f74  ldr x0,[sp, #0x10]
016a4f78  mov w1,#0x10
016a4f7c  bl 0x0124cba0
016a4f80  adrp x8,0x179d000
016a4f84  dup v0.2D,xzr
016a4f88  add x8,x8,#0x250
016a4f8c  mov v0.D[0x0],x8
016a4f90  str q0,[x0]
016a4f94  ldr x0,[sp, #0x10]
016a4f98  adrp x1,0x179d000
016a4f9c  add x1,x1,#0x624
016a4fa0  mov w2,#0x1
016a4fa4  bl 0x0124ec90
016a4fa8  ldr x0,[sp, #0x10]
016a4fac  mov w1,#0xffffffff
016a4fb0  bl 0x0124c0c0
016a4fb4  ldr x19,[sp, #0x10]
016a4fb8  orr w1,wzr,#0xfffffffb
016a4fbc  mov w2,#0x6e7
016a4fc0  mov x0,x19
016a4fc4  bl 0x0124a650
016a4fc8  orr w1,wzr,#0xfffffffe
016a4fcc  mov x0,x19
016a4fd0  bl 0x0124c0c0
016a4fd4  orr w1,wzr,#0xfffffffe
016a4fd8  mov x0,x19
016a4fdc  bl 0x0124e920
016a4fe0  mov w20,w0
016a4fe4  adrp x1,0x575e000
016a4fe8  add x1,x1,#0x56d
016a4fec  mov x0,x19
016a4ff0  bl 0x0124f120
016a4ff4  orr w1,wzr,#0xfffffffe
016a4ff8  mov w2,#0x1
016a4ffc  mov x0,x19
016a5000  bl 0x0124cfc0
016a5004  mov x0,x19
016a5008  mov w1,w20
016a500c  bl 0x0124e060
016a5010  orr w1,wzr,#0xfffffffd
016a5014  mov x0,x19
016a5018  bl 0x0124c4d0
016a501c  ldr x19,[sp, #0x10]
016a5020  orr w1,wzr,#0xfffffffd
016a5024  mov w2,#0x6e7
016a5028  mov x0,x19
016a502c  bl 0x0124a650
016a5030  orr w1,wzr,#0xfffffffe
016a5034  mov x0,x19
016a5038  bl 0x0124c0c0
016a503c  orr w1,wzr,#0xfffffffe
016a5040  mov x0,x19
016a5044  bl 0x0124e920
016a5048  mov w20,w0
016a504c  adrp x1,0x575e000
016a5050  add x1,x1,#0x56d
016a5054  mov x0,x19
016a5058  bl 0x0124f120
016a505c  orr w1,wzr,#0xfffffffe
016a5060  mov w2,#0x1
016a5064  mov x0,x19
016a5068  bl 0x0124cfc0
016a506c  mov x0,x19
016a5070  mov w1,w20
016a5074  bl 0x0124e060
016a5078  orr w1,wzr,#0xfffffffd
016a507c  mov x0,x19
016a5080  bl 0x0124c4d0
016a5084  ldr x0,[sp, #0x10]
016a5088  mov w1,#0x10
016a508c  bl 0x0124cba0
016a5090  adrp x8,0x179d000
016a5094  dup v0.2D,xzr
016a5098  add x8,x8,#0x258
016a509c  mov v0.D[0x0],x8
016a50a0  str q0,[x0]
016a50a4  ldr x0,[sp, #0x10]
016a50a8  adrp x1,0x179d000
016a50ac  add x1,x1,#0x748
016a50b0  mov w2,#0x1
016a50b4  bl 0x0124ec90
016a50b8  ldr x0,[sp, #0x10]
016a50bc  mov w1,#0xffffffff
016a50c0  bl 0x0124c0c0
016a50c4  ldr x19,[sp, #0x10]
016a50c8  orr w1,wzr,#0xfffffffb
016a50cc  mov w2,#0x6e7
016a50d0  mov x0,x19
016a50d4  bl 0x0124a650
016a50d8  orr w1,wzr,#0xfffffffe
016a50dc  mov x0,x19
016a50e0  bl 0x0124c0c0
016a50e4  orr w1,wzr,#0xfffffffe
016a50e8  mov x0,x19
016a50ec  bl 0x0124e920
016a50f0  mov w20,w0
016a50f4  adrp x1,0x575e000
016a50f8  add x1,x1,#0x578
016a50fc  mov x0,x19
016a5100  bl 0x0124f120
016a5104  orr w1,wzr,#0xfffffffe
016a5108  mov w2,#0x1
016a510c  mov x0,x19
016a5110  bl 0x0124cfc0
016a5114  mov x0,x19
016a5118  mov w1,w20
016a511c  bl 0x0124e060
016a5120  orr w1,wzr,#0xfffffffd
016a5124  mov x0,x19
016a5128  bl 0x0124c4d0
016a512c  ldr x19,[sp, #0x10]
016a5130  orr w1,wzr,#0xfffffffd
016a5134  mov w2,#0x6e7
016a5138  mov x0,x19
016a513c  bl 0x0124a650
016a5140  orr w1,wzr,#0xfffffffe
016a5144  mov x0,x19
016a5148  bl 0x0124c0c0
016a514c  orr w1,wzr,#0xfffffffe
016a5150  mov x0,x19
016a5154  bl 0x0124e920
016a5158  mov w20,w0
016a515c  adrp x1,0x575e000
016a5160  add x1,x1,#0x578
016a5164  mov x0,x19
016a5168  bl 0x0124f120
016a516c  orr w1,wzr,#0xfffffffe
016a5170  mov w2,#0x1
016a5174  mov x0,x19
016a5178  bl 0x0124cfc0
016a517c  mov x0,x19
016a5180  mov w1,w20
016a5184  bl 0x0124e060
016a5188  orr w1,wzr,#0xfffffffd
016a518c  mov x0,x19
016a5190  bl 0x0124c4d0
016a5194  ldr w8,[sp, #0x18]
016a5198  ldr x0,[sp, #0x10]
016a519c  sub w8,w8,#0x3
016a51a0  str w8,[sp, #0x18]
016a51a4  orr w1,wzr,#0xfffffffc
016a51a8  bl 0x0124c4d0
016a51ac  ldr w8,[sp, #0x18]
016a51b0  ldr x0,[sp, #0x10]
016a51b4  str wzr,[sp, #0x18]
016a51b8  cmp w8,#0x1
016a51bc  b.lt 0x016a51e0
016a51c0  mvn w1,w8
016a51c4  bl 0x0124c4d0
016a51c8  ldr w8,[sp, #0x18]
016a51cc  cmp w8,#0x1
016a51d0  b.lt 0x016a51e0
016a51d4  ldr x0,[sp, #0x10]
016a51d8  mvn w1,w8
016a51dc  bl 0x0124c4d0
016a51e0  ldr w8,[sp, #0x8]
016a51e4  cmp w8,#0x1
016a51e8  b.lt 0x016a51f8
016a51ec  ldr x0,[sp]
016a51f0  mvn w1,w8
016a51f4  bl 0x0124c4d0
016a51f8  ldp x29,x30,[sp, #0x30]
016a51fc  ldp x20,x19,[sp, #0x20]
016a5200  add sp,sp,#0x40
016a5204  ret
