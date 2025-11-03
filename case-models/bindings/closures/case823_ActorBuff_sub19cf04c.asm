// ===== case823_ActorBuff_sub19cf04c @ 019cf04c (DecompileAt3: cleared stale instructions at entry) =====
019cf04c  stp x20,x19,[sp, #-0x20]!
019cf050  stp x29,x30,[sp, #0x10]
019cf054  add x29,sp,#0x10
019cf058  mov w1,#0x1
019cf05c  mov x19,x0
019cf060  bl 0x0124ff50
019cf064  cbz w0,0x019cf090
019cf068  adrp x2,0x736d000
019cf06c  adrp x3,0x736d000
019cf070  add x2,x2,#0x899
019cf074  add x3,x3,#0x898
019cf078  mov w1,#0x1
019cf07c  mov w4,#0x1
019cf080  mov x0,x19
019cf084  bl 0x0174b938
019cf088  ldr x20,[x0, #0x8]
019cf08c  b 0x019cf094
019cf090  mov x20,xzr
019cf094  mov w1,#0xb9d7
019cf098  movk w1,#0xfff0, LSL #16
019cf09c  mov x0,x19
019cf0a0  bl 0x0124e990
019cf0a4  mov x2,x0
019cf0a8  mov x0,x19
019cf0ac  mov x1,x20
019cf0b0  bl 0x019cf0c0
019cf0b4  ldp x29,x30,[sp, #0x10]
019cf0b8  ldp x20,x19,[sp], #0x20
019cf0bc  ret
