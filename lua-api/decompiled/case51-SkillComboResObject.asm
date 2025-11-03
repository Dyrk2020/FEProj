// ===== case51-SkillComboResObject @ 01694810 =====
// existing function case51-SkillComboResObject
01694810  sub sp,sp,#0x40
01694814  stp x20,x19,[sp, #0x20]
01694818  stp x29,x30,[sp, #0x30]
0169481c  add x29,sp,#0x30
01694820  adrp x1,0x174a000
01694824  add x1,x1,#0x87c
01694828  mov x19,x0
0169482c  bl 0x0124ba40
01694830  adrp x1,0x575d000
01694834  add x1,x1,#0xa06
01694838  mov x0,x19
0169483c  str x19,[sp]
01694840  bl 0x01251aa0
01694844  mov w8,#0x1
01694848  str w8,[sp, #0x8]
0169484c  mov x0,sp
01694850  bl 0x0174aa04
01694854  adrp x1,0x575e000
01694858  adrp x3,0x736d000
0169485c  add x1,x1,#0x556
01694860  add x3,x3,#0x101
01694864  add x0,sp,#0x10
01694868  mov x2,sp
0169486c  bl 0x0176af04
01694870  ldr x0,[sp, #0x10]
01694874  mov w1,#0x10
01694878  bl 0x0124cba0
0169487c  adrp x8,0x176a000
01694880  dup v0.2D,xzr
01694884  add x8,x8,#0xef4
01694888  mov v0.D[0x0],x8
0169488c  str q0,[x0]
01694890  ldr x0,[sp, #0x10]
01694894  adrp x1,0x176b000
01694898  add x1,x1,#0x2c8
0169489c  mov w2,#0x1
016948a0  bl 0x0124ec90
016948a4  ldr x0,[sp, #0x10]
016948a8  mov w1,#0xffffffff
016948ac  bl 0x0124c0c0
016948b0  ldr x19,[sp, #0x10]
016948b4  orr w1,wzr,#0xfffffffb
016948b8  mov w2,#0x6e7
016948bc  mov x0,x19
016948c0  bl 0x0124a650
016948c4  orr w1,wzr,#0xfffffffe
016948c8  mov x0,x19
016948cc  bl 0x0124c0c0
016948d0  orr w1,wzr,#0xfffffffe
016948d4  mov x0,x19
016948d8  bl 0x0124e920
016948dc  mov w20,w0
016948e0  adrp x1,0x575e000
016948e4  add x1,x1,#0x56d
016948e8  mov x0,x19
016948ec  bl 0x0124f120
016948f0  orr w1,wzr,#0xfffffffe
016948f4  mov w2,#0x1
016948f8  mov x0,x19
016948fc  bl 0x0124cfc0
01694900  mov x0,x19
01694904  mov w1,w20
01694908  bl 0x0124e060
0169490c  orr w1,wzr,#0xfffffffd
01694910  mov x0,x19
01694914  bl 0x0124c4d0
01694918  ldr x19,[sp, #0x10]
0169491c  orr w1,wzr,#0xfffffffd
01694920  mov w2,#0x6e7
01694924  mov x0,x19
01694928  bl 0x0124a650
0169492c  orr w1,wzr,#0xfffffffe
01694930  mov x0,x19
01694934  bl 0x0124c0c0
01694938  orr w1,wzr,#0xfffffffe
0169493c  mov x0,x19
01694940  bl 0x0124e920
01694944  mov w20,w0
01694948  adrp x1,0x575e000
0169494c  add x1,x1,#0x56d
01694950  mov x0,x19
01694954  bl 0x0124f120
01694958  orr w1,wzr,#0xfffffffe
0169495c  mov w2,#0x1
01694960  mov x0,x19
01694964  bl 0x0124cfc0
01694968  mov x0,x19
0169496c  mov w1,w20
01694970  bl 0x0124e060
01694974  orr w1,wzr,#0xfffffffd
01694978  mov x0,x19
0169497c  bl 0x0124c4d0
01694980  ldr x0,[sp, #0x10]
01694984  mov w1,#0x10
01694988  bl 0x0124cba0
0169498c  adrp x8,0x176a000
01694990  dup v0.2D,xzr
01694994  add x8,x8,#0xefc
01694998  mov v0.D[0x0],x8
0169499c  str q0,[x0]
016949a0  ldr x0,[sp, #0x10]
016949a4  adrp x1,0x176b000
016949a8  add x1,x1,#0x3ec
016949ac  mov w2,#0x1
016949b0  bl 0x0124ec90
016949b4  ldr x0,[sp, #0x10]
016949b8  mov w1,#0xffffffff
016949bc  bl 0x0124c0c0
016949c0  ldr x19,[sp, #0x10]
016949c4  orr w1,wzr,#0xfffffffb
016949c8  mov w2,#0x6e7
016949cc  mov x0,x19
016949d0  bl 0x0124a650
016949d4  orr w1,wzr,#0xfffffffe
016949d8  mov x0,x19
016949dc  bl 0x0124c0c0
016949e0  orr w1,wzr,#0xfffffffe
016949e4  mov x0,x19
016949e8  bl 0x0124e920
016949ec  mov w20,w0
016949f0  adrp x1,0x575e000
016949f4  add x1,x1,#0x578
016949f8  mov x0,x19
016949fc  bl 0x0124f120
01694a00  orr w1,wzr,#0xfffffffe
01694a04  mov w2,#0x1
01694a08  mov x0,x19
01694a0c  bl 0x0124cfc0
01694a10  mov x0,x19
01694a14  mov w1,w20
01694a18  bl 0x0124e060
01694a1c  orr w1,wzr,#0xfffffffd
01694a20  mov x0,x19
01694a24  bl 0x0124c4d0
01694a28  ldr x19,[sp, #0x10]
01694a2c  orr w1,wzr,#0xfffffffd
01694a30  mov w2,#0x6e7
01694a34  mov x0,x19
01694a38  bl 0x0124a650
01694a3c  orr w1,wzr,#0xfffffffe
01694a40  mov x0,x19
01694a44  bl 0x0124c0c0
01694a48  orr w1,wzr,#0xfffffffe
01694a4c  mov x0,x19
01694a50  bl 0x0124e920
01694a54  mov w20,w0
01694a58  adrp x1,0x575e000
01694a5c  add x1,x1,#0x578
01694a60  mov x0,x19
01694a64  bl 0x0124f120
01694a68  orr w1,wzr,#0xfffffffe
01694a6c  mov w2,#0x1
01694a70  mov x0,x19
01694a74  bl 0x0124cfc0
01694a78  mov x0,x19
01694a7c  mov w1,w20
01694a80  bl 0x0124e060
01694a84  orr w1,wzr,#0xfffffffd
01694a88  mov x0,x19
01694a8c  bl 0x0124c4d0
01694a90  ldr w8,[sp, #0x18]
01694a94  ldr x0,[sp, #0x10]
01694a98  sub w8,w8,#0x3
01694a9c  str w8,[sp, #0x18]
01694aa0  orr w1,wzr,#0xfffffffc
01694aa4  bl 0x0124c4d0
01694aa8  ldr w8,[sp, #0x18]
01694aac  ldr x0,[sp, #0x10]
01694ab0  str wzr,[sp, #0x18]
01694ab4  cmp w8,#0x1
01694ab8  b.lt 0x01694adc
01694abc  mvn w1,w8
01694ac0  bl 0x0124c4d0
01694ac4  ldr w8,[sp, #0x18]
01694ac8  cmp w8,#0x1
01694acc  b.lt 0x01694adc
01694ad0  ldr x0,[sp, #0x10]
01694ad4  mvn w1,w8
01694ad8  bl 0x0124c4d0
01694adc  ldr w8,[sp, #0x8]
01694ae0  cmp w8,#0x1
01694ae4  b.lt 0x01694af4
01694ae8  ldr x0,[sp]
01694aec  mvn w1,w8
01694af0  bl 0x0124c4d0
01694af4  ldp x29,x30,[sp, #0x30]
01694af8  ldp x20,x19,[sp, #0x20]
01694afc  add sp,sp,#0x40
01694b00  ret
