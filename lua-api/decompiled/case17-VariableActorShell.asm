// ===== case17-VariableActorShell @ 0168f5f4 =====
// existing function case17-VariableActorShell
0168f5f4  sub sp,sp,#0x40
0168f5f8  stp x20,x19,[sp, #0x20]
0168f5fc  stp x29,x30,[sp, #0x30]
0168f600  add x29,sp,#0x30
0168f604  adrp x1,0x174a000
0168f608  add x1,x1,#0x87c
0168f60c  mov x19,x0
0168f610  bl 0x0124ba40
0168f614  adrp x1,0x575d000
0168f618  add x1,x1,#0xa06
0168f61c  mov x0,x19
0168f620  str x19,[sp]
0168f624  bl 0x01251aa0
0168f628  mov w8,#0x1
0168f62c  str w8,[sp, #0x8]
0168f630  mov x0,sp
0168f634  bl 0x0174aa04
0168f638  adrp x1,0x575d000
0168f63c  adrp x3,0x736d000
0168f640  add x1,x1,#0xd9d
0168f644  add x3,x3,#0x101
0168f648  add x0,sp,#0x10
0168f64c  mov x2,sp
0168f650  bl 0x017578ec
0168f654  ldr x0,[sp, #0x10]
0168f658  mov w1,#0x10
0168f65c  bl 0x0124cba0
0168f660  adrp x8,0x1757000
0168f664  dup v0.2D,xzr
0168f668  add x8,x8,#0x8dc
0168f66c  mov v0.D[0x0],x8
0168f670  str q0,[x0]
0168f674  ldr x0,[sp, #0x10]
0168f678  adrp x1,0x1757000
0168f67c  add x1,x1,#0xcb0
0168f680  mov w2,#0x1
0168f684  bl 0x0124ec90
0168f688  ldr x0,[sp, #0x10]
0168f68c  mov w1,#0xffffffff
0168f690  bl 0x0124c0c0
0168f694  ldr x19,[sp, #0x10]
0168f698  orr w1,wzr,#0xfffffffb
0168f69c  mov w2,#0x6e7
0168f6a0  mov x0,x19
0168f6a4  bl 0x0124a650
0168f6a8  orr w1,wzr,#0xfffffffe
0168f6ac  mov x0,x19
0168f6b0  bl 0x0124c0c0
0168f6b4  orr w1,wzr,#0xfffffffe
0168f6b8  mov x0,x19
0168f6bc  bl 0x0124e920
0168f6c0  mov w20,w0
0168f6c4  adrp x1,0x5955000
0168f6c8  add x1,x1,#0x16f
0168f6cc  mov x0,x19
0168f6d0  bl 0x0124f120
0168f6d4  orr w1,wzr,#0xfffffffe
0168f6d8  mov w2,#0x1
0168f6dc  mov x0,x19
0168f6e0  bl 0x0124cfc0
0168f6e4  mov x0,x19
0168f6e8  mov w1,w20
0168f6ec  bl 0x0124e060
0168f6f0  orr w1,wzr,#0xfffffffd
0168f6f4  mov x0,x19
0168f6f8  bl 0x0124c4d0
0168f6fc  ldr x19,[sp, #0x10]
0168f700  orr w1,wzr,#0xfffffffd
0168f704  mov w2,#0x6e7
0168f708  mov x0,x19
0168f70c  bl 0x0124a650
0168f710  orr w1,wzr,#0xfffffffe
0168f714  mov x0,x19
0168f718  bl 0x0124c0c0
0168f71c  orr w1,wzr,#0xfffffffe
0168f720  mov x0,x19
0168f724  bl 0x0124e920
0168f728  mov w20,w0
0168f72c  adrp x1,0x5955000
0168f730  add x1,x1,#0x16f
0168f734  mov x0,x19
0168f738  bl 0x0124f120
0168f73c  orr w1,wzr,#0xfffffffe
0168f740  mov w2,#0x1
0168f744  mov x0,x19
0168f748  bl 0x0124cfc0
0168f74c  mov x0,x19
0168f750  mov w1,w20
0168f754  bl 0x0124e060
0168f758  orr w1,wzr,#0xfffffffd
0168f75c  mov x0,x19
0168f760  bl 0x0124c4d0
0168f764  ldr x0,[sp, #0x10]
0168f768  mov w1,#0x10
0168f76c  bl 0x0124cba0
0168f770  adrp x8,0x1757000
0168f774  dup v0.2D,xzr
0168f778  add x8,x8,#0x8e4
0168f77c  mov v0.D[0x0],x8
0168f780  str q0,[x0]
0168f784  ldr x0,[sp, #0x10]
0168f788  adrp x1,0x1757000
0168f78c  add x1,x1,#0xdd4
0168f790  mov w2,#0x1
0168f794  bl 0x0124ec90
0168f798  ldr x0,[sp, #0x10]
0168f79c  mov w1,#0xffffffff
0168f7a0  bl 0x0124c0c0
0168f7a4  ldr x19,[sp, #0x10]
0168f7a8  orr w1,wzr,#0xfffffffb
0168f7ac  mov w2,#0x6e7
0168f7b0  mov x0,x19
0168f7b4  bl 0x0124a650
0168f7b8  orr w1,wzr,#0xfffffffe
0168f7bc  mov x0,x19
0168f7c0  bl 0x0124c0c0
0168f7c4  orr w1,wzr,#0xfffffffe
0168f7c8  mov x0,x19
0168f7cc  bl 0x0124e920
0168f7d0  mov w20,w0
0168f7d4  adrp x1,0x575d000
0168f7d8  add x1,x1,#0xbc5
0168f7dc  mov x0,x19
0168f7e0  bl 0x0124f120
0168f7e4  orr w1,wzr,#0xfffffffe
0168f7e8  mov w2,#0x1
0168f7ec  mov x0,x19
0168f7f0  bl 0x0124cfc0
0168f7f4  mov x0,x19
0168f7f8  mov w1,w20
0168f7fc  bl 0x0124e060
0168f800  orr w1,wzr,#0xfffffffd
0168f804  mov x0,x19
0168f808  bl 0x0124c4d0
0168f80c  ldr x19,[sp, #0x10]
0168f810  orr w1,wzr,#0xfffffffd
0168f814  mov w2,#0x6e7
0168f818  mov x0,x19
0168f81c  bl 0x0124a650
0168f820  orr w1,wzr,#0xfffffffe
0168f824  mov x0,x19
0168f828  bl 0x0124c0c0
0168f82c  orr w1,wzr,#0xfffffffe
0168f830  mov x0,x19
0168f834  bl 0x0124e920
0168f838  mov w20,w0
0168f83c  adrp x1,0x575d000
0168f840  add x1,x1,#0xbc5
0168f844  mov x0,x19
0168f848  bl 0x0124f120
0168f84c  orr w1,wzr,#0xfffffffe
0168f850  mov w2,#0x1
0168f854  mov x0,x19
0168f858  bl 0x0124cfc0
0168f85c  mov x0,x19
0168f860  mov w1,w20
0168f864  bl 0x0124e060
0168f868  orr w1,wzr,#0xfffffffd
0168f86c  mov x0,x19
0168f870  bl 0x0124c4d0
0168f874  ldr w8,[sp, #0x18]
0168f878  ldr x0,[sp, #0x10]
0168f87c  sub w8,w8,#0x3
0168f880  str w8,[sp, #0x18]
0168f884  orr w1,wzr,#0xfffffffc
0168f888  bl 0x0124c4d0
0168f88c  ldr w8,[sp, #0x18]
0168f890  ldr x0,[sp, #0x10]
0168f894  str wzr,[sp, #0x18]
0168f898  cmp w8,#0x1
0168f89c  b.lt 0x0168f8c0
0168f8a0  mvn w1,w8
0168f8a4  bl 0x0124c4d0
0168f8a8  ldr w8,[sp, #0x18]
0168f8ac  cmp w8,#0x1
0168f8b0  b.lt 0x0168f8c0
0168f8b4  ldr x0,[sp, #0x10]
0168f8b8  mvn w1,w8
0168f8bc  bl 0x0124c4d0
0168f8c0  ldr w8,[sp, #0x8]
0168f8c4  cmp w8,#0x1
0168f8c8  b.lt 0x0168f8d8
0168f8cc  ldr x0,[sp]
0168f8d0  mvn w1,w8
0168f8d4  bl 0x0124c4d0
0168f8d8  ldp x29,x30,[sp, #0x30]
0168f8dc  ldp x20,x19,[sp, #0x20]
0168f8e0  add sp,sp,#0x40
0168f8e4  ret
