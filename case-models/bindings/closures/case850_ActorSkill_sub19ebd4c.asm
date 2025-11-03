// ===== case850_ActorSkill_sub19ebd4c @ 019ebd4c (DecompileAt3: cleared stale instructions at entry) =====
019ebd4c  sub sp,sp,#0x50
019ebd50  str x23,[sp, #0x10]
019ebd54  stp x22,x21,[sp, #0x20]
019ebd58  stp x20,x19,[sp, #0x30]
019ebd5c  stp x29,x30,[sp, #0x40]
019ebd60  add x29,sp,#0x40
019ebd64  ldr x8,[x2]
019ebd68  mov x19,x0
019ebd6c  mov x20,x3
019ebd70  mov x21,x1
019ebd74  str x8,[x19]
019ebd78  ldr w8,[x2, #0x8]
019ebd7c  str w8,[x19, #0x8]
019ebd80  str wzr,[x2, #0x8]
019ebd84  mov w2,#0x1
019ebd88  bl 0x0174ae88
019ebd8c  ldr x0,[x19]
019ebd90  adrp x1,0x19ec000
019ebd94  add x1,x1,#0xd0
019ebd98  mov w2,wzr
019ebd9c  bl 0x0124ec90
019ebda0  ldr x22,[x19]
019ebda4  orr w1,wzr,#0xfffffffe
019ebda8  mov x0,x22
019ebdac  bl 0x0124e920
019ebdb0  mov w23,w0
019ebdb4  adrp x1,0x575d000
019ebdb8  add x1,x1,#0xa29
019ebdbc  mov x0,x22
019ebdc0  bl 0x0124f120
019ebdc4  orr w1,wzr,#0xfffffffe
019ebdc8  mov w2,#0x1
019ebdcc  mov x0,x22
019ebdd0  bl 0x0124cfc0
019ebdd4  mov x0,x22
019ebdd8  mov w1,w23
019ebddc  bl 0x0124e060
019ebde0  ldr w8,[x19, #0x8]
019ebde4  add w8,w8,#0x1
019ebde8  str w8,[x19, #0x8]
019ebdec  mov x0,x19
019ebdf0  mov x1,x21
019ebdf4  mov w2,wzr
019ebdf8  bl 0x0174ae88
019ebdfc  ldr x0,[x19]
019ebe00  mov w1,wzr
019ebe04  mov w2,wzr
019ebe08  bl 0x0124f920
019ebe0c  ldr x0,[x19]
019ebe10  orr w1,wzr,#0xfffffffe
019ebe14  mov w2,#0x5e7
019ebe18  bl 0x01252d10
019ebe1c  ldr x0,[x19]
019ebe20  orr w1,wzr,#0xfffffffe
019ebe24  bl 0x0124c0c0
019ebe28  ldr x0,[x19]
019ebe2c  orr w1,wzr,#0xfffffffe
019ebe30  mov w2,#0xc07
019ebe34  bl 0x01252d10
019ebe38  ldr x0,[x19]
019ebe3c  mov w1,#0xffffffff
019ebe40  bl 0x0124c0c0
019ebe44  ldr x0,[x19]
019ebe48  orr w1,wzr,#0xfffffffd
019ebe4c  mov w2,#0xc1a
019ebe50  bl 0x01252d10
019ebe54  ldr x0,[x19]
019ebe58  adrp x1,0x19ec000
019ebe5c  add x1,x1,#0xd0
019ebe60  mov w2,wzr
019ebe64  bl 0x0124ec90
019ebe68  ldr x22,[x19]
019ebe6c  orr w1,wzr,#0xfffffffe
019ebe70  mov x0,x22
019ebe74  bl 0x0124e920
019ebe78  mov w23,w0
019ebe7c  adrp x1,0x575d000
019ebe80  add x1,x1,#0xa29
019ebe84  mov x0,x22
019ebe88  bl 0x0124f120
019ebe8c  orr w1,wzr,#0xfffffffe
019ebe90  mov w2,#0x1
019ebe94  mov x0,x22
019ebe98  bl 0x0124cfc0
019ebe9c  mov x0,x22
019ebea0  mov w1,w23
019ebea4  bl 0x0124e060
019ebea8  ldr w8,[x19, #0x8]
019ebeac  add w8,w8,#0x1
019ebeb0  str w8,[x19, #0x8]
019ebeb4  mov x0,x19
019ebeb8  mov x1,x21
019ebebc  bl 0x0174b264
019ebec0  ldr w8,[x19, #0x8]
019ebec4  ldr x0,[x19]
019ebec8  add w8,w8,#0x1
019ebecc  str w8,[x19, #0x8]
019ebed0  mov w1,#0xb9d8
019ebed4  movk w1,#0xfff0, LSL #16
019ebed8  mov x2,x20
019ebedc  bl 0x0124a650
019ebee0  ldr x0,[x19]
019ebee4  mov w1,#0xffffffff
019ebee8  bl 0x0124ff50
019ebeec  cbz w0,0x019ebfc4
019ebef0  ldr x0,[x19]
019ebef4  mov w1,#0xffffffff
019ebef8  mov w2,#0xc1a
019ebefc  bl 0x0124a650
019ebf00  ldr x0,[x19]
019ebf04  mov w1,#0xffffffff
019ebf08  mov w2,#0xc07
019ebf0c  bl 0x0124a650
019ebf10  ldr x0,[x19]
019ebf14  mov w1,#0xfffffffa
019ebf18  mov w2,#0xdad
019ebf1c  bl 0x01252d10
019ebf20  ldr x0,[x19]
019ebf24  orr w1,wzr,#0xfffffffc
019ebf28  mov w2,#0xdad
019ebf2c  bl 0x01252d10
019ebf30  ldr x0,[x19]
019ebf34  orr w1,wzr,#0xfffffffe
019ebf38  mov w2,#0xdad
019ebf3c  bl 0x01252d10
019ebf40  ldr x0,[x19]
019ebf44  mov w1,#0xffffffff
019ebf48  bl 0x0124c0c0
019ebf4c  ldr x0,[x19]
019ebf50  adrp x2,0x736d000
019ebf54  mov w1,#0xb9d8
019ebf58  add x2,x2,#0xe41
019ebf5c  movk w1,#0xfff0, LSL #16
019ebf60  bl 0x01252d10
019ebf64  ldr x0,[x19]
019ebf68  orr w1,wzr,#0xfffffffe
019ebf6c  bl 0x0124c0c0
019ebf70  ldr x0,[x19]
019ebf74  adrp x2,0x736d000
019ebf78  mov w1,#0xb9d8
019ebf7c  add x2,x2,#0x207
019ebf80  movk w1,#0xfff0, LSL #16
019ebf84  bl 0x01252d10
019ebf88  ldr x0,[x19]
019ebf8c  orr w1,wzr,#0xfffffffd
019ebf90  bl 0x0124c0c0
019ebf94  ldr x0,[x19]
019ebf98  adrp x2,0x736d000
019ebf9c  mov w1,#0xb9d8
019ebfa0  add x2,x2,#0x208
019ebfa4  movk w1,#0xfff0, LSL #16
019ebfa8  bl 0x01252d10
019ebfac  ldp x29,x30,[sp, #0x40]
019ebfb0  ldp x20,x19,[sp, #0x30]
019ebfb4  ldp x22,x21,[sp, #0x20]
019ebfb8  ldr x23,[sp, #0x10]
019ebfbc  add sp,sp,#0x50
019ebfc0  ret
019ebfc4  ldr w8,[x19, #0x8]
019ebfc8  mov w0,#0x10
019ebfcc  add w8,w8,#0x1
019ebfd0  str w8,[x19, #0x8]
019ebfd4  bl 0x01250920
019ebfd8  mov x20,x0
019ebfdc  adrp x1,0x575d000
019ebfe0  add x1,x1,#0xa2e
019ebfe4  add x0,sp,#0x8
019ebfe8  mov x2,sp
019ebfec  bl 0x0571b104
019ebff0  mov w22,#0x1
019ebff4  add x1,sp,#0x8
019ebff8  mov x0,x20
019ebffc  bl 0x056fed48
019ec000  adrp x1,0x7318000
019ec004  adrp x2,0x7313000
019ec008  ldr x1,[x1, #0x6a0]
019ec00c  ldr x2,[x2, #0xbc8]
019ec010  mov x0,x20
019ec014  mov w22,wzr
019ec018  bl 0x0124dd00
019ec01c  mov x21,x0
019ec020  b 0x019ec078
