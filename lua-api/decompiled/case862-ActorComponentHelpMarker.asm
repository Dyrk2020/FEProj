// ===== case862-ActorComponentHelpMarker @ 01743854 =====
// existing function case862-ActorComponentHelpMarker
01743854  sub sp,sp,#0x40
01743858  stp x20,x19,[sp, #0x20]
0174385c  stp x29,x30,[sp, #0x30]
01743860  add x29,sp,#0x30
01743864  adrp x1,0x174a000
01743868  add x1,x1,#0x87c
0174386c  mov x19,x0
01743870  bl 0x0124ba40
01743874  adrp x1,0x575d000
01743878  add x1,x1,#0xa06
0174387c  mov x0,x19
01743880  str x19,[sp]
01743884  bl 0x01251aa0
01743888  mov w8,#0x1
0174388c  str w8,[sp, #0x8]
01743890  mov x0,sp
01743894  bl 0x0174aa04
01743898  adrp x1,0x5773000
0174389c  adrp x3,0x736d000
017438a0  add x1,x1,#0xbda
017438a4  add x3,x3,#0x101
017438a8  add x0,sp,#0x10
017438ac  mov x2,sp
017438b0  bl 0x01a07c08
017438b4  ldr x0,[sp, #0x10]
017438b8  mov w1,#0x10
017438bc  bl 0x0124cba0
017438c0  adrp x8,0x1a07000
017438c4  dup v0.2D,xzr
017438c8  add x8,x8,#0xc00
017438cc  mov v0.D[0x0],x8
017438d0  str q0,[x0]
017438d4  ldr x0,[sp, #0x10]
017438d8  adrp x1,0x1a07000
017438dc  add x1,x1,#0xfcc
017438e0  mov w2,#0x1
017438e4  bl 0x0124ec90
017438e8  ldr x0,[sp, #0x10]
017438ec  mov w1,#0xffffffff
017438f0  bl 0x0124c0c0
017438f4  ldr x19,[sp, #0x10]
017438f8  orr w1,wzr,#0xfffffffb
017438fc  mov w2,#0x6e7
01743900  mov x0,x19
01743904  bl 0x0124a650
01743908  orr w1,wzr,#0xfffffffe
0174390c  mov x0,x19
01743910  bl 0x0124c0c0
01743914  orr w1,wzr,#0xfffffffe
01743918  mov x0,x19
0174391c  bl 0x0124e920
01743920  mov w20,w0
01743924  adrp x1,0x5773000
01743928  add x1,x1,#0xbf3
0174392c  mov x0,x19
01743930  bl 0x0124f120
01743934  orr w1,wzr,#0xfffffffe
01743938  mov w2,#0x1
0174393c  mov x0,x19
01743940  bl 0x0124cfc0
01743944  mov x0,x19
01743948  mov w1,w20
0174394c  bl 0x0124e060
01743950  orr w1,wzr,#0xfffffffd
01743954  mov x0,x19
01743958  bl 0x0124c4d0
0174395c  ldr x19,[sp, #0x10]
01743960  orr w1,wzr,#0xfffffffd
01743964  mov w2,#0x6e7
01743968  mov x0,x19
0174396c  bl 0x0124a650
01743970  orr w1,wzr,#0xfffffffe
01743974  mov x0,x19
01743978  bl 0x0124c0c0
0174397c  orr w1,wzr,#0xfffffffe
01743980  mov x0,x19
01743984  bl 0x0124e920
01743988  mov w20,w0
0174398c  adrp x1,0x5773000
01743990  add x1,x1,#0xbf3
01743994  mov x0,x19
01743998  bl 0x0124f120
0174399c  orr w1,wzr,#0xfffffffe
017439a0  mov w2,#0x1
017439a4  mov x0,x19
017439a8  bl 0x0124cfc0
017439ac  mov x0,x19
017439b0  mov w1,w20
017439b4  bl 0x0124e060
017439b8  orr w1,wzr,#0xfffffffd
017439bc  mov x0,x19
017439c0  bl 0x0124c4d0
017439c4  ldr w8,[sp, #0x18]
017439c8  ldr x0,[sp, #0x10]
017439cc  sub w8,w8,#0x3
017439d0  str w8,[sp, #0x18]
017439d4  orr w1,wzr,#0xfffffffc
017439d8  bl 0x0124c4d0
017439dc  ldr w8,[sp, #0x18]
017439e0  ldr x0,[sp, #0x10]
017439e4  str wzr,[sp, #0x18]
017439e8  cmp w8,#0x1
017439ec  b.lt 0x01743a10
017439f0  mvn w1,w8
017439f4  bl 0x0124c4d0
017439f8  ldr w8,[sp, #0x18]
017439fc  cmp w8,#0x1
01743a00  b.lt 0x01743a10
01743a04  ldr x0,[sp, #0x10]
01743a08  mvn w1,w8
01743a0c  bl 0x0124c4d0
01743a10  ldr w8,[sp, #0x8]
01743a14  cmp w8,#0x1
01743a18  b.lt 0x01743a28
01743a1c  ldr x0,[sp]
01743a20  mvn w1,w8
01743a24  bl 0x0124c4d0
01743a28  ldp x29,x30,[sp, #0x30]
01743a2c  ldp x20,x19,[sp, #0x20]
01743a30  add sp,sp,#0x40
01743a34  ret
