// ===== case691-MoveToProxy @ 0171cf00 =====
// existing function case691-MoveToProxy
0171cf00  sub sp,sp,#0x40
0171cf04  str x19,[sp, #0x20]
0171cf08  stp x29,x30,[sp, #0x30]
0171cf0c  add x29,sp,#0x30
0171cf10  adrp x1,0x174a000
0171cf14  add x1,x1,#0x87c
0171cf18  mov x19,x0
0171cf1c  bl 0x0124ba40
0171cf20  adrp x1,0x575d000
0171cf24  add x1,x1,#0xa06
0171cf28  mov x0,x19
0171cf2c  str x19,[sp]
0171cf30  bl 0x01251aa0
0171cf34  mov w8,#0x1
0171cf38  str w8,[sp, #0x8]
0171cf3c  mov x0,sp
0171cf40  bl 0x0174aa04
0171cf44  adrp x1,0x576d000
0171cf48  adrp x3,0x736d000
0171cf4c  add x1,x1,#0x8d9
0171cf50  add x3,x3,#0x101
0171cf54  add x0,sp,#0x10
0171cf58  mov x2,sp
0171cf5c  bl 0x01955988
0171cf60  adrp x1,0x576d000
0171cf64  adrp x2,0x1955000
0171cf68  adrp x4,0x1955000
0171cf6c  add x1,x1,#0x8e5
0171cf70  add x2,x2,#0x6a0
0171cf74  add x4,x4,#0x6cc
0171cf78  add x0,sp,#0x10
0171cf7c  mov x3,xzr
0171cf80  mov x5,xzr
0171cf84  bl 0x019554b8
0171cf88  adrp x1,0x576d000
0171cf8c  adrp x2,0x1955000
0171cf90  adrp x4,0x1955000
0171cf94  add x1,x1,#0x8f2
0171cf98  add x2,x2,#0x6f0
0171cf9c  add x4,x4,#0x71c
0171cfa0  mov x3,xzr
0171cfa4  mov x5,xzr
0171cfa8  bl 0x019554b8
0171cfac  adrp x1,0x576d000
0171cfb0  adrp x2,0x1955000
0171cfb4  adrp x4,0x1955000
0171cfb8  add x1,x1,#0x8ff
0171cfbc  add x2,x2,#0x740
0171cfc0  add x4,x4,#0x754
0171cfc4  mov x3,xzr
0171cfc8  mov x5,xzr
0171cfcc  bl 0x019554b8
0171cfd0  adrp x1,0x576d000
0171cfd4  adrp x2,0x1955000
0171cfd8  adrp x4,0x1955000
0171cfdc  add x1,x1,#0x916
0171cfe0  add x2,x2,#0x958
0171cfe4  add x4,x4,#0x960
0171cfe8  mov x3,xzr
0171cfec  mov x5,xzr
0171cff0  bl 0x01955770
0171cff4  adrp x1,0x576d000
0171cff8  adrp x2,0x1955000
0171cffc  adrp x4,0x1955000
0171d000  add x1,x1,#0x932
0171d004  add x2,x2,#0x968
0171d008  add x4,x4,#0x970
0171d00c  mov x3,xzr
0171d010  mov x5,xzr
0171d014  bl 0x01955770
0171d018  adrp x1,0x576d000
0171d01c  adrp x2,0x1955000
0171d020  adrp x4,0x1955000
0171d024  add x1,x1,#0x944
0171d028  add x2,x2,#0x978
0171d02c  add x4,x4,#0x980
0171d030  mov x3,xzr
0171d034  mov x5,xzr
0171d038  bl 0x01955770
0171d03c  mov x19,x0
0171d040  ldr w8,[x19, #0x8]
0171d044  ldr x0,[x19]
0171d048  sub w8,w8,#0x3
0171d04c  str w8,[x19, #0x8]
0171d050  orr w1,wzr,#0xfffffffc
0171d054  bl 0x0124c4d0
0171d058  ldr w8,[x19, #0x8]
0171d05c  ldr x0,[x19]
0171d060  str wzr,[x19, #0x8]
0171d064  cmp w8,#0x1
0171d068  b.lt 0x0171d074
0171d06c  mvn w1,w8
0171d070  bl 0x0124c4d0
0171d074  ldr w8,[sp, #0x18]
0171d078  cmp w8,#0x1
0171d07c  b.lt 0x0171d08c
0171d080  ldr x0,[sp, #0x10]
0171d084  mvn w1,w8
0171d088  bl 0x0124c4d0
0171d08c  ldr w8,[sp, #0x8]
0171d090  cmp w8,#0x1
0171d094  b.lt 0x0171d0a4
0171d098  ldr x0,[sp]
0171d09c  mvn w1,w8
0171d0a0  bl 0x0124c4d0
0171d0a4  ldp x29,x30,[sp, #0x30]
0171d0a8  ldr x19,[sp, #0x20]
0171d0ac  add sp,sp,#0x40
0171d0b0  ret
