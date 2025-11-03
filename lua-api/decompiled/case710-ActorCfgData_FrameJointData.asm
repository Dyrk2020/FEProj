// ===== case710-ActorCfgData_FrameJointData @ 01722834 =====
// existing function case710-ActorCfgData_FrameJointData
01722834  sub sp,sp,#0x50
01722838  str x21,[sp, #0x20]
0172283c  stp x20,x19,[sp, #0x30]
01722840  stp x29,x30,[sp, #0x40]
01722844  add x29,sp,#0x40
01722848  adrp x1,0x174a000
0172284c  add x1,x1,#0x87c
01722850  mov x19,x0
01722854  bl 0x0124ba40
01722858  adrp x1,0x575d000
0172285c  add x1,x1,#0xa06
01722860  mov x0,x19
01722864  str x19,[sp]
01722868  bl 0x01251aa0
0172286c  mov w8,#0x1
01722870  str w8,[sp, #0x8]
01722874  mov x0,sp
01722878  bl 0x0174aa04
0172287c  adrp x1,0x576f000
01722880  adrp x3,0x736d000
01722884  add x1,x1,#0x8e0
01722888  add x3,x3,#0x101
0172288c  add x0,sp,#0x10
01722890  mov x2,sp
01722894  bl 0x0196bbcc
01722898  ldr x0,[sp, #0x10]
0172289c  mov w1,#0x10
017228a0  bl 0x0124cba0
017228a4  adrp x8,0x196b000
017228a8  dup v0.2D,xzr
017228ac  add x8,x8,#0x9c4
017228b0  mov v0.D[0x0],x8
017228b4  str q0,[x0]
017228b8  ldr x0,[sp, #0x10]
017228bc  adrp x1,0x196b000
017228c0  add x1,x1,#0xf90
017228c4  mov w2,#0x1
017228c8  bl 0x0124ec90
017228cc  ldr x0,[sp, #0x10]
017228d0  mov w1,#0xffffffff
017228d4  bl 0x0124c0c0
017228d8  ldr x19,[sp, #0x10]
017228dc  orr w1,wzr,#0xfffffffb
017228e0  mov w2,#0x6e7
017228e4  mov x0,x19
017228e8  bl 0x0124a650
017228ec  orr w1,wzr,#0xfffffffe
017228f0  mov x0,x19
017228f4  bl 0x0124c0c0
017228f8  orr w1,wzr,#0xfffffffe
017228fc  mov x0,x19
01722900  bl 0x0124e920
01722904  mov w20,w0
01722908  adrp x1,0x576f000
0172290c  add x1,x1,#0x8fc
01722910  mov x0,x19
01722914  bl 0x0124f120
01722918  orr w1,wzr,#0xfffffffe
0172291c  mov w2,#0x1
01722920  mov x0,x19
01722924  bl 0x0124cfc0
01722928  mov x0,x19
0172292c  mov w1,w20
01722930  bl 0x0124e060
01722934  orr w1,wzr,#0xfffffffd
01722938  mov x0,x19
0172293c  bl 0x0124c4d0
01722940  ldr x19,[sp, #0x10]
01722944  orr w1,wzr,#0xfffffffd
01722948  mov w2,#0x6e7
0172294c  mov x0,x19
01722950  bl 0x0124a650
01722954  orr w1,wzr,#0xfffffffe
01722958  mov x0,x19
0172295c  bl 0x0124c0c0
01722960  orr w1,wzr,#0xfffffffe
01722964  mov x0,x19
01722968  bl 0x0124e920
0172296c  mov w20,w0
01722970  adrp x1,0x576f000
01722974  add x1,x1,#0x8fc
01722978  mov x0,x19
0172297c  bl 0x0124f120
01722980  orr w1,wzr,#0xfffffffe
01722984  mov w2,#0x1
01722988  mov x0,x19
0172298c  bl 0x0124cfc0
01722990  mov x0,x19
01722994  mov w1,w20
01722998  bl 0x0124e060
0172299c  orr w1,wzr,#0xfffffffd
017229a0  mov x0,x19
017229a4  bl 0x0124c4d0
017229a8  adrp x1,0x576f000
017229ac  adrp x2,0x196b000
017229b0  adrp x4,0x196b000
017229b4  add x1,x1,#0x904
017229b8  add x2,x2,#0xbb4
017229bc  add x4,x4,#0xbbc
017229c0  add x0,sp,#0x10
017229c4  mov x3,xzr
017229c8  mov x5,xzr
017229cc  bl 0x0196b9cc
017229d0  mov x19,x0
017229d4  ldr x0,[x19]
017229d8  mov w1,#0x10
017229dc  bl 0x0124cba0
017229e0  adrp x8,0x196b000
017229e4  dup v0.2D,xzr
017229e8  add x8,x8,#0xbc4
017229ec  mov v0.D[0x0],x8
017229f0  str q0,[x0]
017229f4  ldr x0,[x19]
017229f8  adrp x1,0x196c000
017229fc  add x1,x1,#0x300
01722a00  mov w2,#0x1
01722a04  bl 0x0124ec90
01722a08  ldr x0,[x19]
01722a0c  mov w1,#0xffffffff
01722a10  bl 0x0124c0c0
01722a14  ldr x20,[x19]
01722a18  orr w1,wzr,#0xfffffffb
01722a1c  mov w2,#0x6e7
01722a20  mov x0,x20
01722a24  bl 0x0124a650
01722a28  orr w1,wzr,#0xfffffffe
01722a2c  mov x0,x20
01722a30  bl 0x0124c0c0
01722a34  orr w1,wzr,#0xfffffffe
01722a38  mov x0,x20
01722a3c  bl 0x0124e920
01722a40  mov w21,w0
01722a44  adrp x1,0x5769000
01722a48  add x1,x1,#0xf14
01722a4c  mov x0,x20
01722a50  bl 0x0124f120
01722a54  orr w1,wzr,#0xfffffffe
01722a58  mov w2,#0x1
01722a5c  mov x0,x20
01722a60  bl 0x0124cfc0
01722a64  mov x0,x20
01722a68  mov w1,w21
01722a6c  bl 0x0124e060
01722a70  orr w1,wzr,#0xfffffffd
01722a74  mov x0,x20
01722a78  bl 0x0124c4d0
01722a7c  ldr x20,[x19]
01722a80  orr w1,wzr,#0xfffffffd
01722a84  mov w2,#0x6e7
01722a88  mov x0,x20
01722a8c  bl 0x0124a650
01722a90  orr w1,wzr,#0xfffffffe
01722a94  mov x0,x20
01722a98  bl 0x0124c0c0
01722a9c  orr w1,wzr,#0xfffffffe
01722aa0  mov x0,x20
01722aa4  bl 0x0124e920
01722aa8  mov w21,w0
01722aac  adrp x1,0x5769000
01722ab0  add x1,x1,#0xf14
01722ab4  mov x0,x20
01722ab8  bl 0x0124f120
01722abc  orr w1,wzr,#0xfffffffe
01722ac0  mov w2,#0x1
01722ac4  mov x0,x20
01722ac8  bl 0x0124cfc0
01722acc  mov x0,x20
01722ad0  mov w1,w21
01722ad4  bl 0x0124e060
01722ad8  orr w1,wzr,#0xfffffffd
01722adc  mov x0,x20
01722ae0  bl 0x0124c4d0
01722ae4  ldr w8,[x19, #0x8]
01722ae8  ldr x0,[x19]
01722aec  sub w8,w8,#0x3
01722af0  str w8,[x19, #0x8]
01722af4  orr w1,wzr,#0xfffffffc
01722af8  bl 0x0124c4d0
01722afc  ldr w8,[x19, #0x8]
01722b00  ldr x0,[x19]
01722b04  str wzr,[x19, #0x8]
01722b08  cmp w8,#0x1
01722b0c  b.lt 0x01722b18
01722b10  mvn w1,w8
01722b14  bl 0x0124c4d0
01722b18  ldr w8,[sp, #0x18]
01722b1c  cmp w8,#0x1
01722b20  b.lt 0x01722b30
01722b24  ldr x0,[sp, #0x10]
01722b28  mvn w1,w8
01722b2c  bl 0x0124c4d0
01722b30  ldr w8,[sp, #0x8]
01722b34  cmp w8,#0x1
01722b38  b.lt 0x01722b48
01722b3c  ldr x0,[sp]
01722b40  mvn w1,w8
01722b44  bl 0x0124c4d0
01722b48  ldp x29,x30,[sp, #0x40]
01722b4c  ldp x20,x19,[sp, #0x30]
01722b50  ldr x21,[sp, #0x20]
01722b54  add sp,sp,#0x50
01722b58  ret
