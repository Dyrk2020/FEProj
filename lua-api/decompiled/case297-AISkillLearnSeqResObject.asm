// ===== case297-AISkillLearnSeqResObject @ 016be6e0 =====
// existing function case297-AISkillLearnSeqResObject
016be6e0  sub sp,sp,#0x40
016be6e4  stp x20,x19,[sp, #0x20]
016be6e8  stp x29,x30,[sp, #0x30]
016be6ec  add x29,sp,#0x30
016be6f0  adrp x1,0x174a000
016be6f4  add x1,x1,#0x87c
016be6f8  mov x19,x0
016be6fc  bl 0x0124ba40
016be700  adrp x1,0x575d000
016be704  add x1,x1,#0xa06
016be708  mov x0,x19
016be70c  str x19,[sp]
016be710  bl 0x01251aa0
016be714  mov w8,#0x1
016be718  str w8,[sp, #0x8]
016be71c  mov x0,sp
016be720  bl 0x0174aa04
016be724  adrp x1,0x5762000
016be728  adrp x3,0x736d000
016be72c  add x1,x1,#0x62b
016be730  add x3,x3,#0x101
016be734  add x0,sp,#0x10
016be738  mov x2,sp
016be73c  bl 0x017f3de0
016be740  ldr x0,[sp, #0x10]
016be744  mov w1,#0x10
016be748  bl 0x0124cba0
016be74c  adrp x8,0x17f3000
016be750  dup v0.2D,xzr
016be754  add x8,x8,#0xdd8
016be758  mov v0.D[0x0],x8
016be75c  str q0,[x0]
016be760  ldr x0,[sp, #0x10]
016be764  adrp x1,0x17f4000
016be768  add x1,x1,#0x1a4
016be76c  mov w2,#0x1
016be770  bl 0x0124ec90
016be774  ldr x0,[sp, #0x10]
016be778  mov w1,#0xffffffff
016be77c  bl 0x0124c0c0
016be780  ldr x19,[sp, #0x10]
016be784  orr w1,wzr,#0xfffffffb
016be788  mov w2,#0x6e7
016be78c  mov x0,x19
016be790  bl 0x0124a650
016be794  orr w1,wzr,#0xfffffffe
016be798  mov x0,x19
016be79c  bl 0x0124c0c0
016be7a0  orr w1,wzr,#0xfffffffe
016be7a4  mov x0,x19
016be7a8  bl 0x0124e920
016be7ac  mov w20,w0
016be7b0  adrp x1,0x5762000
016be7b4  add x1,x1,#0x644
016be7b8  mov x0,x19
016be7bc  bl 0x0124f120
016be7c0  orr w1,wzr,#0xfffffffe
016be7c4  mov w2,#0x1
016be7c8  mov x0,x19
016be7cc  bl 0x0124cfc0
016be7d0  mov x0,x19
016be7d4  mov w1,w20
016be7d8  bl 0x0124e060
016be7dc  orr w1,wzr,#0xfffffffd
016be7e0  mov x0,x19
016be7e4  bl 0x0124c4d0
016be7e8  ldr x19,[sp, #0x10]
016be7ec  orr w1,wzr,#0xfffffffd
016be7f0  mov w2,#0x6e7
016be7f4  mov x0,x19
016be7f8  bl 0x0124a650
016be7fc  orr w1,wzr,#0xfffffffe
016be800  mov x0,x19
016be804  bl 0x0124c0c0
016be808  orr w1,wzr,#0xfffffffe
016be80c  mov x0,x19
016be810  bl 0x0124e920
016be814  mov w20,w0
016be818  adrp x1,0x5762000
016be81c  add x1,x1,#0x644
016be820  mov x0,x19
016be824  bl 0x0124f120
016be828  orr w1,wzr,#0xfffffffe
016be82c  mov w2,#0x1
016be830  mov x0,x19
016be834  bl 0x0124cfc0
016be838  mov x0,x19
016be83c  mov w1,w20
016be840  bl 0x0124e060
016be844  orr w1,wzr,#0xfffffffd
016be848  mov x0,x19
016be84c  bl 0x0124c4d0
016be850  ldr w8,[sp, #0x18]
016be854  ldr x0,[sp, #0x10]
016be858  sub w8,w8,#0x3
016be85c  str w8,[sp, #0x18]
016be860  orr w1,wzr,#0xfffffffc
016be864  bl 0x0124c4d0
016be868  ldr w8,[sp, #0x18]
016be86c  ldr x0,[sp, #0x10]
016be870  str wzr,[sp, #0x18]
016be874  cmp w8,#0x1
016be878  b.lt 0x016be89c
016be87c  mvn w1,w8
016be880  bl 0x0124c4d0
016be884  ldr w8,[sp, #0x18]
016be888  cmp w8,#0x1
016be88c  b.lt 0x016be89c
016be890  ldr x0,[sp, #0x10]
016be894  mvn w1,w8
016be898  bl 0x0124c4d0
016be89c  ldr w8,[sp, #0x8]
016be8a0  cmp w8,#0x1
016be8a4  b.lt 0x016be8b4
016be8a8  ldr x0,[sp]
016be8ac  mvn w1,w8
016be8b0  bl 0x0124c4d0
016be8b4  ldp x29,x30,[sp, #0x30]
016be8b8  ldp x20,x19,[sp, #0x20]
016be8bc  add sp,sp,#0x40
016be8c0  ret
