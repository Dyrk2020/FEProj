// ===== case74-MonsterBehaviorGroupResObject @ 016988e0 =====
// existing function case74-MonsterBehaviorGroupResObject
016988e0  sub sp,sp,#0x40
016988e4  stp x20,x19,[sp, #0x20]
016988e8  stp x29,x30,[sp, #0x30]
016988ec  add x29,sp,#0x30
016988f0  adrp x1,0x174a000
016988f4  add x1,x1,#0x87c
016988f8  mov x19,x0
016988fc  bl 0x0124ba40
01698900  adrp x1,0x575d000
01698904  add x1,x1,#0xa06
01698908  mov x0,x19
0169890c  str x19,[sp]
01698910  bl 0x01251aa0
01698914  mov w8,#0x1
01698918  str w8,[sp, #0x8]
0169891c  mov x0,sp
01698920  bl 0x0174aa04
01698924  adrp x1,0x575e000
01698928  adrp x3,0x736d000
0169892c  add x1,x1,#0xd81
01698930  add x3,x3,#0x101
01698934  add x0,sp,#0x10
01698938  mov x2,sp
0169893c  bl 0x01778e68
01698940  ldr x0,[sp, #0x10]
01698944  mov w1,#0x10
01698948  bl 0x0124cba0
0169894c  adrp x8,0x1778000
01698950  dup v0.2D,xzr
01698954  add x8,x8,#0xe58
01698958  mov v0.D[0x0],x8
0169895c  str q0,[x0]
01698960  ldr x0,[sp, #0x10]
01698964  adrp x1,0x1779000
01698968  add x1,x1,#0x22c
0169896c  mov w2,#0x1
01698970  bl 0x0124ec90
01698974  ldr x0,[sp, #0x10]
01698978  mov w1,#0xffffffff
0169897c  bl 0x0124c0c0
01698980  ldr x19,[sp, #0x10]
01698984  orr w1,wzr,#0xfffffffb
01698988  mov w2,#0x6e7
0169898c  mov x0,x19
01698990  bl 0x0124a650
01698994  orr w1,wzr,#0xfffffffe
01698998  mov x0,x19
0169899c  bl 0x0124c0c0
016989a0  orr w1,wzr,#0xfffffffe
016989a4  mov x0,x19
016989a8  bl 0x0124e920
016989ac  mov w20,w0
016989b0  adrp x1,0x575e000
016989b4  add x1,x1,#0x56d
016989b8  mov x0,x19
016989bc  bl 0x0124f120
016989c0  orr w1,wzr,#0xfffffffe
016989c4  mov w2,#0x1
016989c8  mov x0,x19
016989cc  bl 0x0124cfc0
016989d0  mov x0,x19
016989d4  mov w1,w20
016989d8  bl 0x0124e060
016989dc  orr w1,wzr,#0xfffffffd
016989e0  mov x0,x19
016989e4  bl 0x0124c4d0
016989e8  ldr x19,[sp, #0x10]
016989ec  orr w1,wzr,#0xfffffffd
016989f0  mov w2,#0x6e7
016989f4  mov x0,x19
016989f8  bl 0x0124a650
016989fc  orr w1,wzr,#0xfffffffe
01698a00  mov x0,x19
01698a04  bl 0x0124c0c0
01698a08  orr w1,wzr,#0xfffffffe
01698a0c  mov x0,x19
01698a10  bl 0x0124e920
01698a14  mov w20,w0
01698a18  adrp x1,0x575e000
01698a1c  add x1,x1,#0x56d
01698a20  mov x0,x19
01698a24  bl 0x0124f120
01698a28  orr w1,wzr,#0xfffffffe
01698a2c  mov w2,#0x1
01698a30  mov x0,x19
01698a34  bl 0x0124cfc0
01698a38  mov x0,x19
01698a3c  mov w1,w20
01698a40  bl 0x0124e060
01698a44  orr w1,wzr,#0xfffffffd
01698a48  mov x0,x19
01698a4c  bl 0x0124c4d0
01698a50  ldr x0,[sp, #0x10]
01698a54  mov w1,#0x10
01698a58  bl 0x0124cba0
01698a5c  adrp x8,0x1778000
01698a60  dup v0.2D,xzr
01698a64  add x8,x8,#0xe60
01698a68  mov v0.D[0x0],x8
01698a6c  str q0,[x0]
01698a70  ldr x0,[sp, #0x10]
01698a74  adrp x1,0x1779000
01698a78  add x1,x1,#0x350
01698a7c  mov w2,#0x1
01698a80  bl 0x0124ec90
01698a84  ldr x0,[sp, #0x10]
01698a88  mov w1,#0xffffffff
01698a8c  bl 0x0124c0c0
01698a90  ldr x19,[sp, #0x10]
01698a94  orr w1,wzr,#0xfffffffb
01698a98  mov w2,#0x6e7
01698a9c  mov x0,x19
01698aa0  bl 0x0124a650
01698aa4  orr w1,wzr,#0xfffffffe
01698aa8  mov x0,x19
01698aac  bl 0x0124c0c0
01698ab0  orr w1,wzr,#0xfffffffe
01698ab4  mov x0,x19
01698ab8  bl 0x0124e920
01698abc  mov w20,w0
01698ac0  adrp x1,0x575e000
01698ac4  add x1,x1,#0x578
01698ac8  mov x0,x19
01698acc  bl 0x0124f120
01698ad0  orr w1,wzr,#0xfffffffe
01698ad4  mov w2,#0x1
01698ad8  mov x0,x19
01698adc  bl 0x0124cfc0
01698ae0  mov x0,x19
01698ae4  mov w1,w20
01698ae8  bl 0x0124e060
01698aec  orr w1,wzr,#0xfffffffd
01698af0  mov x0,x19
01698af4  bl 0x0124c4d0
01698af8  ldr x19,[sp, #0x10]
01698afc  orr w1,wzr,#0xfffffffd
01698b00  mov w2,#0x6e7
01698b04  mov x0,x19
01698b08  bl 0x0124a650
01698b0c  orr w1,wzr,#0xfffffffe
01698b10  mov x0,x19
01698b14  bl 0x0124c0c0
01698b18  orr w1,wzr,#0xfffffffe
01698b1c  mov x0,x19
01698b20  bl 0x0124e920
01698b24  mov w20,w0
01698b28  adrp x1,0x575e000
01698b2c  add x1,x1,#0x578
01698b30  mov x0,x19
01698b34  bl 0x0124f120
01698b38  orr w1,wzr,#0xfffffffe
01698b3c  mov w2,#0x1
01698b40  mov x0,x19
01698b44  bl 0x0124cfc0
01698b48  mov x0,x19
01698b4c  mov w1,w20
01698b50  bl 0x0124e060
01698b54  orr w1,wzr,#0xfffffffd
01698b58  mov x0,x19
01698b5c  bl 0x0124c4d0
01698b60  ldr w8,[sp, #0x18]
01698b64  ldr x0,[sp, #0x10]
01698b68  sub w8,w8,#0x3
01698b6c  str w8,[sp, #0x18]
01698b70  orr w1,wzr,#0xfffffffc
01698b74  bl 0x0124c4d0
01698b78  ldr w8,[sp, #0x18]
01698b7c  ldr x0,[sp, #0x10]
01698b80  str wzr,[sp, #0x18]
01698b84  cmp w8,#0x1
01698b88  b.lt 0x01698bac
01698b8c  mvn w1,w8
01698b90  bl 0x0124c4d0
01698b94  ldr w8,[sp, #0x18]
01698b98  cmp w8,#0x1
01698b9c  b.lt 0x01698bac
01698ba0  ldr x0,[sp, #0x10]
01698ba4  mvn w1,w8
01698ba8  bl 0x0124c4d0
01698bac  ldr w8,[sp, #0x8]
01698bb0  cmp w8,#0x1
01698bb4  b.lt 0x01698bc4
01698bb8  ldr x0,[sp]
01698bbc  mvn w1,w8
01698bc0  bl 0x0124c4d0
01698bc4  ldp x29,x30,[sp, #0x30]
01698bc8  ldp x20,x19,[sp, #0x20]
01698bcc  add sp,sp,#0x40
01698bd0  ret
