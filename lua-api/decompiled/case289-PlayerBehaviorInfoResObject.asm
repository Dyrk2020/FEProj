// ===== case289-PlayerBehaviorInfoResObject @ 016bd6fc =====
// existing function case289-PlayerBehaviorInfoResObject
016bd6fc  sub sp,sp,#0x40
016bd700  str x19,[sp, #0x20]
016bd704  stp x29,x30,[sp, #0x30]
016bd708  add x29,sp,#0x30
016bd70c  adrp x1,0x174a000
016bd710  add x1,x1,#0x87c
016bd714  mov x19,x0
016bd718  bl 0x0124ba40
016bd71c  adrp x1,0x575d000
016bd720  add x1,x1,#0xa06
016bd724  mov x0,x19
016bd728  str x19,[sp]
016bd72c  bl 0x01251aa0
016bd730  mov w8,#0x1
016bd734  str w8,[sp, #0x8]
016bd738  mov x0,sp
016bd73c  bl 0x0174aa04
016bd740  adrp x1,0x5762000
016bd744  adrp x3,0x736d000
016bd748  add x1,x1,#0x441
016bd74c  add x3,x3,#0x101
016bd750  add x0,sp,#0x10
016bd754  mov x2,sp
016bd758  bl 0x017f00dc
016bd75c  adrp x1,0x575d000
016bd760  adrp x2,0x17f0000
016bd764  adrp x4,0x17f0000
016bd768  add x1,x1,#0xcd9
016bd76c  add x2,x2,#0x4c
016bd770  add x4,x4,#0x54
016bd774  add x0,sp,#0x10
016bd778  mov x3,xzr
016bd77c  mov x5,xzr
016bd780  bl 0x017efe64
016bd784  adrp x1,0x59af000
016bd788  adrp x2,0x17f0000
016bd78c  adrp x4,0x17f0000
016bd790  add x1,x1,#0xa5f
016bd794  add x2,x2,#0x5c
016bd798  add x4,x4,#0x64
016bd79c  mov x3,xzr
016bd7a0  mov x5,xzr
016bd7a4  bl 0x017efe64
016bd7a8  adrp x1,0x5762000
016bd7ac  adrp x2,0x17f0000
016bd7b0  adrp x4,0x17f0000
016bd7b4  add x1,x1,#0x45d
016bd7b8  add x2,x2,#0x6c
016bd7bc  add x4,x4,#0x74
016bd7c0  mov x3,xzr
016bd7c4  mov x5,xzr
016bd7c8  bl 0x017efe64
016bd7cc  adrp x1,0x5762000
016bd7d0  adrp x2,0x17f0000
016bd7d4  adrp x4,0x17f0000
016bd7d8  add x1,x1,#0x46a
016bd7dc  add x2,x2,#0x7c
016bd7e0  add x4,x4,#0x84
016bd7e4  mov x3,xzr
016bd7e8  mov x5,xzr
016bd7ec  bl 0x017efe64
016bd7f0  adrp x1,0x5762000
016bd7f4  adrp x2,0x17f0000
016bd7f8  adrp x4,0x17f0000
016bd7fc  add x1,x1,#0x477
016bd800  add x2,x2,#0x8c
016bd804  add x4,x4,#0x94
016bd808  mov x3,xzr
016bd80c  mov x5,xzr
016bd810  bl 0x017efe64
016bd814  adrp x1,0x5762000
016bd818  adrp x2,0x17f0000
016bd81c  adrp x4,0x17f0000
016bd820  add x1,x1,#0x485
016bd824  add x2,x2,#0x9c
016bd828  add x4,x4,#0xa4
016bd82c  mov x3,xzr
016bd830  mov x5,xzr
016bd834  bl 0x017efe64
016bd838  adrp x1,0x5762000
016bd83c  adrp x2,0x17f0000
016bd840  adrp x4,0x17f0000
016bd844  add x1,x1,#0x491
016bd848  add x2,x2,#0xac
016bd84c  add x4,x4,#0xb4
016bd850  mov x3,xzr
016bd854  mov x5,xzr
016bd858  bl 0x017efe64
016bd85c  adrp x1,0x5762000
016bd860  adrp x2,0x17f0000
016bd864  adrp x4,0x17f0000
016bd868  add x1,x1,#0x49d
016bd86c  add x2,x2,#0xbc
016bd870  add x4,x4,#0xc4
016bd874  mov x3,xzr
016bd878  mov x5,xzr
016bd87c  bl 0x017efe64
016bd880  adrp x1,0x5762000
016bd884  adrp x2,0x17f0000
016bd888  adrp x4,0x17f0000
016bd88c  add x1,x1,#0x4a9
016bd890  add x2,x2,#0xcc
016bd894  add x4,x4,#0xd4
016bd898  mov x3,xzr
016bd89c  mov x5,xzr
016bd8a0  bl 0x017efe64
016bd8a4  mov x19,x0
016bd8a8  ldr w8,[x19, #0x8]
016bd8ac  ldr x0,[x19]
016bd8b0  sub w8,w8,#0x3
016bd8b4  str w8,[x19, #0x8]
016bd8b8  orr w1,wzr,#0xfffffffc
016bd8bc  bl 0x0124c4d0
016bd8c0  ldr w8,[x19, #0x8]
016bd8c4  ldr x0,[x19]
016bd8c8  str wzr,[x19, #0x8]
016bd8cc  cmp w8,#0x1
016bd8d0  b.lt 0x016bd8dc
016bd8d4  mvn w1,w8
016bd8d8  bl 0x0124c4d0
016bd8dc  ldr w8,[sp, #0x18]
016bd8e0  cmp w8,#0x1
016bd8e4  b.lt 0x016bd8f4
016bd8e8  ldr x0,[sp, #0x10]
016bd8ec  mvn w1,w8
016bd8f0  bl 0x0124c4d0
016bd8f4  ldr w8,[sp, #0x8]
016bd8f8  cmp w8,#0x1
016bd8fc  b.lt 0x016bd90c
016bd900  ldr x0,[sp]
016bd904  mvn w1,w8
016bd908  bl 0x0124c4d0
016bd90c  ldp x29,x30,[sp, #0x30]
016bd910  ldr x19,[sp, #0x20]
016bd914  add sp,sp,#0x40
016bd918  ret
