// ===== case247-GamePlayComponentResObject @ 016b6618 =====
// existing function case247-GamePlayComponentResObject
016b6618  sub sp,sp,#0x40
016b661c  stp x20,x19,[sp, #0x20]
016b6620  stp x29,x30,[sp, #0x30]
016b6624  add x29,sp,#0x30
016b6628  adrp x1,0x174a000
016b662c  add x1,x1,#0x87c
016b6630  mov x19,x0
016b6634  bl 0x0124ba40
016b6638  adrp x1,0x575d000
016b663c  add x1,x1,#0xa06
016b6640  mov x0,x19
016b6644  str x19,[sp]
016b6648  bl 0x01251aa0
016b664c  mov w8,#0x1
016b6650  str w8,[sp, #0x8]
016b6654  mov x0,sp
016b6658  bl 0x0174aa04
016b665c  adrp x1,0x5761000
016b6660  adrp x3,0x736d000
016b6664  add x1,x1,#0x411
016b6668  add x3,x3,#0x101
016b666c  add x0,sp,#0x10
016b6670  mov x2,sp
016b6674  bl 0x017d4e64
016b6678  ldr x0,[sp, #0x10]
016b667c  mov w1,#0x10
016b6680  bl 0x0124cba0
016b6684  adrp x8,0x17d4000
016b6688  dup v0.2D,xzr
016b668c  add x8,x8,#0xe54
016b6690  mov v0.D[0x0],x8
016b6694  str q0,[x0]
016b6698  ldr x0,[sp, #0x10]
016b669c  adrp x1,0x17d5000
016b66a0  add x1,x1,#0x228
016b66a4  mov w2,#0x1
016b66a8  bl 0x0124ec90
016b66ac  ldr x0,[sp, #0x10]
016b66b0  mov w1,#0xffffffff
016b66b4  bl 0x0124c0c0
016b66b8  ldr x19,[sp, #0x10]
016b66bc  orr w1,wzr,#0xfffffffb
016b66c0  mov w2,#0x6e7
016b66c4  mov x0,x19
016b66c8  bl 0x0124a650
016b66cc  orr w1,wzr,#0xfffffffe
016b66d0  mov x0,x19
016b66d4  bl 0x0124c0c0
016b66d8  orr w1,wzr,#0xfffffffe
016b66dc  mov x0,x19
016b66e0  bl 0x0124e920
016b66e4  mov w20,w0
016b66e8  adrp x1,0x575e000
016b66ec  add x1,x1,#0x56d
016b66f0  mov x0,x19
016b66f4  bl 0x0124f120
016b66f8  orr w1,wzr,#0xfffffffe
016b66fc  mov w2,#0x1
016b6700  mov x0,x19
016b6704  bl 0x0124cfc0
016b6708  mov x0,x19
016b670c  mov w1,w20
016b6710  bl 0x0124e060
016b6714  orr w1,wzr,#0xfffffffd
016b6718  mov x0,x19
016b671c  bl 0x0124c4d0
016b6720  ldr x19,[sp, #0x10]
016b6724  orr w1,wzr,#0xfffffffd
016b6728  mov w2,#0x6e7
016b672c  mov x0,x19
016b6730  bl 0x0124a650
016b6734  orr w1,wzr,#0xfffffffe
016b6738  mov x0,x19
016b673c  bl 0x0124c0c0
016b6740  orr w1,wzr,#0xfffffffe
016b6744  mov x0,x19
016b6748  bl 0x0124e920
016b674c  mov w20,w0
016b6750  adrp x1,0x575e000
016b6754  add x1,x1,#0x56d
016b6758  mov x0,x19
016b675c  bl 0x0124f120
016b6760  orr w1,wzr,#0xfffffffe
016b6764  mov w2,#0x1
016b6768  mov x0,x19
016b676c  bl 0x0124cfc0
016b6770  mov x0,x19
016b6774  mov w1,w20
016b6778  bl 0x0124e060
016b677c  orr w1,wzr,#0xfffffffd
016b6780  mov x0,x19
016b6784  bl 0x0124c4d0
016b6788  ldr x0,[sp, #0x10]
016b678c  mov w1,#0x10
016b6790  bl 0x0124cba0
016b6794  adrp x8,0x17d4000
016b6798  dup v0.2D,xzr
016b679c  add x8,x8,#0xe5c
016b67a0  mov v0.D[0x0],x8
016b67a4  str q0,[x0]
016b67a8  ldr x0,[sp, #0x10]
016b67ac  adrp x1,0x17d5000
016b67b0  add x1,x1,#0x34c
016b67b4  mov w2,#0x1
016b67b8  bl 0x0124ec90
016b67bc  ldr x0,[sp, #0x10]
016b67c0  mov w1,#0xffffffff
016b67c4  bl 0x0124c0c0
016b67c8  ldr x19,[sp, #0x10]
016b67cc  orr w1,wzr,#0xfffffffb
016b67d0  mov w2,#0x6e7
016b67d4  mov x0,x19
016b67d8  bl 0x0124a650
016b67dc  orr w1,wzr,#0xfffffffe
016b67e0  mov x0,x19
016b67e4  bl 0x0124c0c0
016b67e8  orr w1,wzr,#0xfffffffe
016b67ec  mov x0,x19
016b67f0  bl 0x0124e920
016b67f4  mov w20,w0
016b67f8  adrp x1,0x575e000
016b67fc  add x1,x1,#0x578
016b6800  mov x0,x19
016b6804  bl 0x0124f120
016b6808  orr w1,wzr,#0xfffffffe
016b680c  mov w2,#0x1
016b6810  mov x0,x19
016b6814  bl 0x0124cfc0
016b6818  mov x0,x19
016b681c  mov w1,w20
016b6820  bl 0x0124e060
016b6824  orr w1,wzr,#0xfffffffd
016b6828  mov x0,x19
016b682c  bl 0x0124c4d0
016b6830  ldr x19,[sp, #0x10]
016b6834  orr w1,wzr,#0xfffffffd
016b6838  mov w2,#0x6e7
016b683c  mov x0,x19
016b6840  bl 0x0124a650
016b6844  orr w1,wzr,#0xfffffffe
016b6848  mov x0,x19
016b684c  bl 0x0124c0c0
016b6850  orr w1,wzr,#0xfffffffe
016b6854  mov x0,x19
016b6858  bl 0x0124e920
016b685c  mov w20,w0
016b6860  adrp x1,0x575e000
016b6864  add x1,x1,#0x578
016b6868  mov x0,x19
016b686c  bl 0x0124f120
016b6870  orr w1,wzr,#0xfffffffe
016b6874  mov w2,#0x1
016b6878  mov x0,x19
016b687c  bl 0x0124cfc0
016b6880  mov x0,x19
016b6884  mov w1,w20
016b6888  bl 0x0124e060
016b688c  orr w1,wzr,#0xfffffffd
016b6890  mov x0,x19
016b6894  bl 0x0124c4d0
016b6898  ldr w8,[sp, #0x18]
016b689c  ldr x0,[sp, #0x10]
016b68a0  sub w8,w8,#0x3
016b68a4  str w8,[sp, #0x18]
016b68a8  orr w1,wzr,#0xfffffffc
016b68ac  bl 0x0124c4d0
016b68b0  ldr w8,[sp, #0x18]
016b68b4  ldr x0,[sp, #0x10]
016b68b8  str wzr,[sp, #0x18]
016b68bc  cmp w8,#0x1
016b68c0  b.lt 0x016b68e4
016b68c4  mvn w1,w8
016b68c8  bl 0x0124c4d0
016b68cc  ldr w8,[sp, #0x18]
016b68d0  cmp w8,#0x1
016b68d4  b.lt 0x016b68e4
016b68d8  ldr x0,[sp, #0x10]
016b68dc  mvn w1,w8
016b68e0  bl 0x0124c4d0
016b68e4  ldr w8,[sp, #0x8]
016b68e8  cmp w8,#0x1
016b68ec  b.lt 0x016b68fc
016b68f0  ldr x0,[sp]
016b68f4  mvn w1,w8
016b68f8  bl 0x0124c4d0
016b68fc  ldp x29,x30,[sp, #0x30]
016b6900  ldp x20,x19,[sp, #0x20]
016b6904  add sp,sp,#0x40
016b6908  ret
