// ===== case575-MapInfoPointData @ 01702858 =====
// existing function case575-MapInfoPointData
01702858  sub sp,sp,#0x40
0170285c  stp x20,x19,[sp, #0x20]
01702860  stp x29,x30,[sp, #0x30]
01702864  add x29,sp,#0x30
01702868  adrp x1,0x174a000
0170286c  add x1,x1,#0x87c
01702870  mov x19,x0
01702874  bl 0x0124ba40
01702878  adrp x1,0x575d000
0170287c  add x1,x1,#0xa06
01702880  mov x0,x19
01702884  str x19,[sp]
01702888  bl 0x01251aa0
0170288c  mov w8,#0x1
01702890  str w8,[sp, #0x8]
01702894  mov x0,sp
01702898  bl 0x0174aa04
0170289c  adrp x1,0x5769000
017028a0  adrp x3,0x736d000
017028a4  add x1,x1,#0xf03
017028a8  add x3,x3,#0x101
017028ac  add x0,sp,#0x10
017028b0  mov x2,sp
017028b4  bl 0x018e3750
017028b8  ldr x0,[sp, #0x10]
017028bc  mov w1,#0x10
017028c0  bl 0x0124cba0
017028c4  adrp x8,0x18e3000
017028c8  dup v0.2D,xzr
017028cc  add x8,x8,#0x738
017028d0  mov v0.D[0x0],x8
017028d4  str q0,[x0]
017028d8  ldr x0,[sp, #0x10]
017028dc  adrp x1,0x18e3000
017028e0  add x1,x1,#0xb14
017028e4  mov w2,#0x1
017028e8  bl 0x0124ec90
017028ec  ldr x0,[sp, #0x10]
017028f0  mov w1,#0xffffffff
017028f4  bl 0x0124c0c0
017028f8  ldr x19,[sp, #0x10]
017028fc  orr w1,wzr,#0xfffffffb
01702900  mov w2,#0x6e7
01702904  mov x0,x19
01702908  bl 0x0124a650
0170290c  orr w1,wzr,#0xfffffffe
01702910  mov x0,x19
01702914  bl 0x0124c0c0
01702918  orr w1,wzr,#0xfffffffe
0170291c  mov x0,x19
01702920  bl 0x0124e920
01702924  mov w20,w0
01702928  adrp x1,0x5769000
0170292c  add x1,x1,#0xf14
01702930  mov x0,x19
01702934  bl 0x0124f120
01702938  orr w1,wzr,#0xfffffffe
0170293c  mov w2,#0x1
01702940  mov x0,x19
01702944  bl 0x0124cfc0
01702948  mov x0,x19
0170294c  mov w1,w20
01702950  bl 0x0124e060
01702954  orr w1,wzr,#0xfffffffd
01702958  mov x0,x19
0170295c  bl 0x0124c4d0
01702960  ldr x19,[sp, #0x10]
01702964  orr w1,wzr,#0xfffffffd
01702968  mov w2,#0x6e7
0170296c  mov x0,x19
01702970  bl 0x0124a650
01702974  orr w1,wzr,#0xfffffffe
01702978  mov x0,x19
0170297c  bl 0x0124c0c0
01702980  orr w1,wzr,#0xfffffffe
01702984  mov x0,x19
01702988  bl 0x0124e920
0170298c  mov w20,w0
01702990  adrp x1,0x5769000
01702994  add x1,x1,#0xf14
01702998  mov x0,x19
0170299c  bl 0x0124f120
017029a0  orr w1,wzr,#0xfffffffe
017029a4  mov w2,#0x1
017029a8  mov x0,x19
017029ac  bl 0x0124cfc0
017029b0  mov x0,x19
017029b4  mov w1,w20
017029b8  bl 0x0124e060
017029bc  orr w1,wzr,#0xfffffffd
017029c0  mov x0,x19
017029c4  bl 0x0124c4d0
017029c8  ldr x0,[sp, #0x10]
017029cc  mov w1,#0x10
017029d0  bl 0x0124cba0
017029d4  adrp x8,0x18e3000
017029d8  dup v0.2D,xzr
017029dc  add x8,x8,#0x740
017029e0  mov v0.D[0x0],x8
017029e4  str q0,[x0]
017029e8  ldr x0,[sp, #0x10]
017029ec  adrp x1,0x18e3000
017029f0  add x1,x1,#0xc38
017029f4  mov w2,#0x1
017029f8  bl 0x0124ec90
017029fc  ldr x0,[sp, #0x10]
01702a00  mov w1,#0xffffffff
01702a04  bl 0x0124c0c0
01702a08  ldr x19,[sp, #0x10]
01702a0c  orr w1,wzr,#0xfffffffb
01702a10  mov w2,#0x6e7
01702a14  mov x0,x19
01702a18  bl 0x0124a650
01702a1c  orr w1,wzr,#0xfffffffe
01702a20  mov x0,x19
01702a24  bl 0x0124c0c0
01702a28  orr w1,wzr,#0xfffffffe
01702a2c  mov x0,x19
01702a30  bl 0x0124e920
01702a34  mov w20,w0
01702a38  adrp x1,0x5769000
01702a3c  add x1,x1,#0xf1b
01702a40  mov x0,x19
01702a44  bl 0x0124f120
01702a48  orr w1,wzr,#0xfffffffe
01702a4c  mov w2,#0x1
01702a50  mov x0,x19
01702a54  bl 0x0124cfc0
01702a58  mov x0,x19
01702a5c  mov w1,w20
01702a60  bl 0x0124e060
01702a64  orr w1,wzr,#0xfffffffd
01702a68  mov x0,x19
01702a6c  bl 0x0124c4d0
01702a70  ldr x19,[sp, #0x10]
01702a74  orr w1,wzr,#0xfffffffd
01702a78  mov w2,#0x6e7
01702a7c  mov x0,x19
01702a80  bl 0x0124a650
01702a84  orr w1,wzr,#0xfffffffe
01702a88  mov x0,x19
01702a8c  bl 0x0124c0c0
01702a90  orr w1,wzr,#0xfffffffe
01702a94  mov x0,x19
01702a98  bl 0x0124e920
01702a9c  mov w20,w0
01702aa0  adrp x1,0x5769000
01702aa4  add x1,x1,#0xf1b
01702aa8  mov x0,x19
01702aac  bl 0x0124f120
01702ab0  orr w1,wzr,#0xfffffffe
01702ab4  mov w2,#0x1
01702ab8  mov x0,x19
01702abc  bl 0x0124cfc0
01702ac0  mov x0,x19
01702ac4  mov w1,w20
01702ac8  bl 0x0124e060
01702acc  orr w1,wzr,#0xfffffffd
01702ad0  mov x0,x19
01702ad4  bl 0x0124c4d0
01702ad8  ldr x0,[sp, #0x10]
01702adc  mov w1,#0x10
01702ae0  bl 0x0124cba0
01702ae4  adrp x8,0x18e3000
01702ae8  dup v0.2D,xzr
01702aec  add x8,x8,#0x748
01702af0  mov v0.D[0x0],x8
01702af4  str q0,[x0]
01702af8  ldr x0,[sp, #0x10]
01702afc  adrp x1,0x18e3000
01702b00  add x1,x1,#0xd5c
01702b04  mov w2,#0x1
01702b08  bl 0x0124ec90
01702b0c  ldr x0,[sp, #0x10]
01702b10  mov w1,#0xffffffff
01702b14  bl 0x0124c0c0
01702b18  ldr x19,[sp, #0x10]
01702b1c  orr w1,wzr,#0xfffffffb
01702b20  mov w2,#0x6e7
01702b24  mov x0,x19
01702b28  bl 0x0124a650
01702b2c  orr w1,wzr,#0xfffffffe
01702b30  mov x0,x19
01702b34  bl 0x0124c0c0
01702b38  orr w1,wzr,#0xfffffffe
01702b3c  mov x0,x19
01702b40  bl 0x0124e920
01702b44  mov w20,w0
01702b48  adrp x1,0x5769000
01702b4c  add x1,x1,#0xf25
01702b50  mov x0,x19
01702b54  bl 0x0124f120
01702b58  orr w1,wzr,#0xfffffffe
01702b5c  mov w2,#0x1
01702b60  mov x0,x19
01702b64  bl 0x0124cfc0
01702b68  mov x0,x19
01702b6c  mov w1,w20
01702b70  bl 0x0124e060
01702b74  orr w1,wzr,#0xfffffffd
01702b78  mov x0,x19
01702b7c  bl 0x0124c4d0
01702b80  ldr x19,[sp, #0x10]
01702b84  orr w1,wzr,#0xfffffffd
01702b88  mov w2,#0x6e7
01702b8c  mov x0,x19
01702b90  bl 0x0124a650
01702b94  orr w1,wzr,#0xfffffffe
01702b98  mov x0,x19
01702b9c  bl 0x0124c0c0
01702ba0  orr w1,wzr,#0xfffffffe
01702ba4  mov x0,x19
01702ba8  bl 0x0124e920
01702bac  mov w20,w0
01702bb0  adrp x1,0x5769000
01702bb4  add x1,x1,#0xf25
01702bb8  mov x0,x19
01702bbc  bl 0x0124f120
01702bc0  orr w1,wzr,#0xfffffffe
01702bc4  mov w2,#0x1
01702bc8  mov x0,x19
01702bcc  bl 0x0124cfc0
01702bd0  mov x0,x19
01702bd4  mov w1,w20
01702bd8  bl 0x0124e060
01702bdc  orr w1,wzr,#0xfffffffd
01702be0  mov x0,x19
01702be4  bl 0x0124c4d0
01702be8  ldr w8,[sp, #0x18]
01702bec  ldr x0,[sp, #0x10]
01702bf0  sub w8,w8,#0x3
01702bf4  str w8,[sp, #0x18]
01702bf8  orr w1,wzr,#0xfffffffc
01702bfc  bl 0x0124c4d0
01702c00  ldr w8,[sp, #0x18]
01702c04  ldr x0,[sp, #0x10]
01702c08  str wzr,[sp, #0x18]
01702c0c  cmp w8,#0x1
01702c10  b.lt 0x01702c34
01702c14  mvn w1,w8
01702c18  bl 0x0124c4d0
01702c1c  ldr w8,[sp, #0x18]
01702c20  cmp w8,#0x1
01702c24  b.lt 0x01702c34
01702c28  ldr x0,[sp, #0x10]
01702c2c  mvn w1,w8
01702c30  bl 0x0124c4d0
01702c34  ldr w8,[sp, #0x8]
01702c38  cmp w8,#0x1
01702c3c  b.lt 0x01702c4c
01702c40  ldr x0,[sp]
01702c44  mvn w1,w8
01702c48  bl 0x0124c4d0
01702c4c  ldp x29,x30,[sp, #0x30]
01702c50  ldp x20,x19,[sp, #0x20]
01702c54  add sp,sp,#0x40
01702c58  ret
