// ===== case195-SkillGemBlackWhiteSetResObject @ 016adf94 =====
// existing function case195-SkillGemBlackWhiteSetResObject
016adf94  sub sp,sp,#0x40
016adf98  stp x20,x19,[sp, #0x20]
016adf9c  stp x29,x30,[sp, #0x30]
016adfa0  add x29,sp,#0x30
016adfa4  adrp x1,0x174a000
016adfa8  add x1,x1,#0x87c
016adfac  mov x19,x0
016adfb0  bl 0x0124ba40
016adfb4  adrp x1,0x575d000
016adfb8  add x1,x1,#0xa06
016adfbc  mov x0,x19
016adfc0  str x19,[sp]
016adfc4  bl 0x01251aa0
016adfc8  mov w8,#0x1
016adfcc  str w8,[sp, #0x8]
016adfd0  mov x0,sp
016adfd4  bl 0x0174aa04
016adfd8  adrp x1,0x5760000
016adfdc  adrp x3,0x736d000
016adfe0  add x1,x1,#0xbd6
016adfe4  add x3,x3,#0x101
016adfe8  add x0,sp,#0x10
016adfec  mov x2,sp
016adff0  bl 0x017b8618
016adff4  ldr x0,[sp, #0x10]
016adff8  mov w1,#0x10
016adffc  bl 0x0124cba0
016ae000  adrp x8,0x17b8000
016ae004  dup v0.2D,xzr
016ae008  add x8,x8,#0x608
016ae00c  mov v0.D[0x0],x8
016ae010  str q0,[x0]
016ae014  ldr x0,[sp, #0x10]
016ae018  adrp x1,0x17b8000
016ae01c  add x1,x1,#0x9dc
016ae020  mov w2,#0x1
016ae024  bl 0x0124ec90
016ae028  ldr x0,[sp, #0x10]
016ae02c  mov w1,#0xffffffff
016ae030  bl 0x0124c0c0
016ae034  ldr x19,[sp, #0x10]
016ae038  orr w1,wzr,#0xfffffffb
016ae03c  mov w2,#0x6e7
016ae040  mov x0,x19
016ae044  bl 0x0124a650
016ae048  orr w1,wzr,#0xfffffffe
016ae04c  mov x0,x19
016ae050  bl 0x0124c0c0
016ae054  orr w1,wzr,#0xfffffffe
016ae058  mov x0,x19
016ae05c  bl 0x0124e920
016ae060  mov w20,w0
016ae064  adrp x1,0x5760000
016ae068  add x1,x1,#0xbf5
016ae06c  mov x0,x19
016ae070  bl 0x0124f120
016ae074  orr w1,wzr,#0xfffffffe
016ae078  mov w2,#0x1
016ae07c  mov x0,x19
016ae080  bl 0x0124cfc0
016ae084  mov x0,x19
016ae088  mov w1,w20
016ae08c  bl 0x0124e060
016ae090  orr w1,wzr,#0xfffffffd
016ae094  mov x0,x19
016ae098  bl 0x0124c4d0
016ae09c  ldr x19,[sp, #0x10]
016ae0a0  orr w1,wzr,#0xfffffffd
016ae0a4  mov w2,#0x6e7
016ae0a8  mov x0,x19
016ae0ac  bl 0x0124a650
016ae0b0  orr w1,wzr,#0xfffffffe
016ae0b4  mov x0,x19
016ae0b8  bl 0x0124c0c0
016ae0bc  orr w1,wzr,#0xfffffffe
016ae0c0  mov x0,x19
016ae0c4  bl 0x0124e920
016ae0c8  mov w20,w0
016ae0cc  adrp x1,0x5760000
016ae0d0  add x1,x1,#0xbf5
016ae0d4  mov x0,x19
016ae0d8  bl 0x0124f120
016ae0dc  orr w1,wzr,#0xfffffffe
016ae0e0  mov w2,#0x1
016ae0e4  mov x0,x19
016ae0e8  bl 0x0124cfc0
016ae0ec  mov x0,x19
016ae0f0  mov w1,w20
016ae0f4  bl 0x0124e060
016ae0f8  orr w1,wzr,#0xfffffffd
016ae0fc  mov x0,x19
016ae100  bl 0x0124c4d0
016ae104  ldr x0,[sp, #0x10]
016ae108  mov w1,#0x10
016ae10c  bl 0x0124cba0
016ae110  adrp x8,0x17b8000
016ae114  dup v0.2D,xzr
016ae118  add x8,x8,#0x610
016ae11c  mov v0.D[0x0],x8
016ae120  str q0,[x0]
016ae124  ldr x0,[sp, #0x10]
016ae128  adrp x1,0x17b8000
016ae12c  add x1,x1,#0xb00
016ae130  mov w2,#0x1
016ae134  bl 0x0124ec90
016ae138  ldr x0,[sp, #0x10]
016ae13c  mov w1,#0xffffffff
016ae140  bl 0x0124c0c0
016ae144  ldr x19,[sp, #0x10]
016ae148  orr w1,wzr,#0xfffffffb
016ae14c  mov w2,#0x6e7
016ae150  mov x0,x19
016ae154  bl 0x0124a650
016ae158  orr w1,wzr,#0xfffffffe
016ae15c  mov x0,x19
016ae160  bl 0x0124c0c0
016ae164  orr w1,wzr,#0xfffffffe
016ae168  mov x0,x19
016ae16c  bl 0x0124e920
016ae170  mov w20,w0
016ae174  adrp x1,0x5760000
016ae178  add x1,x1,#0xc06
016ae17c  mov x0,x19
016ae180  bl 0x0124f120
016ae184  orr w1,wzr,#0xfffffffe
016ae188  mov w2,#0x1
016ae18c  mov x0,x19
016ae190  bl 0x0124cfc0
016ae194  mov x0,x19
016ae198  mov w1,w20
016ae19c  bl 0x0124e060
016ae1a0  orr w1,wzr,#0xfffffffd
016ae1a4  mov x0,x19
016ae1a8  bl 0x0124c4d0
016ae1ac  ldr x19,[sp, #0x10]
016ae1b0  orr w1,wzr,#0xfffffffd
016ae1b4  mov w2,#0x6e7
016ae1b8  mov x0,x19
016ae1bc  bl 0x0124a650
016ae1c0  orr w1,wzr,#0xfffffffe
016ae1c4  mov x0,x19
016ae1c8  bl 0x0124c0c0
016ae1cc  orr w1,wzr,#0xfffffffe
016ae1d0  mov x0,x19
016ae1d4  bl 0x0124e920
016ae1d8  mov w20,w0
016ae1dc  adrp x1,0x5760000
016ae1e0  add x1,x1,#0xc06
016ae1e4  mov x0,x19
016ae1e8  bl 0x0124f120
016ae1ec  orr w1,wzr,#0xfffffffe
016ae1f0  mov w2,#0x1
016ae1f4  mov x0,x19
016ae1f8  bl 0x0124cfc0
016ae1fc  mov x0,x19
016ae200  mov w1,w20
016ae204  bl 0x0124e060
016ae208  orr w1,wzr,#0xfffffffd
016ae20c  mov x0,x19
016ae210  bl 0x0124c4d0
016ae214  ldr w8,[sp, #0x18]
016ae218  ldr x0,[sp, #0x10]
016ae21c  sub w8,w8,#0x3
016ae220  str w8,[sp, #0x18]
016ae224  orr w1,wzr,#0xfffffffc
016ae228  bl 0x0124c4d0
016ae22c  ldr w8,[sp, #0x18]
016ae230  ldr x0,[sp, #0x10]
016ae234  str wzr,[sp, #0x18]
016ae238  cmp w8,#0x1
016ae23c  b.lt 0x016ae260
016ae240  mvn w1,w8
016ae244  bl 0x0124c4d0
016ae248  ldr w8,[sp, #0x18]
016ae24c  cmp w8,#0x1
016ae250  b.lt 0x016ae260
016ae254  ldr x0,[sp, #0x10]
016ae258  mvn w1,w8
016ae25c  bl 0x0124c4d0
016ae260  ldr w8,[sp, #0x8]
016ae264  cmp w8,#0x1
016ae268  b.lt 0x016ae278
016ae26c  ldr x0,[sp]
016ae270  mvn w1,w8
016ae274  bl 0x0124c4d0
016ae278  ldp x29,x30,[sp, #0x30]
016ae27c  ldp x20,x19,[sp, #0x20]
016ae280  add sp,sp,#0x40
016ae284  ret
