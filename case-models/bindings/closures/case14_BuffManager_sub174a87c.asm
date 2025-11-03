// ===== case14_BuffManager_sub174a87c @ 0174a87c (DecompileAt3: cleared stale instructions at entry) =====
0174a87c  stp x20,x19,[sp, #-0x20]!
0174a880  stp x29,x30,[sp, #0x10]
0174a884  add x29,sp,#0x10
0174a888  mov x20,x0
0174a88c  orr w0,wzr,#0x18
0174a890  bl 0x01250920
0174a894  mov x19,x0
0174a898  mov w2,#0xffffffff
0174a89c  mov x1,x20
0174a8a0  bl 0x0174a8d0
0174a8a4  adrp x1,0x6b7c000
0174a8a8  adrp x2,0x1610000
0174a8ac  add x1,x1,#0x5a0
0174a8b0  add x2,x2,#0xbc0
0174a8b4  mov x0,x19
0174a8b8  bl 0x0124dd00
0174a8bc  mov x20,x0
0174a8c0  mov x0,x19
0174a8c4  bl 0x0124da10
0174a8c8  mov x0,x20
0174a8cc  bl 0x01251d30
0174a8d0  sub sp,sp,#0x30
0174a8d4  stp x20,x19,[sp, #0x10]
0174a8d8  stp x29,x30,[sp, #0x20]
0174a8dc  add x29,sp,#0x20
0174a8e0  adrp x20,0x7316000
0174a8e4  ldr x20,[x20, #0x2b0]
0174a8e8  adrp x8,0x6b7c000
0174a8ec  add x8,x8,#0x5b8
0174a8f0  mov x19,x0
0174a8f4  add x8,x8,#0x10
0174a8f8  add x9,x20,#0x18
0174a8fc  stp x8,x1,[x19]
0174a900  str x9,[x19, #0x10]
0174a904  bl 0x0174a988
0174a908  ldp x29,x30,[sp, #0x20]
0174a90c  ldp x20,x19,[sp, #0x10]
0174a910  add sp,sp,#0x30
0174a914  ret
