// ===== case344-DataCollectHook @ 016cfee0 =====
// existing function case344-DataCollectHook
016cfee0  sub sp,sp,#0x40
016cfee4  stp x20,x19,[sp, #0x20]
016cfee8  stp x29,x30,[sp, #0x30]
016cfeec  add x29,sp,#0x30
016cfef0  adrp x1,0x174a000
016cfef4  add x1,x1,#0x87c
016cfef8  mov x19,x0
016cfefc  bl 0x0124ba40
016cff00  adrp x1,0x575d000
016cff04  add x1,x1,#0xa06
016cff08  mov x0,x19
016cff0c  str x19,[sp]
016cff10  bl 0x01251aa0
016cff14  mov w8,#0x1
016cff18  str w8,[sp, #0x8]
016cff1c  mov x0,sp
016cff20  bl 0x0174aa04
016cff24  adrp x1,0x5763000
016cff28  adrp x3,0x736d000
016cff2c  add x1,x1,#0xac0
016cff30  add x3,x3,#0x101
016cff34  add x0,sp,#0x10
016cff38  mov x2,sp
016cff3c  bl 0x01815f4c
016cff40  ldr x0,[sp, #0x10]
016cff44  mov w1,#0x10
016cff48  bl 0x0124cba0
016cff4c  adrp x8,0x1815000
016cff50  dup v0.2D,xzr
016cff54  add x8,x8,#0xf44
016cff58  mov v0.D[0x0],x8
016cff5c  str q0,[x0]
016cff60  ldr x0,[sp, #0x10]
016cff64  adrp x1,0x1816000
016cff68  add x1,x1,#0x310
016cff6c  mov w2,#0x1
016cff70  bl 0x0124ec90
016cff74  ldr x0,[sp, #0x10]
016cff78  mov w1,#0xffffffff
016cff7c  bl 0x0124c0c0
016cff80  ldr x19,[sp, #0x10]
016cff84  orr w1,wzr,#0xfffffffb
016cff88  mov w2,#0x6e7
016cff8c  mov x0,x19
016cff90  bl 0x0124a650
016cff94  orr w1,wzr,#0xfffffffe
016cff98  mov x0,x19
016cff9c  bl 0x0124c0c0
016cffa0  orr w1,wzr,#0xfffffffe
016cffa4  mov x0,x19
016cffa8  bl 0x0124e920
016cffac  mov w20,w0
016cffb0  adrp x1,0x5763000
016cffb4  add x1,x1,#0xad0
016cffb8  mov x0,x19
016cffbc  bl 0x0124f120
016cffc0  orr w1,wzr,#0xfffffffe
016cffc4  mov w2,#0x1
016cffc8  mov x0,x19
016cffcc  bl 0x0124cfc0
016cffd0  mov x0,x19
016cffd4  mov w1,w20
016cffd8  bl 0x0124e060
016cffdc  orr w1,wzr,#0xfffffffd
016cffe0  mov x0,x19
016cffe4  bl 0x0124c4d0
016cffe8  ldr x19,[sp, #0x10]
016cffec  orr w1,wzr,#0xfffffffd
016cfff0  mov w2,#0x6e7
016cfff4  mov x0,x19
016cfff8  bl 0x0124a650
016cfffc  orr w1,wzr,#0xfffffffe
016d0000  mov x0,x19
016d0004  bl 0x0124c0c0
016d0008  orr w1,wzr,#0xfffffffe
016d000c  mov x0,x19
016d0010  bl 0x0124e920
016d0014  mov w20,w0
016d0018  adrp x1,0x5763000
016d001c  add x1,x1,#0xad0
016d0020  mov x0,x19
016d0024  bl 0x0124f120
016d0028  orr w1,wzr,#0xfffffffe
016d002c  mov w2,#0x1
016d0030  mov x0,x19
016d0034  bl 0x0124cfc0
016d0038  mov x0,x19
016d003c  mov w1,w20
016d0040  bl 0x0124e060
016d0044  orr w1,wzr,#0xfffffffd
016d0048  mov x0,x19
016d004c  bl 0x0124c4d0
016d0050  ldr w8,[sp, #0x18]
016d0054  ldr x0,[sp, #0x10]
016d0058  sub w8,w8,#0x3
016d005c  str w8,[sp, #0x18]
016d0060  orr w1,wzr,#0xfffffffc
016d0064  bl 0x0124c4d0
016d0068  ldr w8,[sp, #0x18]
016d006c  ldr x0,[sp, #0x10]
016d0070  str wzr,[sp, #0x18]
016d0074  cmp w8,#0x1
016d0078  b.lt 0x016d009c
016d007c  mvn w1,w8
016d0080  bl 0x0124c4d0
016d0084  ldr w8,[sp, #0x18]
016d0088  cmp w8,#0x1
016d008c  b.lt 0x016d009c
016d0090  ldr x0,[sp, #0x10]
016d0094  mvn w1,w8
016d0098  bl 0x0124c4d0
016d009c  ldr w8,[sp, #0x8]
016d00a0  cmp w8,#0x1
016d00a4  b.lt 0x016d00b4
016d00a8  ldr x0,[sp]
016d00ac  mvn w1,w8
016d00b0  bl 0x0124c4d0
016d00b4  ldp x29,x30,[sp, #0x30]
016d00b8  ldp x20,x19,[sp, #0x20]
016d00bc  add sp,sp,#0x40
016d00c0  ret
