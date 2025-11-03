// ===== case331-FrameDumperInterface @ 016cce8c =====
// existing function case331-FrameDumperInterface
016cce8c  sub sp,sp,#0x40
016cce90  str x19,[sp, #0x20]
016cce94  stp x29,x30,[sp, #0x30]
016cce98  add x29,sp,#0x30
016cce9c  adrp x1,0x174a000
016ccea0  add x1,x1,#0x87c
016ccea4  mov x19,x0
016ccea8  bl 0x0124ba40
016cceac  adrp x1,0x575d000
016cceb0  add x1,x1,#0xa06
016cceb4  mov x0,x19
016cceb8  str x19,[sp]
016ccebc  bl 0x01251aa0
016ccec0  mov w8,#0x1
016ccec4  str w8,[sp, #0x8]
016ccec8  mov x0,sp
016ccecc  bl 0x0174aa04
016cced0  adrp x1,0x5763000
016cced4  adrp x3,0x736d000
016cced8  add x1,x1,#0x7ce
016ccedc  add x3,x3,#0x101
016ccee0  add x0,sp,#0x10
016ccee4  mov x2,sp
016ccee8  bl 0x0180fd94
016cceec  adrp x1,0x5763000
016ccef0  adrp x2,0x180f000
016ccef4  adrp x4,0x180f000
016ccef8  add x1,x1,#0x7e3
016ccefc  add x2,x2,#0x964
016ccf00  add x4,x4,#0x96c
016ccf04  add x0,sp,#0x10
016ccf08  mov x3,xzr
016ccf0c  mov x5,xzr
016ccf10  bl 0x0180f77c
016ccf14  adrp x1,0x5763000
016ccf18  adrp x2,0x180f000
016ccf1c  adrp x4,0x180f000
016ccf20  add x1,x1,#0x7f9
016ccf24  add x2,x2,#0x974
016ccf28  add x4,x4,#0x97c
016ccf2c  mov x3,xzr
016ccf30  mov x5,xzr
016ccf34  bl 0x0180f77c
016ccf38  adrp x1,0x5763000
016ccf3c  adrp x2,0x180f000
016ccf40  adrp x4,0x180f000
016ccf44  add x1,x1,#0x80c
016ccf48  add x2,x2,#0x984
016ccf4c  add x4,x4,#0x98c
016ccf50  mov x3,xzr
016ccf54  mov x5,xzr
016ccf58  bl 0x0180f77c
016ccf5c  adrp x1,0x5763000
016ccf60  adrp x2,0x180f000
016ccf64  adrp x4,0x180f000
016ccf68  add x1,x1,#0x821
016ccf6c  add x2,x2,#0xb7c
016ccf70  add x4,x4,#0xb84
016ccf74  mov x3,xzr
016ccf78  mov x5,xzr
016ccf7c  bl 0x0180f994
016ccf80  adrp x1,0x5763000
016ccf84  adrp x2,0x180f000
016ccf88  adrp x4,0x180f000
016ccf8c  add x1,x1,#0x833
016ccf90  add x2,x2,#0xd74
016ccf94  add x4,x4,#0xd7c
016ccf98  mov x3,xzr
016ccf9c  mov x5,xzr
016ccfa0  bl 0x0180fb8c
016ccfa4  adrp x1,0x5763000
016ccfa8  adrp x2,0x180f000
016ccfac  adrp x4,0x180f000
016ccfb0  add x1,x1,#0x845
016ccfb4  add x2,x2,#0xd84
016ccfb8  add x4,x4,#0xd8c
016ccfbc  mov x3,xzr
016ccfc0  mov x5,xzr
016ccfc4  bl 0x0180f994
016ccfc8  mov x19,x0
016ccfcc  ldr w8,[x19, #0x8]
016ccfd0  ldr x0,[x19]
016ccfd4  sub w8,w8,#0x3
016ccfd8  str w8,[x19, #0x8]
016ccfdc  orr w1,wzr,#0xfffffffc
016ccfe0  bl 0x0124c4d0
016ccfe4  ldr w8,[x19, #0x8]
016ccfe8  ldr x0,[x19]
016ccfec  str wzr,[x19, #0x8]
016ccff0  cmp w8,#0x1
016ccff4  b.lt 0x016cd000
016ccff8  mvn w1,w8
016ccffc  bl 0x0124c4d0
016cd000  ldr w8,[sp, #0x18]
016cd004  cmp w8,#0x1
016cd008  b.lt 0x016cd018
016cd00c  ldr x0,[sp, #0x10]
016cd010  mvn w1,w8
016cd014  bl 0x0124c4d0
016cd018  ldr w8,[sp, #0x8]
016cd01c  cmp w8,#0x1
016cd020  b.lt 0x016cd030
016cd024  ldr x0,[sp]
016cd028  mvn w1,w8
016cd02c  bl 0x0124c4d0
016cd030  ldp x29,x30,[sp, #0x30]
016cd034  ldr x19,[sp, #0x20]
016cd038  add sp,sp,#0x40
016cd03c  ret
