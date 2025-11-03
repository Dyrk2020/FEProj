// ===== case470-GamePlayComponentRefResObject @ 016ed79c =====
// existing function case470-GamePlayComponentRefResObject
016ed79c  sub sp,sp,#0x40
016ed7a0  stp x20,x19,[sp, #0x20]
016ed7a4  stp x29,x30,[sp, #0x30]
016ed7a8  add x29,sp,#0x30
016ed7ac  adrp x1,0x174a000
016ed7b0  add x1,x1,#0x87c
016ed7b4  mov x19,x0
016ed7b8  bl 0x0124ba40
016ed7bc  adrp x1,0x575d000
016ed7c0  add x1,x1,#0xa06
016ed7c4  mov x0,x19
016ed7c8  str x19,[sp]
016ed7cc  bl 0x01251aa0
016ed7d0  mov w8,#0x1
016ed7d4  str w8,[sp, #0x8]
016ed7d8  mov x0,sp
016ed7dc  bl 0x0174aa04
016ed7e0  adrp x1,0x5767000
016ed7e4  adrp x3,0x736d000
016ed7e8  add x1,x1,#0x146
016ed7ec  add x3,x3,#0x101
016ed7f0  add x0,sp,#0x10
016ed7f4  mov x2,sp
016ed7f8  bl 0x0187840c
016ed7fc  ldr x0,[sp, #0x10]
016ed800  mov w1,#0x10
016ed804  bl 0x0124cba0
016ed808  adrp x8,0x1878000
016ed80c  dup v0.2D,xzr
016ed810  add x8,x8,#0x20c
016ed814  mov v0.D[0x0],x8
016ed818  str q0,[x0]
016ed81c  ldr x0,[sp, #0x10]
016ed820  adrp x1,0x1878000
016ed824  add x1,x1,#0x7d0
016ed828  mov w2,#0x1
016ed82c  bl 0x0124ec90
016ed830  ldr x0,[sp, #0x10]
016ed834  mov w1,#0xffffffff
016ed838  bl 0x0124c0c0
016ed83c  ldr x19,[sp, #0x10]
016ed840  orr w1,wzr,#0xfffffffb
016ed844  mov w2,#0x6e7
016ed848  mov x0,x19
016ed84c  bl 0x0124a650
016ed850  orr w1,wzr,#0xfffffffe
016ed854  mov x0,x19
016ed858  bl 0x0124c0c0
016ed85c  orr w1,wzr,#0xfffffffe
016ed860  mov x0,x19
016ed864  bl 0x0124e920
016ed868  mov w20,w0
016ed86c  adrp x1,0x5767000
016ed870  add x1,x1,#0x164
016ed874  mov x0,x19
016ed878  bl 0x0124f120
016ed87c  orr w1,wzr,#0xfffffffe
016ed880  mov w2,#0x1
016ed884  mov x0,x19
016ed888  bl 0x0124cfc0
016ed88c  mov x0,x19
016ed890  mov w1,w20
016ed894  bl 0x0124e060
016ed898  orr w1,wzr,#0xfffffffd
016ed89c  mov x0,x19
016ed8a0  bl 0x0124c4d0
016ed8a4  ldr x19,[sp, #0x10]
016ed8a8  orr w1,wzr,#0xfffffffd
016ed8ac  mov w2,#0x6e7
016ed8b0  mov x0,x19
016ed8b4  bl 0x0124a650
016ed8b8  orr w1,wzr,#0xfffffffe
016ed8bc  mov x0,x19
016ed8c0  bl 0x0124c0c0
016ed8c4  orr w1,wzr,#0xfffffffe
016ed8c8  mov x0,x19
016ed8cc  bl 0x0124e920
016ed8d0  mov w20,w0
016ed8d4  adrp x1,0x5767000
016ed8d8  add x1,x1,#0x164
016ed8dc  mov x0,x19
016ed8e0  bl 0x0124f120
016ed8e4  orr w1,wzr,#0xfffffffe
016ed8e8  mov w2,#0x1
016ed8ec  mov x0,x19
016ed8f0  bl 0x0124cfc0
016ed8f4  mov x0,x19
016ed8f8  mov w1,w20
016ed8fc  bl 0x0124e060
016ed900  orr w1,wzr,#0xfffffffd
016ed904  mov x0,x19
016ed908  bl 0x0124c4d0
016ed90c  adrp x1,0x5767000
016ed910  adrp x2,0x1878000
016ed914  adrp x4,0x1878000
016ed918  add x1,x1,#0x16e
016ed91c  add x2,x2,#0x3fc
016ed920  add x4,x4,#0x404
016ed924  add x0,sp,#0x10
016ed928  mov x3,xzr
016ed92c  mov x5,xzr
016ed930  bl 0x01878214
016ed934  mov x19,x0
016ed938  ldr w8,[x19, #0x8]
016ed93c  ldr x0,[x19]
016ed940  sub w8,w8,#0x3
016ed944  str w8,[x19, #0x8]
016ed948  orr w1,wzr,#0xfffffffc
016ed94c  bl 0x0124c4d0
016ed950  ldr w8,[x19, #0x8]
016ed954  ldr x0,[x19]
016ed958  str wzr,[x19, #0x8]
016ed95c  cmp w8,#0x1
016ed960  b.lt 0x016ed96c
016ed964  mvn w1,w8
016ed968  bl 0x0124c4d0
016ed96c  ldr w8,[sp, #0x18]
016ed970  cmp w8,#0x1
016ed974  b.lt 0x016ed984
016ed978  ldr x0,[sp, #0x10]
016ed97c  mvn w1,w8
016ed980  bl 0x0124c4d0
016ed984  ldr w8,[sp, #0x8]
016ed988  cmp w8,#0x1
016ed98c  b.lt 0x016ed99c
016ed990  ldr x0,[sp]
016ed994  mvn w1,w8
016ed998  bl 0x0124c4d0
016ed99c  ldp x29,x30,[sp, #0x30]
016ed9a0  ldp x20,x19,[sp, #0x20]
016ed9a4  add sp,sp,#0x40
016ed9a8  ret
