// ===== case205-SkillGemSchemeResObject @ 016afd68 =====
// existing function case205-SkillGemSchemeResObject
016afd68  sub sp,sp,#0x40
016afd6c  stp x20,x19,[sp, #0x20]
016afd70  stp x29,x30,[sp, #0x30]
016afd74  add x29,sp,#0x30
016afd78  adrp x1,0x174a000
016afd7c  add x1,x1,#0x87c
016afd80  mov x19,x0
016afd84  bl 0x0124ba40
016afd88  adrp x1,0x575d000
016afd8c  add x1,x1,#0xa06
016afd90  mov x0,x19
016afd94  str x19,[sp]
016afd98  bl 0x01251aa0
016afd9c  mov w8,#0x1
016afda0  str w8,[sp, #0x8]
016afda4  mov x0,sp
016afda8  bl 0x0174aa04
016afdac  adrp x1,0x5760000
016afdb0  adrp x3,0x736d000
016afdb4  add x1,x1,#0xe3a
016afdb8  add x3,x3,#0x101
016afdbc  add x0,sp,#0x10
016afdc0  mov x2,sp
016afdc4  bl 0x017bd660
016afdc8  ldr x0,[sp, #0x10]
016afdcc  mov w1,#0x10
016afdd0  bl 0x0124cba0
016afdd4  adrp x8,0x17bd000
016afdd8  dup v0.2D,xzr
016afddc  add x8,x8,#0x650
016afde0  mov v0.D[0x0],x8
016afde4  str q0,[x0]
016afde8  ldr x0,[sp, #0x10]
016afdec  adrp x1,0x17bd000
016afdf0  add x1,x1,#0xa24
016afdf4  mov w2,#0x1
016afdf8  bl 0x0124ec90
016afdfc  ldr x0,[sp, #0x10]
016afe00  mov w1,#0xffffffff
016afe04  bl 0x0124c0c0
016afe08  ldr x19,[sp, #0x10]
016afe0c  orr w1,wzr,#0xfffffffb
016afe10  mov w2,#0x6e7
016afe14  mov x0,x19
016afe18  bl 0x0124a650
016afe1c  orr w1,wzr,#0xfffffffe
016afe20  mov x0,x19
016afe24  bl 0x0124c0c0
016afe28  orr w1,wzr,#0xfffffffe
016afe2c  mov x0,x19
016afe30  bl 0x0124e920
016afe34  mov w20,w0
016afe38  adrp x1,0x575e000
016afe3c  add x1,x1,#0x56d
016afe40  mov x0,x19
016afe44  bl 0x0124f120
016afe48  orr w1,wzr,#0xfffffffe
016afe4c  mov w2,#0x1
016afe50  mov x0,x19
016afe54  bl 0x0124cfc0
016afe58  mov x0,x19
016afe5c  mov w1,w20
016afe60  bl 0x0124e060
016afe64  orr w1,wzr,#0xfffffffd
016afe68  mov x0,x19
016afe6c  bl 0x0124c4d0
016afe70  ldr x19,[sp, #0x10]
016afe74  orr w1,wzr,#0xfffffffd
016afe78  mov w2,#0x6e7
016afe7c  mov x0,x19
016afe80  bl 0x0124a650
016afe84  orr w1,wzr,#0xfffffffe
016afe88  mov x0,x19
016afe8c  bl 0x0124c0c0
016afe90  orr w1,wzr,#0xfffffffe
016afe94  mov x0,x19
016afe98  bl 0x0124e920
016afe9c  mov w20,w0
016afea0  adrp x1,0x575e000
016afea4  add x1,x1,#0x56d
016afea8  mov x0,x19
016afeac  bl 0x0124f120
016afeb0  orr w1,wzr,#0xfffffffe
016afeb4  mov w2,#0x1
016afeb8  mov x0,x19
016afebc  bl 0x0124cfc0
016afec0  mov x0,x19
016afec4  mov w1,w20
016afec8  bl 0x0124e060
016afecc  orr w1,wzr,#0xfffffffd
016afed0  mov x0,x19
016afed4  bl 0x0124c4d0
016afed8  ldr x0,[sp, #0x10]
016afedc  mov w1,#0x10
016afee0  bl 0x0124cba0
016afee4  adrp x8,0x17bd000
016afee8  dup v0.2D,xzr
016afeec  add x8,x8,#0x658
016afef0  mov v0.D[0x0],x8
016afef4  str q0,[x0]
016afef8  ldr x0,[sp, #0x10]
016afefc  adrp x1,0x17bd000
016aff00  add x1,x1,#0xb48
016aff04  mov w2,#0x1
016aff08  bl 0x0124ec90
016aff0c  ldr x0,[sp, #0x10]
016aff10  mov w1,#0xffffffff
016aff14  bl 0x0124c0c0
016aff18  ldr x19,[sp, #0x10]
016aff1c  orr w1,wzr,#0xfffffffb
016aff20  mov w2,#0x6e7
016aff24  mov x0,x19
016aff28  bl 0x0124a650
016aff2c  orr w1,wzr,#0xfffffffe
016aff30  mov x0,x19
016aff34  bl 0x0124c0c0
016aff38  orr w1,wzr,#0xfffffffe
016aff3c  mov x0,x19
016aff40  bl 0x0124e920
016aff44  mov w20,w0
016aff48  adrp x1,0x575e000
016aff4c  add x1,x1,#0x578
016aff50  mov x0,x19
016aff54  bl 0x0124f120
016aff58  orr w1,wzr,#0xfffffffe
016aff5c  mov w2,#0x1
016aff60  mov x0,x19
016aff64  bl 0x0124cfc0
016aff68  mov x0,x19
016aff6c  mov w1,w20
016aff70  bl 0x0124e060
016aff74  orr w1,wzr,#0xfffffffd
016aff78  mov x0,x19
016aff7c  bl 0x0124c4d0
016aff80  ldr x19,[sp, #0x10]
016aff84  orr w1,wzr,#0xfffffffd
016aff88  mov w2,#0x6e7
016aff8c  mov x0,x19
016aff90  bl 0x0124a650
016aff94  orr w1,wzr,#0xfffffffe
016aff98  mov x0,x19
016aff9c  bl 0x0124c0c0
016affa0  orr w1,wzr,#0xfffffffe
016affa4  mov x0,x19
016affa8  bl 0x0124e920
016affac  mov w20,w0
016affb0  adrp x1,0x575e000
016affb4  add x1,x1,#0x578
016affb8  mov x0,x19
016affbc  bl 0x0124f120
016affc0  orr w1,wzr,#0xfffffffe
016affc4  mov w2,#0x1
016affc8  mov x0,x19
016affcc  bl 0x0124cfc0
016affd0  mov x0,x19
016affd4  mov w1,w20
016affd8  bl 0x0124e060
016affdc  orr w1,wzr,#0xfffffffd
016affe0  mov x0,x19
016affe4  bl 0x0124c4d0
016affe8  ldr w8,[sp, #0x18]
016affec  ldr x0,[sp, #0x10]
016afff0  sub w8,w8,#0x3
016afff4  str w8,[sp, #0x18]
016afff8  orr w1,wzr,#0xfffffffc
016afffc  bl 0x0124c4d0
016b0000  ldr w8,[sp, #0x18]
016b0004  ldr x0,[sp, #0x10]
016b0008  str wzr,[sp, #0x18]
016b000c  cmp w8,#0x1
016b0010  b.lt 0x016b0034
016b0014  mvn w1,w8
016b0018  bl 0x0124c4d0
016b001c  ldr w8,[sp, #0x18]
016b0020  cmp w8,#0x1
016b0024  b.lt 0x016b0034
016b0028  ldr x0,[sp, #0x10]
016b002c  mvn w1,w8
016b0030  bl 0x0124c4d0
016b0034  ldr w8,[sp, #0x8]
016b0038  cmp w8,#0x1
016b003c  b.lt 0x016b004c
016b0040  ldr x0,[sp]
016b0044  mvn w1,w8
016b0048  bl 0x0124c4d0
016b004c  ldp x29,x30,[sp, #0x30]
016b0050  ldp x20,x19,[sp, #0x20]
016b0054  add sp,sp,#0x40
016b0058  ret
