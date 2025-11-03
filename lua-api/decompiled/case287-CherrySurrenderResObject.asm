// ===== case287-CherrySurrenderResObject @ 016bd380 =====
// existing function case287-CherrySurrenderResObject
016bd380  sub sp,sp,#0x40
016bd384  str x19,[sp, #0x20]
016bd388  stp x29,x30,[sp, #0x30]
016bd38c  add x29,sp,#0x30
016bd390  adrp x1,0x174a000
016bd394  add x1,x1,#0x87c
016bd398  mov x19,x0
016bd39c  bl 0x0124ba40
016bd3a0  adrp x1,0x575d000
016bd3a4  add x1,x1,#0xa06
016bd3a8  mov x0,x19
016bd3ac  str x19,[sp]
016bd3b0  bl 0x01251aa0
016bd3b4  mov w8,#0x1
016bd3b8  str w8,[sp, #0x8]
016bd3bc  mov x0,sp
016bd3c0  bl 0x0174aa04
016bd3c4  adrp x1,0x5762000
016bd3c8  adrp x3,0x736d000
016bd3cc  add x1,x1,#0x392
016bd3d0  add x3,x3,#0x101
016bd3d4  add x0,sp,#0x10
016bd3d8  mov x2,sp
016bd3dc  bl 0x017eee0c
016bd3e0  adrp x1,0x5762000
016bd3e4  adrp x2,0x17ee000
016bd3e8  adrp x4,0x17ee000
016bd3ec  add x1,x1,#0x3ab
016bd3f0  add x2,x2,#0xbe4
016bd3f4  add x4,x4,#0xbec
016bd3f8  add x0,sp,#0x10
016bd3fc  mov x3,xzr
016bd400  mov x5,xzr
016bd404  bl 0x017ee9fc
016bd408  adrp x1,0x5762000
016bd40c  adrp x2,0x17ee000
016bd410  adrp x4,0x17ee000
016bd414  add x1,x1,#0x3bc
016bd418  add x2,x2,#0xbf4
016bd41c  add x4,x4,#0xbfc
016bd420  mov x3,xzr
016bd424  mov x5,xzr
016bd428  bl 0x017ee9fc
016bd42c  adrp x1,0x5762000
016bd430  adrp x2,0x17ee000
016bd434  adrp x4,0x17ee000
016bd438  add x1,x1,#0x3ce
016bd43c  add x2,x2,#0xc04
016bd440  add x4,x4,#0xc0c
016bd444  mov x3,xzr
016bd448  mov x5,xzr
016bd44c  bl 0x017ee9fc
016bd450  adrp x1,0x5762000
016bd454  adrp x2,0x17ee000
016bd458  adrp x4,0x17ee000
016bd45c  add x1,x1,#0x3e2
016bd460  add x2,x2,#0xdfc
016bd464  add x4,x4,#0xe04
016bd468  mov x3,xzr
016bd46c  mov x5,xzr
016bd470  bl 0x017eec14
016bd474  mov x19,x0
016bd478  ldr w8,[x19, #0x8]
016bd47c  ldr x0,[x19]
016bd480  sub w8,w8,#0x3
016bd484  str w8,[x19, #0x8]
016bd488  orr w1,wzr,#0xfffffffc
016bd48c  bl 0x0124c4d0
016bd490  ldr w8,[x19, #0x8]
016bd494  ldr x0,[x19]
016bd498  str wzr,[x19, #0x8]
016bd49c  cmp w8,#0x1
016bd4a0  b.lt 0x016bd4ac
016bd4a4  mvn w1,w8
016bd4a8  bl 0x0124c4d0
016bd4ac  ldr w8,[sp, #0x18]
016bd4b0  cmp w8,#0x1
016bd4b4  b.lt 0x016bd4c4
016bd4b8  ldr x0,[sp, #0x10]
016bd4bc  mvn w1,w8
016bd4c0  bl 0x0124c4d0
016bd4c4  ldr w8,[sp, #0x8]
016bd4c8  cmp w8,#0x1
016bd4cc  b.lt 0x016bd4dc
016bd4d0  ldr x0,[sp]
016bd4d4  mvn w1,w8
016bd4d8  bl 0x0124c4d0
016bd4dc  ldp x29,x30,[sp, #0x30]
016bd4e0  ldr x19,[sp, #0x20]
016bd4e4  add sp,sp,#0x40
016bd4e8  ret
