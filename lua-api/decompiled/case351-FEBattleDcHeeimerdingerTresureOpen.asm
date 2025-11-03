// ===== case351-FEBattleDcHeeimerdingerTresureOpen @ 016d0f4c =====
// existing function case351-FEBattleDcHeeimerdingerTresureOpen
016d0f4c  sub sp,sp,#0x40
016d0f50  str x19,[sp, #0x20]
016d0f54  stp x29,x30,[sp, #0x30]
016d0f58  add x29,sp,#0x30
016d0f5c  adrp x1,0x174a000
016d0f60  add x1,x1,#0x87c
016d0f64  mov x19,x0
016d0f68  bl 0x0124ba40
016d0f6c  adrp x1,0x575d000
016d0f70  add x1,x1,#0xa06
016d0f74  mov x0,x19
016d0f78  str x19,[sp]
016d0f7c  bl 0x01251aa0
016d0f80  mov w8,#0x1
016d0f84  str w8,[sp, #0x8]
016d0f88  mov x0,sp
016d0f8c  bl 0x0174aa04
016d0f90  adrp x1,0x5763000
016d0f94  adrp x3,0x736d000
016d0f98  add x1,x1,#0xd5e
016d0f9c  add x3,x3,#0x101
016d0fa0  add x0,sp,#0x10
016d0fa4  mov x2,sp
016d0fa8  bl 0x0181befc
016d0fac  adrp x1,0x5972000
016d0fb0  adrp x2,0x181b000
016d0fb4  adrp x4,0x181b000
016d0fb8  add x1,x1,#0xaa5
016d0fbc  add x2,x2,#0xacc
016d0fc0  add x4,x4,#0xad4
016d0fc4  add x0,sp,#0x10
016d0fc8  mov x3,xzr
016d0fcc  mov x5,xzr
016d0fd0  bl 0x0181b8e4
016d0fd4  adrp x1,0x5944000
016d0fd8  adrp x2,0x181b000
016d0fdc  adrp x4,0x181b000
016d0fe0  add x1,x1,#0xaba
016d0fe4  add x2,x2,#0xcc4
016d0fe8  add x4,x4,#0xccc
016d0fec  mov x3,xzr
016d0ff0  mov x5,xzr
016d0ff4  bl 0x0181badc
016d0ff8  adrp x1,0x5763000
016d0ffc  adrp x2,0x181b000
016d1000  adrp x4,0x181b000
016d1004  add x1,x1,#0xd06
016d1008  add x2,x2,#0xcd4
016d100c  add x4,x4,#0xcdc
016d1010  mov x3,xzr
016d1014  mov x5,xzr
016d1018  bl 0x0181b8e4
016d101c  adrp x1,0x5763000
016d1020  adrp x2,0x181b000
016d1024  adrp x4,0x181b000
016d1028  add x1,x1,#0xcff
016d102c  add x2,x2,#0xecc
016d1030  add x4,x4,#0xed4
016d1034  mov x3,xzr
016d1038  mov x5,xzr
016d103c  bl 0x0181bce4
016d1040  adrp x1,0x5763000
016d1044  adrp x2,0x181b000
016d1048  adrp x4,0x181b000
016d104c  add x1,x1,#0xd81
016d1050  add x2,x2,#0xedc
016d1054  add x4,x4,#0xee4
016d1058  mov x3,xzr
016d105c  mov x5,xzr
016d1060  bl 0x0181b8e4
016d1064  adrp x1,0x5763000
016d1068  adrp x2,0x181b000
016d106c  adrp x4,0x181b000
016d1070  add x1,x1,#0xd0d
016d1074  add x2,x2,#0xeec
016d1078  add x4,x4,#0xef4
016d107c  mov x3,xzr
016d1080  mov x5,xzr
016d1084  bl 0x0181b8e4
016d1088  mov x19,x0
016d108c  ldr w8,[x19, #0x8]
016d1090  ldr x0,[x19]
016d1094  sub w8,w8,#0x3
016d1098  str w8,[x19, #0x8]
016d109c  orr w1,wzr,#0xfffffffc
016d10a0  bl 0x0124c4d0
016d10a4  ldr w8,[x19, #0x8]
016d10a8  ldr x0,[x19]
016d10ac  str wzr,[x19, #0x8]
016d10b0  cmp w8,#0x1
016d10b4  b.lt 0x016d10c0
016d10b8  mvn w1,w8
016d10bc  bl 0x0124c4d0
016d10c0  ldr w8,[sp, #0x18]
016d10c4  cmp w8,#0x1
016d10c8  b.lt 0x016d10d8
016d10cc  ldr x0,[sp, #0x10]
016d10d0  mvn w1,w8
016d10d4  bl 0x0124c4d0
016d10d8  ldr w8,[sp, #0x8]
016d10dc  cmp w8,#0x1
016d10e0  b.lt 0x016d10f0
016d10e4  ldr x0,[sp]
016d10e8  mvn w1,w8
016d10ec  bl 0x0124c4d0
016d10f0  ldp x29,x30,[sp, #0x30]
016d10f4  ldr x19,[sp, #0x20]
016d10f8  add sp,sp,#0x40
016d10fc  ret
