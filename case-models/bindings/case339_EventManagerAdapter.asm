// ===== case339_EventManagerAdapter @ 016ce1ac (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case339-EventManagerAdapter
016ce1ac  sub sp,sp,#0x40
016ce1b0  stp x20,x19,[sp, #0x20]
016ce1b4  stp x29,x30,[sp, #0x30]
016ce1b8  add x29,sp,#0x30
016ce1bc  adrp x1,0x174a000
016ce1c0  add x1,x1,#0x87c
016ce1c4  mov x19,x0
016ce1c8  bl 0x0124ba40
016ce1cc  adrp x1,0x575d000
016ce1d0  add x1,x1,#0xa06
016ce1d4  mov x0,x19
016ce1d8  str x19,[sp]
016ce1dc  bl 0x01251aa0
016ce1e0  mov w8,#0x1
016ce1e4  str w8,[sp, #0x8]
016ce1e8  mov x0,sp
016ce1ec  bl 0x0174aa04
016ce1f0  adrp x1,0x5763000
016ce1f4  adrp x3,0x736d000
016ce1f8  add x1,x1,#0x915
016ce1fc  add x3,x3,#0x101
016ce200  add x0,sp,#0x10
016ce204  mov x2,sp
016ce208  bl 0x01812b7c
016ce20c  ldr x0,[sp, #0x10]
016ce210  mov w1,#0x10
016ce214  bl 0x0124cba0
016ce218  adrp x8,0x1812000
016ce21c  dup v0.2D,xzr
016ce220  add x8,x8,#0xb74
016ce224  mov v0.D[0x0],x8
016ce228  str q0,[x0]
016ce22c  ldr x0,[sp, #0x10]
016ce230  adrp x1,0x1812000
016ce234  add x1,x1,#0xf40
016ce238  mov w2,#0x1
016ce23c  bl 0x0124ec90
016ce240  ldr x0,[sp, #0x10]
016ce244  mov w1,#0xffffffff
016ce248  bl 0x0124c0c0
016ce24c  ldr x19,[sp, #0x10]
016ce250  orr w1,wzr,#0xfffffffb
016ce254  mov w2,#0x6e7
016ce258  mov x0,x19
016ce25c  bl 0x0124a650
016ce260  orr w1,wzr,#0xfffffffe
016ce264  mov x0,x19
016ce268  bl 0x0124c0c0
016ce26c  orr w1,wzr,#0xfffffffe
016ce270  mov x0,x19
016ce274  bl 0x0124e920
016ce278  mov w20,w0
016ce27c  adrp x1,0x5763000
016ce280  add x1,x1,#0x929
016ce284  mov x0,x19
016ce288  bl 0x0124f120
016ce28c  orr w1,wzr,#0xfffffffe
016ce290  mov w2,#0x1
016ce294  mov x0,x19
016ce298  bl 0x0124cfc0
016ce29c  mov x0,x19
016ce2a0  mov w1,w20
016ce2a4  bl 0x0124e060
016ce2a8  orr w1,wzr,#0xfffffffd
016ce2ac  mov x0,x19
016ce2b0  bl 0x0124c4d0
016ce2b4  ldr x19,[sp, #0x10]
016ce2b8  orr w1,wzr,#0xfffffffd
016ce2bc  mov w2,#0x6e7
016ce2c0  mov x0,x19
016ce2c4  bl 0x0124a650
016ce2c8  orr w1,wzr,#0xfffffffe
016ce2cc  mov x0,x19
016ce2d0  bl 0x0124c0c0
016ce2d4  orr w1,wzr,#0xfffffffe
016ce2d8  mov x0,x19
016ce2dc  bl 0x0124e920
016ce2e0  mov w20,w0
016ce2e4  adrp x1,0x5763000
016ce2e8  add x1,x1,#0x929
016ce2ec  mov x0,x19
016ce2f0  bl 0x0124f120
016ce2f4  orr w1,wzr,#0xfffffffe
016ce2f8  mov w2,#0x1
016ce2fc  mov x0,x19
016ce300  bl 0x0124cfc0
016ce304  mov x0,x19
016ce308  mov w1,w20
016ce30c  bl 0x0124e060
016ce310  orr w1,wzr,#0xfffffffd
016ce314  mov x0,x19
016ce318  bl 0x0124c4d0
016ce31c  ldr w8,[sp, #0x18]
016ce320  ldr x0,[sp, #0x10]
016ce324  sub w8,w8,#0x3
016ce328  str w8,[sp, #0x18]
016ce32c  orr w1,wzr,#0xfffffffc
016ce330  bl 0x0124c4d0
016ce334  ldr w8,[sp, #0x18]
016ce338  ldr x0,[sp, #0x10]
016ce33c  str wzr,[sp, #0x18]
016ce340  cmp w8,#0x1
016ce344  b.lt 0x016ce368
016ce348  mvn w1,w8
016ce34c  bl 0x0124c4d0
016ce350  ldr w8,[sp, #0x18]
016ce354  cmp w8,#0x1
016ce358  b.lt 0x016ce368
016ce35c  ldr x0,[sp, #0x10]
016ce360  mvn w1,w8
016ce364  bl 0x0124c4d0
016ce368  ldr w8,[sp, #0x8]
016ce36c  cmp w8,#0x1
016ce370  b.lt 0x016ce380
016ce374  ldr x0,[sp]
016ce378  mvn w1,w8
016ce37c  bl 0x0124c4d0
016ce380  ldp x29,x30,[sp, #0x30]
016ce384  ldp x20,x19,[sp, #0x20]
016ce388  add sp,sp,#0x40
016ce38c  ret
