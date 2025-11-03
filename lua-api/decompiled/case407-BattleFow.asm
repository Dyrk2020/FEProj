// ===== case407-BattleFow @ 016e2760 =====
// existing function case407-BattleFow
016e2760  sub sp,sp,#0x40
016e2764  str x19,[sp, #0x20]
016e2768  stp x29,x30,[sp, #0x30]
016e276c  add x29,sp,#0x30
016e2770  adrp x1,0x174a000
016e2774  add x1,x1,#0x87c
016e2778  mov x19,x0
016e277c  bl 0x0124ba40
016e2780  adrp x1,0x575d000
016e2784  add x1,x1,#0xa06
016e2788  mov x0,x19
016e278c  str x19,[sp]
016e2790  bl 0x01251aa0
016e2794  mov w8,#0x1
016e2798  str w8,[sp, #0x8]
016e279c  mov x0,sp
016e27a0  bl 0x0174aa04
016e27a4  adrp x1,0x5766000
016e27a8  adrp x3,0x736d000
016e27ac  add x1,x1,#0x1c
016e27b0  add x3,x3,#0x101
016e27b4  add x0,sp,#0x10
016e27b8  mov x2,sp
016e27bc  bl 0x0185184c
016e27c0  adrp x1,0x5760000
016e27c4  adrp x2,0x1851000
016e27c8  adrp x4,0x1851000
016e27cc  add x1,x1,#0xf82
016e27d0  add x2,x2,#0x684
016e27d4  add x4,x4,#0x68c
016e27d8  add x0,sp,#0x10
016e27dc  mov x3,xzr
016e27e0  mov x5,xzr
016e27e4  bl 0x0185149c
016e27e8  adrp x1,0x5766000
016e27ec  adrp x2,0x1851000
016e27f0  adrp x4,0x1851000
016e27f4  add x1,x1,#0x26
016e27f8  add x2,x2,#0x71c
016e27fc  add x4,x4,#0x724
016e2800  mov x3,xzr
016e2804  mov x5,xzr
016e2808  bl 0x0185149c
016e280c  adrp x1,0x5766000
016e2810  adrp x2,0x1851000
016e2814  adrp x4,0x1851000
016e2818  add x1,x1,#0x3b
016e281c  add x2,x2,#0x7b4
016e2820  add x4,x4,#0x7bc
016e2824  mov x3,xzr
016e2828  mov x5,xzr
016e282c  bl 0x0185149c
016e2830  mov x19,x0
016e2834  ldr w8,[x19, #0x8]
016e2838  ldr x0,[x19]
016e283c  sub w8,w8,#0x3
016e2840  str w8,[x19, #0x8]
016e2844  orr w1,wzr,#0xfffffffc
016e2848  bl 0x0124c4d0
016e284c  ldr w8,[x19, #0x8]
016e2850  ldr x0,[x19]
016e2854  str wzr,[x19, #0x8]
016e2858  cmp w8,#0x1
016e285c  b.lt 0x016e2868
016e2860  mvn w1,w8
016e2864  bl 0x0124c4d0
016e2868  ldr w8,[sp, #0x18]
016e286c  cmp w8,#0x1
016e2870  b.lt 0x016e2880
016e2874  ldr x0,[sp, #0x10]
016e2878  mvn w1,w8
016e287c  bl 0x0124c4d0
016e2880  ldr w8,[sp, #0x8]
016e2884  cmp w8,#0x1
016e2888  b.lt 0x016e2898
016e288c  ldr x0,[sp]
016e2890  mvn w1,w8
016e2894  bl 0x0124c4d0
016e2898  ldp x29,x30,[sp, #0x30]
016e289c  ldr x19,[sp, #0x20]
016e28a0  add sp,sp,#0x40
016e28a4  ret
