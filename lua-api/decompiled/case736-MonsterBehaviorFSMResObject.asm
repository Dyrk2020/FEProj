// ===== case736-MonsterBehaviorFSMResObject @ 01726a5c =====
// existing function case736-MonsterBehaviorFSMResObject
01726a5c  sub sp,sp,#0x40
01726a60  str x19,[sp, #0x20]
01726a64  stp x29,x30,[sp, #0x30]
01726a68  add x29,sp,#0x30
01726a6c  adrp x1,0x174a000
01726a70  add x1,x1,#0x87c
01726a74  mov x19,x0
01726a78  bl 0x0124ba40
01726a7c  adrp x1,0x575d000
01726a80  add x1,x1,#0xa06
01726a84  mov x0,x19
01726a88  str x19,[sp]
01726a8c  bl 0x01251aa0
01726a90  mov w8,#0x1
01726a94  str w8,[sp, #0x8]
01726a98  mov x0,sp
01726a9c  bl 0x0174aa04
01726aa0  adrp x1,0x5770000
01726aa4  adrp x3,0x736d000
01726aa8  add x1,x1,#0x80
01726aac  add x3,x3,#0x101
01726ab0  add x0,sp,#0x10
01726ab4  mov x2,sp
01726ab8  bl 0x0197dc30
01726abc  adrp x1,0x5770000
01726ac0  adrp x2,0x197d000
01726ac4  adrp x4,0x197d000
01726ac8  add x1,x1,#0x9c
01726acc  add x2,x2,#0xbe0
01726ad0  add x4,x4,#0xbe8
01726ad4  add x0,sp,#0x10
01726ad8  mov x3,xzr
01726adc  mov x5,xzr
01726ae0  bl 0x0197d9f8
01726ae4  adrp x1,0x5770000
01726ae8  adrp x2,0x197d000
01726aec  adrp x4,0x197d000
01726af0  add x1,x1,#0xae
01726af4  add x2,x2,#0xbf0
01726af8  add x4,x4,#0xbf8
01726afc  mov x3,xzr
01726b00  mov x5,xzr
01726b04  bl 0x0197d9f8
01726b08  adrp x1,0x5770000
01726b0c  adrp x2,0x197d000
01726b10  adrp x4,0x197d000
01726b14  add x1,x1,#0xc0
01726b18  add x2,x2,#0xc00
01726b1c  add x4,x4,#0xc08
01726b20  mov x3,xzr
01726b24  mov x5,xzr
01726b28  bl 0x0197d9f8
01726b2c  adrp x1,0x5770000
01726b30  adrp x2,0x197d000
01726b34  adrp x4,0x197d000
01726b38  add x1,x1,#0xd7
01726b3c  add x2,x2,#0xc10
01726b40  add x4,x4,#0xc18
01726b44  mov x3,xzr
01726b48  mov x5,xzr
01726b4c  bl 0x0197d9f8
01726b50  adrp x1,0x5770000
01726b54  adrp x2,0x197d000
01726b58  adrp x4,0x197d000
01726b5c  add x1,x1,#0xee
01726b60  add x2,x2,#0xc20
01726b64  add x4,x4,#0xc28
01726b68  mov x3,xzr
01726b6c  mov x5,xzr
01726b70  bl 0x0197d9f8
01726b74  mov x19,x0
01726b78  ldr w8,[x19, #0x8]
01726b7c  ldr x0,[x19]
01726b80  sub w8,w8,#0x3
01726b84  str w8,[x19, #0x8]
01726b88  orr w1,wzr,#0xfffffffc
01726b8c  bl 0x0124c4d0
01726b90  ldr w8,[x19, #0x8]
01726b94  ldr x0,[x19]
01726b98  str wzr,[x19, #0x8]
01726b9c  cmp w8,#0x1
01726ba0  b.lt 0x01726bac
01726ba4  mvn w1,w8
01726ba8  bl 0x0124c4d0
01726bac  ldr w8,[sp, #0x18]
01726bb0  cmp w8,#0x1
01726bb4  b.lt 0x01726bc4
01726bb8  ldr x0,[sp, #0x10]
01726bbc  mvn w1,w8
01726bc0  bl 0x0124c4d0
01726bc4  ldr w8,[sp, #0x8]
01726bc8  cmp w8,#0x1
01726bcc  b.lt 0x01726bdc
01726bd0  ldr x0,[sp]
01726bd4  mvn w1,w8
01726bd8  bl 0x0124c4d0
01726bdc  ldp x29,x30,[sp, #0x30]
01726be0  ldr x19,[sp, #0x20]
01726be4  add sp,sp,#0x40
01726be8  ret
