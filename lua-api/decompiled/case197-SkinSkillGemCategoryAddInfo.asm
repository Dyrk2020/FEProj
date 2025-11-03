// ===== case197-SkinSkillGemCategoryAddInfo @ 016ae644 =====
// existing function case197-SkinSkillGemCategoryAddInfo
016ae644  sub sp,sp,#0x40
016ae648  stp x20,x19,[sp, #0x20]
016ae64c  stp x29,x30,[sp, #0x30]
016ae650  add x29,sp,#0x30
016ae654  adrp x1,0x174a000
016ae658  add x1,x1,#0x87c
016ae65c  mov x19,x0
016ae660  bl 0x0124ba40
016ae664  adrp x1,0x575d000
016ae668  add x1,x1,#0xa06
016ae66c  mov x0,x19
016ae670  str x19,[sp]
016ae674  bl 0x01251aa0
016ae678  mov w8,#0x1
016ae67c  str w8,[sp, #0x8]
016ae680  mov x0,sp
016ae684  bl 0x0174aa04
016ae688  adrp x1,0x5760000
016ae68c  adrp x3,0x736d000
016ae690  add x1,x1,#0xc3b
016ae694  add x3,x3,#0x101
016ae698  add x0,sp,#0x10
016ae69c  mov x2,sp
016ae6a0  bl 0x017b9470
016ae6a4  ldr x0,[sp, #0x10]
016ae6a8  mov w1,#0x10
016ae6ac  bl 0x0124cba0
016ae6b0  adrp x8,0x17b9000
016ae6b4  dup v0.2D,xzr
016ae6b8  add x8,x8,#0x240
016ae6bc  mov v0.D[0x0],x8
016ae6c0  str q0,[x0]
016ae6c4  ldr x0,[sp, #0x10]
016ae6c8  adrp x1,0x17b9000
016ae6cc  add x1,x1,#0x834
016ae6d0  mov w2,#0x1
016ae6d4  bl 0x0124ec90
016ae6d8  ldr x0,[sp, #0x10]
016ae6dc  mov w1,#0xffffffff
016ae6e0  bl 0x0124c0c0
016ae6e4  ldr x19,[sp, #0x10]
016ae6e8  orr w1,wzr,#0xfffffffb
016ae6ec  mov w2,#0x6e7
016ae6f0  mov x0,x19
016ae6f4  bl 0x0124a650
016ae6f8  orr w1,wzr,#0xfffffffe
016ae6fc  mov x0,x19
016ae700  bl 0x0124c0c0
016ae704  orr w1,wzr,#0xfffffffe
016ae708  mov x0,x19
016ae70c  bl 0x0124e920
016ae710  mov w20,w0
016ae714  adrp x1,0x5760000
016ae718  add x1,x1,#0xc57
016ae71c  mov x0,x19
016ae720  bl 0x0124f120
016ae724  orr w1,wzr,#0xfffffffe
016ae728  mov w2,#0x1
016ae72c  mov x0,x19
016ae730  bl 0x0124cfc0
016ae734  mov x0,x19
016ae738  mov w1,w20
016ae73c  bl 0x0124e060
016ae740  orr w1,wzr,#0xfffffffd
016ae744  mov x0,x19
016ae748  bl 0x0124c4d0
016ae74c  ldr x19,[sp, #0x10]
016ae750  orr w1,wzr,#0xfffffffd
016ae754  mov w2,#0x6e7
016ae758  mov x0,x19
016ae75c  bl 0x0124a650
016ae760  orr w1,wzr,#0xfffffffe
016ae764  mov x0,x19
016ae768  bl 0x0124c0c0
016ae76c  orr w1,wzr,#0xfffffffe
016ae770  mov x0,x19
016ae774  bl 0x0124e920
016ae778  mov w20,w0
016ae77c  adrp x1,0x5760000
016ae780  add x1,x1,#0xc57
016ae784  mov x0,x19
016ae788  bl 0x0124f120
016ae78c  orr w1,wzr,#0xfffffffe
016ae790  mov w2,#0x1
016ae794  mov x0,x19
016ae798  bl 0x0124cfc0
016ae79c  mov x0,x19
016ae7a0  mov w1,w20
016ae7a4  bl 0x0124e060
016ae7a8  orr w1,wzr,#0xfffffffd
016ae7ac  mov x0,x19
016ae7b0  bl 0x0124c4d0
016ae7b4  adrp x1,0x5760000
016ae7b8  adrp x2,0x17b9000
016ae7bc  adrp x4,0x17b9000
016ae7c0  add x1,x1,#0xc6b
016ae7c4  add x2,x2,#0x430
016ae7c8  add x4,x4,#0x438
016ae7cc  add x0,sp,#0x10
016ae7d0  mov x3,xzr
016ae7d4  mov x5,xzr
016ae7d8  bl 0x017b9248
016ae7dc  adrp x1,0x5760000
016ae7e0  adrp x2,0x17b9000
016ae7e4  adrp x4,0x17b9000
016ae7e8  add x1,x1,#0xc74
016ae7ec  add x2,x2,#0x440
016ae7f0  add x4,x4,#0x448
016ae7f4  mov x3,xzr
016ae7f8  mov x5,xzr
016ae7fc  bl 0x017b9248
016ae800  adrp x1,0x5760000
016ae804  adrp x2,0x17b9000
016ae808  adrp x4,0x17b9000
016ae80c  add x1,x1,#0xc7c
016ae810  add x2,x2,#0x450
016ae814  add x4,x4,#0x458
016ae818  mov x3,xzr
016ae81c  mov x5,xzr
016ae820  bl 0x017b9248
016ae824  adrp x1,0x5760000
016ae828  adrp x2,0x17b9000
016ae82c  adrp x4,0x17b9000
016ae830  add x1,x1,#0xc86
016ae834  add x2,x2,#0x460
016ae838  add x4,x4,#0x468
016ae83c  mov x3,xzr
016ae840  mov x5,xzr
016ae844  bl 0x017b9248
016ae848  mov x19,x0
016ae84c  ldr w8,[x19, #0x8]
016ae850  ldr x0,[x19]
016ae854  sub w8,w8,#0x3
016ae858  str w8,[x19, #0x8]
016ae85c  orr w1,wzr,#0xfffffffc
016ae860  bl 0x0124c4d0
016ae864  ldr w8,[x19, #0x8]
016ae868  ldr x0,[x19]
016ae86c  str wzr,[x19, #0x8]
016ae870  cmp w8,#0x1
016ae874  b.lt 0x016ae880
016ae878  mvn w1,w8
016ae87c  bl 0x0124c4d0
016ae880  ldr w8,[sp, #0x18]
016ae884  cmp w8,#0x1
016ae888  b.lt 0x016ae898
016ae88c  ldr x0,[sp, #0x10]
016ae890  mvn w1,w8
016ae894  bl 0x0124c4d0
016ae898  ldr w8,[sp, #0x8]
016ae89c  cmp w8,#0x1
016ae8a0  b.lt 0x016ae8b0
016ae8a4  ldr x0,[sp]
016ae8a8  mvn w1,w8
016ae8ac  bl 0x0124c4d0
016ae8b0  ldp x29,x30,[sp, #0x30]
016ae8b4  ldp x20,x19,[sp, #0x20]
016ae8b8  add sp,sp,#0x40
016ae8bc  ret
