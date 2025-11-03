// ===== case852_SkillUseObj_sub19f37fc_lv2_19f43a8 @ 019f43a8 (DecompileAt3: cleared stale instructions at entry) =====
019f43a8  stp x22,x21,[sp, #-0x30]!
019f43ac  stp x20,x19,[sp, #0x10]
019f43b0  stp x29,x30,[sp, #0x20]
019f43b4  add x29,sp,#0x20
019f43b8  mov x19,x0
019f43bc  ldrb w8,[x19]
019f43c0  mov w20,w1
019f43c4  cmp w8,w20, UXTB 
019f43c8  b.eq 0x019f448c
019f43cc  adrp x21,0x7319000
019f43d0  ldr x21,[x21, #0x548]
019f43d4  ldr x8,[x21]
019f43d8  cbz x8,0x019f4428
019f43dc  mov x0,xzr
019f43e0  bl 0x01b4868c
019f43e4  tst w0,#0xff
019f43e8  b.eq 0x019f4488
019f43ec  ldrb w8,[x19]
019f43f0  cmp w8,w20, UXTB 
019f43f4  b.eq 0x019f4488
019f43f8  ldur w8,[x19, #-0x44]
019f43fc  cmp w8,#0x1
019f4400  b.lt 0x019f4488
019f4404  bl 0x01b4635c
019f4408  ldur w8,[x19, #-0x44]
019f440c  ldr x0,[x0, #0x38]
019f4410  mov w2,#0x472
019f4414  mov w1,w20
019f4418  add w8,w8,#0x22
019f441c  str w8,[x0, #0x10]
019f4420  bl 0x01b4907c
019f4424  b 0x019f4488
019f4428  str x30,[x21]
019f442c  adrp x22,0x7317000
019f4430  ldr x22,[x22, #0xd28]
019f4434  mov x0,xzr
019f4438  strb wzr,[x22]
019f443c  bl 0x01b4868c
019f4440  tst w0,#0xff
019f4444  b.eq 0x019f4480
019f4448  ldrb w8,[x19]
019f444c  cmp w8,w20, UXTB 
019f4450  b.eq 0x019f4480
019f4454  ldur w8,[x19, #-0x44]
019f4458  cmp w8,#0x1
019f445c  b.lt 0x019f4480
019f4460  bl 0x01b4635c
019f4464  ldur w8,[x19, #-0x44]
019f4468  ldr x0,[x0, #0x38]
019f446c  mov w2,#0x472
019f4470  mov w1,w20
019f4474  add w8,w8,#0x22
019f4478  str w8,[x0, #0x10]
019f447c  bl 0x01b4907c
019f4480  strb wzr,[x22]
019f4484  str xzr,[x21]
019f4488  strb w20,[x19]
019f448c  mov x0,x19
019f4490  ldp x29,x30,[sp, #0x20]
019f4494  ldp x20,x19,[sp, #0x10]
019f4498  ldp x22,x21,[sp], #0x30
019f449c  ret
019f44a0  stp x20,x19,[sp, #-0x20]!
019f44a4  stp x29,x30,[sp, #0x10]
019f44a8  add x29,sp,#0x10
019f44ac  mov w1,#0x1
019f44b0  mov x19,x0
019f44b4  bl 0x0124ff50
019f44b8  cbz w0,0x019f44e4
019f44bc  adrp x2,0x736d000
019f44c0  adrp x3,0x736d000
019f44c4  add x2,x2,#0x214
019f44c8  add x3,x3,#0x213
019f44cc  mov w1,#0x1
019f44d0  mov w4,#0x1
019f44d4  mov x0,x19
019f44d8  bl 0x0174b938
019f44dc  ldr x20,[x0, #0x8]
019f44e0  b 0x019f44e8
019f44e4  mov x20,xzr
019f44e8  mov w1,#0xb9d7
019f44ec  movk w1,#0xfff0, LSL #16
019f44f0  mov x0,x19
019f44f4  bl 0x0124e990
019f44f8  mov x2,x0
019f44fc  mov x0,x19
019f4500  mov x1,x20
019f4504  bl 0x019f4514
019f4508  ldp x29,x30,[sp, #0x10]
019f450c  ldp x20,x19,[sp], #0x20
019f4510  ret
