// ===== case191-RelatedSlotGemBlackConfig @ 016ad6fc =====
// existing function case191-RelatedSlotGemBlackConfig
016ad6fc  sub sp,sp,#0x50
016ad700  str x21,[sp, #0x20]
016ad704  stp x20,x19,[sp, #0x30]
016ad708  stp x29,x30,[sp, #0x40]
016ad70c  add x29,sp,#0x40
016ad710  adrp x1,0x174a000
016ad714  add x1,x1,#0x87c
016ad718  mov x19,x0
016ad71c  bl 0x0124ba40
016ad720  adrp x1,0x575d000
016ad724  add x1,x1,#0xa06
016ad728  mov x0,x19
016ad72c  str x19,[sp]
016ad730  bl 0x01251aa0
016ad734  mov w8,#0x1
016ad738  str w8,[sp, #0x8]
016ad73c  mov x0,sp
016ad740  bl 0x0174aa04
016ad744  adrp x1,0x5760000
016ad748  adrp x3,0x736d000
016ad74c  add x1,x1,#0xb4b
016ad750  add x3,x3,#0x101
016ad754  add x0,sp,#0x10
016ad758  mov x2,sp
016ad75c  bl 0x017b692c
016ad760  adrp x1,0x5760000
016ad764  adrp x2,0x17b6000
016ad768  adrp x4,0x17b6000
016ad76c  add x1,x1,#0xb65
016ad770  add x2,x2,#0x914
016ad774  add x4,x4,#0x91c
016ad778  add x0,sp,#0x10
016ad77c  mov x3,xzr
016ad780  mov x5,xzr
016ad784  bl 0x017b672c
016ad788  mov x19,x0
016ad78c  ldr x0,[x19]
016ad790  mov w1,#0x10
016ad794  bl 0x0124cba0
016ad798  adrp x8,0x17b6000
016ad79c  dup v0.2D,xzr
016ad7a0  add x8,x8,#0x924
016ad7a4  mov v0.D[0x0],x8
016ad7a8  str q0,[x0]
016ad7ac  ldr x0,[x19]
016ad7b0  adrp x1,0x17b6000
016ad7b4  add x1,x1,#0xf10
016ad7b8  mov w2,#0x1
016ad7bc  bl 0x0124ec90
016ad7c0  ldr x0,[x19]
016ad7c4  mov w1,#0xffffffff
016ad7c8  bl 0x0124c0c0
016ad7cc  ldr x20,[x19]
016ad7d0  orr w1,wzr,#0xfffffffb
016ad7d4  mov w2,#0x6e7
016ad7d8  mov x0,x20
016ad7dc  bl 0x0124a650
016ad7e0  orr w1,wzr,#0xfffffffe
016ad7e4  mov x0,x20
016ad7e8  bl 0x0124c0c0
016ad7ec  orr w1,wzr,#0xfffffffe
016ad7f0  mov x0,x20
016ad7f4  bl 0x0124e920
016ad7f8  mov w21,w0
016ad7fc  adrp x1,0x5760000
016ad800  add x1,x1,#0xb6f
016ad804  mov x0,x20
016ad808  bl 0x0124f120
016ad80c  orr w1,wzr,#0xfffffffe
016ad810  mov w2,#0x1
016ad814  mov x0,x20
016ad818  bl 0x0124cfc0
016ad81c  mov x0,x20
016ad820  mov w1,w21
016ad824  bl 0x0124e060
016ad828  orr w1,wzr,#0xfffffffd
016ad82c  mov x0,x20
016ad830  bl 0x0124c4d0
016ad834  ldr x20,[x19]
016ad838  orr w1,wzr,#0xfffffffd
016ad83c  mov w2,#0x6e7
016ad840  mov x0,x20
016ad844  bl 0x0124a650
016ad848  orr w1,wzr,#0xfffffffe
016ad84c  mov x0,x20
016ad850  bl 0x0124c0c0
016ad854  orr w1,wzr,#0xfffffffe
016ad858  mov x0,x20
016ad85c  bl 0x0124e920
016ad860  mov w21,w0
016ad864  adrp x1,0x5760000
016ad868  add x1,x1,#0xb6f
016ad86c  mov x0,x20
016ad870  bl 0x0124f120
016ad874  orr w1,wzr,#0xfffffffe
016ad878  mov w2,#0x1
016ad87c  mov x0,x20
016ad880  bl 0x0124cfc0
016ad884  mov x0,x20
016ad888  mov w1,w21
016ad88c  bl 0x0124e060
016ad890  orr w1,wzr,#0xfffffffd
016ad894  mov x0,x20
016ad898  bl 0x0124c4d0
016ad89c  ldr w8,[x19, #0x8]
016ad8a0  ldr x0,[x19]
016ad8a4  sub w8,w8,#0x3
016ad8a8  str w8,[x19, #0x8]
016ad8ac  orr w1,wzr,#0xfffffffc
016ad8b0  bl 0x0124c4d0
016ad8b4  ldr w8,[x19, #0x8]
016ad8b8  ldr x0,[x19]
016ad8bc  str wzr,[x19, #0x8]
016ad8c0  cmp w8,#0x1
016ad8c4  b.lt 0x016ad8d0
016ad8c8  mvn w1,w8
016ad8cc  bl 0x0124c4d0
016ad8d0  ldr w8,[sp, #0x18]
016ad8d4  cmp w8,#0x1
016ad8d8  b.lt 0x016ad8e8
016ad8dc  ldr x0,[sp, #0x10]
016ad8e0  mvn w1,w8
016ad8e4  bl 0x0124c4d0
016ad8e8  ldr w8,[sp, #0x8]
016ad8ec  cmp w8,#0x1
016ad8f0  b.lt 0x016ad900
016ad8f4  ldr x0,[sp]
016ad8f8  mvn w1,w8
016ad8fc  bl 0x0124c4d0
016ad900  ldp x29,x30,[sp, #0x40]
016ad904  ldp x20,x19,[sp, #0x30]
016ad908  ldr x21,[sp, #0x20]
016ad90c  add sp,sp,#0x50
016ad910  ret
