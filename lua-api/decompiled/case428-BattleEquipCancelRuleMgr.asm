// ===== case428-BattleEquipCancelRuleMgr @ 016e665c =====
// existing function case428-BattleEquipCancelRuleMgr
016e665c  sub sp,sp,#0x40
016e6660  stp x20,x19,[sp, #0x20]
016e6664  stp x29,x30,[sp, #0x30]
016e6668  add x29,sp,#0x30
016e666c  adrp x1,0x174a000
016e6670  add x1,x1,#0x87c
016e6674  mov x19,x0
016e6678  bl 0x0124ba40
016e667c  adrp x1,0x575d000
016e6680  add x1,x1,#0xa06
016e6684  mov x0,x19
016e6688  str x19,[sp]
016e668c  bl 0x01251aa0
016e6690  mov w8,#0x1
016e6694  str w8,[sp, #0x8]
016e6698  mov x0,sp
016e669c  bl 0x0174aa04
016e66a0  adrp x1,0x5766000
016e66a4  adrp x3,0x736d000
016e66a8  add x1,x1,#0x71b
016e66ac  add x3,x3,#0x101
016e66b0  add x0,sp,#0x10
016e66b4  mov x2,sp
016e66b8  bl 0x01861c78
016e66bc  ldr x0,[sp, #0x10]
016e66c0  mov w1,#0x10
016e66c4  bl 0x0124cba0
016e66c8  adrp x8,0x1861000
016e66cc  dup v0.2D,xzr
016e66d0  add x8,x8,#0xc68
016e66d4  mov v0.D[0x0],x8
016e66d8  str q0,[x0]
016e66dc  ldr x0,[sp, #0x10]
016e66e0  adrp x1,0x1862000
016e66e4  add x1,x1,#0x3c
016e66e8  mov w2,#0x1
016e66ec  bl 0x0124ec90
016e66f0  ldr x0,[sp, #0x10]
016e66f4  mov w1,#0xffffffff
016e66f8  bl 0x0124c0c0
016e66fc  ldr x19,[sp, #0x10]
016e6700  orr w1,wzr,#0xfffffffb
016e6704  mov w2,#0x6e7
016e6708  mov x0,x19
016e670c  bl 0x0124a650
016e6710  orr w1,wzr,#0xfffffffe
016e6714  mov x0,x19
016e6718  bl 0x0124c0c0
016e671c  orr w1,wzr,#0xfffffffe
016e6720  mov x0,x19
016e6724  bl 0x0124e920
016e6728  mov w20,w0
016e672c  adrp x1,0x5763000
016e6730  add x1,x1,#0x892
016e6734  mov x0,x19
016e6738  bl 0x0124f120
016e673c  orr w1,wzr,#0xfffffffe
016e6740  mov w2,#0x1
016e6744  mov x0,x19
016e6748  bl 0x0124cfc0
016e674c  mov x0,x19
016e6750  mov w1,w20
016e6754  bl 0x0124e060
016e6758  orr w1,wzr,#0xfffffffd
016e675c  mov x0,x19
016e6760  bl 0x0124c4d0
016e6764  ldr x19,[sp, #0x10]
016e6768  orr w1,wzr,#0xfffffffd
016e676c  mov w2,#0x6e7
016e6770  mov x0,x19
016e6774  bl 0x0124a650
016e6778  orr w1,wzr,#0xfffffffe
016e677c  mov x0,x19
016e6780  bl 0x0124c0c0
016e6784  orr w1,wzr,#0xfffffffe
016e6788  mov x0,x19
016e678c  bl 0x0124e920
016e6790  mov w20,w0
016e6794  adrp x1,0x5763000
016e6798  add x1,x1,#0x892
016e679c  mov x0,x19
016e67a0  bl 0x0124f120
016e67a4  orr w1,wzr,#0xfffffffe
016e67a8  mov w2,#0x1
016e67ac  mov x0,x19
016e67b0  bl 0x0124cfc0
016e67b4  mov x0,x19
016e67b8  mov w1,w20
016e67bc  bl 0x0124e060
016e67c0  orr w1,wzr,#0xfffffffd
016e67c4  mov x0,x19
016e67c8  bl 0x0124c4d0
016e67cc  ldr x0,[sp, #0x10]
016e67d0  mov w1,#0x10
016e67d4  bl 0x0124cba0
016e67d8  adrp x8,0x1861000
016e67dc  dup v0.2D,xzr
016e67e0  add x8,x8,#0xc70
016e67e4  mov v0.D[0x0],x8
016e67e8  str q0,[x0]
016e67ec  ldr x0,[sp, #0x10]
016e67f0  adrp x1,0x1862000
016e67f4  add x1,x1,#0x160
016e67f8  mov w2,#0x1
016e67fc  bl 0x0124ec90
016e6800  ldr x0,[sp, #0x10]
016e6804  mov w1,#0xffffffff
016e6808  bl 0x0124c0c0
016e680c  ldr x19,[sp, #0x10]
016e6810  orr w1,wzr,#0xfffffffb
016e6814  mov w2,#0x6e7
016e6818  mov x0,x19
016e681c  bl 0x0124a650
016e6820  orr w1,wzr,#0xfffffffe
016e6824  mov x0,x19
016e6828  bl 0x0124c0c0
016e682c  orr w1,wzr,#0xfffffffe
016e6830  mov x0,x19
016e6834  bl 0x0124e920
016e6838  mov w20,w0
016e683c  adrp x1,0x5766000
016e6840  add x1,x1,#0x734
016e6844  mov x0,x19
016e6848  bl 0x0124f120
016e684c  orr w1,wzr,#0xfffffffe
016e6850  mov w2,#0x1
016e6854  mov x0,x19
016e6858  bl 0x0124cfc0
016e685c  mov x0,x19
016e6860  mov w1,w20
016e6864  bl 0x0124e060
016e6868  orr w1,wzr,#0xfffffffd
016e686c  mov x0,x19
016e6870  bl 0x0124c4d0
016e6874  ldr x19,[sp, #0x10]
016e6878  orr w1,wzr,#0xfffffffd
016e687c  mov w2,#0x6e7
016e6880  mov x0,x19
016e6884  bl 0x0124a650
016e6888  orr w1,wzr,#0xfffffffe
016e688c  mov x0,x19
016e6890  bl 0x0124c0c0
016e6894  orr w1,wzr,#0xfffffffe
016e6898  mov x0,x19
016e689c  bl 0x0124e920
016e68a0  mov w20,w0
016e68a4  adrp x1,0x5766000
016e68a8  add x1,x1,#0x734
016e68ac  mov x0,x19
016e68b0  bl 0x0124f120
016e68b4  orr w1,wzr,#0xfffffffe
016e68b8  mov w2,#0x1
016e68bc  mov x0,x19
016e68c0  bl 0x0124cfc0
016e68c4  mov x0,x19
016e68c8  mov w1,w20
016e68cc  bl 0x0124e060
016e68d0  orr w1,wzr,#0xfffffffd
016e68d4  mov x0,x19
016e68d8  bl 0x0124c4d0
016e68dc  ldr w8,[sp, #0x18]
016e68e0  ldr x0,[sp, #0x10]
016e68e4  sub w8,w8,#0x3
016e68e8  str w8,[sp, #0x18]
016e68ec  orr w1,wzr,#0xfffffffc
016e68f0  bl 0x0124c4d0
016e68f4  ldr w8,[sp, #0x18]
016e68f8  ldr x0,[sp, #0x10]
016e68fc  str wzr,[sp, #0x18]
016e6900  cmp w8,#0x1
016e6904  b.lt 0x016e6928
016e6908  mvn w1,w8
016e690c  bl 0x0124c4d0
016e6910  ldr w8,[sp, #0x18]
016e6914  cmp w8,#0x1
016e6918  b.lt 0x016e6928
016e691c  ldr x0,[sp, #0x10]
016e6920  mvn w1,w8
016e6924  bl 0x0124c4d0
016e6928  ldr w8,[sp, #0x8]
016e692c  cmp w8,#0x1
016e6930  b.lt 0x016e6940
016e6934  ldr x0,[sp]
016e6938  mvn w1,w8
016e693c  bl 0x0124c4d0
016e6940  ldp x29,x30,[sp, #0x30]
016e6944  ldp x20,x19,[sp, #0x20]
016e6948  add sp,sp,#0x40
016e694c  ret
