// ===== case255-BestPartnerResObject @ 016b77f0 =====
// existing function case255-BestPartnerResObject
016b77f0  sub sp,sp,#0x40
016b77f4  stp x20,x19,[sp, #0x20]
016b77f8  stp x29,x30,[sp, #0x30]
016b77fc  add x29,sp,#0x30
016b7800  adrp x1,0x174a000
016b7804  add x1,x1,#0x87c
016b7808  mov x19,x0
016b780c  bl 0x0124ba40
016b7810  adrp x1,0x575d000
016b7814  add x1,x1,#0xa06
016b7818  mov x0,x19
016b781c  str x19,[sp]
016b7820  bl 0x01251aa0
016b7824  mov w8,#0x1
016b7828  str w8,[sp, #0x8]
016b782c  mov x0,sp
016b7830  bl 0x0174aa04
016b7834  adrp x1,0x5761000
016b7838  adrp x3,0x736d000
016b783c  add x1,x1,#0x536
016b7840  add x3,x3,#0x101
016b7844  add x0,sp,#0x10
016b7848  mov x2,sp
016b784c  bl 0x017da068
016b7850  ldr x0,[sp, #0x10]
016b7854  mov w1,#0x10
016b7858  bl 0x0124cba0
016b785c  adrp x8,0x17da000
016b7860  dup v0.2D,xzr
016b7864  add x8,x8,#0x60
016b7868  mov v0.D[0x0],x8
016b786c  str q0,[x0]
016b7870  ldr x0,[sp, #0x10]
016b7874  adrp x1,0x17da000
016b7878  add x1,x1,#0x42c
016b787c  mov w2,#0x1
016b7880  bl 0x0124ec90
016b7884  ldr x0,[sp, #0x10]
016b7888  mov w1,#0xffffffff
016b788c  bl 0x0124c0c0
016b7890  ldr x19,[sp, #0x10]
016b7894  orr w1,wzr,#0xfffffffb
016b7898  mov w2,#0x6e7
016b789c  mov x0,x19
016b78a0  bl 0x0124a650
016b78a4  orr w1,wzr,#0xfffffffe
016b78a8  mov x0,x19
016b78ac  bl 0x0124c0c0
016b78b0  orr w1,wzr,#0xfffffffe
016b78b4  mov x0,x19
016b78b8  bl 0x0124e920
016b78bc  mov w20,w0
016b78c0  adrp x1,0x5761000
016b78c4  add x1,x1,#0x54b
016b78c8  mov x0,x19
016b78cc  bl 0x0124f120
016b78d0  orr w1,wzr,#0xfffffffe
016b78d4  mov w2,#0x1
016b78d8  mov x0,x19
016b78dc  bl 0x0124cfc0
016b78e0  mov x0,x19
016b78e4  mov w1,w20
016b78e8  bl 0x0124e060
016b78ec  orr w1,wzr,#0xfffffffd
016b78f0  mov x0,x19
016b78f4  bl 0x0124c4d0
016b78f8  ldr x19,[sp, #0x10]
016b78fc  orr w1,wzr,#0xfffffffd
016b7900  mov w2,#0x6e7
016b7904  mov x0,x19
016b7908  bl 0x0124a650
016b790c  orr w1,wzr,#0xfffffffe
016b7910  mov x0,x19
016b7914  bl 0x0124c0c0
016b7918  orr w1,wzr,#0xfffffffe
016b791c  mov x0,x19
016b7920  bl 0x0124e920
016b7924  mov w20,w0
016b7928  adrp x1,0x5761000
016b792c  add x1,x1,#0x54b
016b7930  mov x0,x19
016b7934  bl 0x0124f120
016b7938  orr w1,wzr,#0xfffffffe
016b793c  mov w2,#0x1
016b7940  mov x0,x19
016b7944  bl 0x0124cfc0
016b7948  mov x0,x19
016b794c  mov w1,w20
016b7950  bl 0x0124e060
016b7954  orr w1,wzr,#0xfffffffd
016b7958  mov x0,x19
016b795c  bl 0x0124c4d0
016b7960  ldr w8,[sp, #0x18]
016b7964  ldr x0,[sp, #0x10]
016b7968  sub w8,w8,#0x3
016b796c  str w8,[sp, #0x18]
016b7970  orr w1,wzr,#0xfffffffc
016b7974  bl 0x0124c4d0
016b7978  ldr w8,[sp, #0x18]
016b797c  ldr x0,[sp, #0x10]
016b7980  str wzr,[sp, #0x18]
016b7984  cmp w8,#0x1
016b7988  b.lt 0x016b79ac
016b798c  mvn w1,w8
016b7990  bl 0x0124c4d0
016b7994  ldr w8,[sp, #0x18]
016b7998  cmp w8,#0x1
016b799c  b.lt 0x016b79ac
016b79a0  ldr x0,[sp, #0x10]
016b79a4  mvn w1,w8
016b79a8  bl 0x0124c4d0
016b79ac  ldr w8,[sp, #0x8]
016b79b0  cmp w8,#0x1
016b79b4  b.lt 0x016b79c4
016b79b8  ldr x0,[sp]
016b79bc  mvn w1,w8
016b79c0  bl 0x0124c4d0
016b79c4  ldp x29,x30,[sp, #0x30]
016b79c8  ldp x20,x19,[sp, #0x20]
016b79cc  add sp,sp,#0x40
016b79d0  ret
