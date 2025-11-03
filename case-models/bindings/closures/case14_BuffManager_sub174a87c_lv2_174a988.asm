// ===== case14_BuffManager_sub174a87c_lv2_174a988 @ 0174a988 (DecompileAt3: cleared stale instructions at entry) =====
0174a988  stp x20,x19,[sp, #-0x20]!
0174a98c  stp x29,x30,[sp, #0x10]
0174a990  add x29,sp,#0x10
0174a994  mov x19,x0
0174a998  ldr x0,[x19, #0x8]
0174a99c  bl 0x0124f850
0174a9a0  cmp w0,#0x1
0174a9a4  b.lt 0x0174a9e4
0174a9a8  ldr x0,[x19, #0x8]
0174a9ac  mov w1,#0xffffffff
0174a9b0  mov x2,xzr
0174a9b4  bl 0x012522e0
0174a9b8  adrp x8,0x59af000
0174a9bc  add x8,x8,#0xdfa
0174a9c0  cmp x0,#0x0
0174a9c4  csel x20,x8,x0,eq
0174a9c8  mov x0,x20
0174a9cc  add x19,x19,#0x10
0174a9d0  bl 0x01249f90
0174a9d4  mov x2,x0
0174a9d8  mov x0,x19
0174a9dc  mov x1,x20
0174a9e0  b 0x0174a9f4
0174a9e4  adrp x1,0x5754000
0174a9e8  add x0,x19,#0x10
0174a9ec  add x1,x1,#0x439
0174a9f0  mov w2,#0xd
0174a9f4  bl 0x0571d6d8
0174a9f8  ldp x29,x30,[sp, #0x10]
0174a9fc  ldp x20,x19,[sp], #0x20
0174aa00  ret
0174aa04  sub sp,sp,#0x40
0174aa08  str x21,[sp, #0x10]
0174aa0c  stp x20,x19,[sp, #0x20]
0174aa10  stp x29,x30,[sp, #0x30]
0174aa14  add x29,sp,#0x30
0174aa18  ldr w8,[x0, #0x8]
0174aa1c  cbz w8,0x0174aa34
0174aa20  ldp x29,x30,[sp, #0x30]
0174aa24  ldp x20,x19,[sp, #0x20]
0174aa28  ldr x21,[sp, #0x10]
0174aa2c  add sp,sp,#0x40
0174aa30  ret
0174aa34  mov w0,#0x10
0174aa38  bl 0x01250920
0174aa3c  mov x19,x0
0174aa40  adrp x1,0x575d000
0174aa44  add x1,x1,#0xa09
0174aa48  add x0,sp,#0x8
0174aa4c  mov x2,sp
0174aa50  bl 0x0571b104
0174aa54  mov w21,#0x1
0174aa58  add x1,sp,#0x8
0174aa5c  mov x0,x19
0174aa60  bl 0x056febd8
0174aa64  adrp x1,0x731d000
0174aa68  adrp x2,0x7317000
0174aa6c  ldr x1,[x1, #0xa90]
0174aa70  ldr x2,[x2, #0xd10]
0174aa74  mov x0,x19
0174aa78  mov w21,wzr
0174aa7c  bl 0x0124dd00
0174aa80  mov x20,x0
0174aa84  b 0x0174aadc
