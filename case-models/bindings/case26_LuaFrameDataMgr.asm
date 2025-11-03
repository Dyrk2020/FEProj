// ===== case26_LuaFrameDataMgr @ 01690930 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case26-LuaFrameDataMgr
01690930  sub sp,sp,#0x40
01690934  stp x20,x19,[sp, #0x20]
01690938  stp x29,x30,[sp, #0x30]
0169093c  add x29,sp,#0x30
01690940  adrp x1,0x174a000
01690944  add x1,x1,#0x87c
01690948  mov x19,x0
0169094c  bl 0x0124ba40
01690950  adrp x1,0x575d000
01690954  add x1,x1,#0xa06
01690958  mov x0,x19
0169095c  str x19,[sp]
01690960  bl 0x01251aa0
01690964  mov w8,#0x1
01690968  str w8,[sp, #0x8]
0169096c  mov x0,sp
01690970  bl 0x0174aa04
01690974  adrp x1,0x575d000
01690978  adrp x3,0x736d000
0169097c  add x1,x1,#0xe8c
01690980  add x3,x3,#0x101
01690984  add x0,sp,#0x10
01690988  mov x2,sp
0169098c  bl 0x0175c58c
01690990  ldr x0,[sp, #0x10]
01690994  mov w1,#0x10
01690998  bl 0x0124cba0
0169099c  adrp x8,0x175c000
016909a0  dup v0.2D,xzr
016909a4  add x8,x8,#0x57c
016909a8  mov v0.D[0x0],x8
016909ac  str q0,[x0]
016909b0  ldr x0,[sp, #0x10]
016909b4  adrp x1,0x175c000
016909b8  add x1,x1,#0x950
016909bc  mov w2,#0x1
016909c0  bl 0x0124ec90
016909c4  ldr x0,[sp, #0x10]
016909c8  mov w1,#0xffffffff
016909cc  bl 0x0124c0c0
016909d0  ldr x19,[sp, #0x10]
016909d4  orr w1,wzr,#0xfffffffb
016909d8  mov w2,#0x6e7
016909dc  mov x0,x19
016909e0  bl 0x0124a650
016909e4  orr w1,wzr,#0xfffffffe
016909e8  mov x0,x19
016909ec  bl 0x0124c0c0
016909f0  orr w1,wzr,#0xfffffffe
016909f4  mov x0,x19
016909f8  bl 0x0124e920
016909fc  mov w20,w0
01690a00  adrp x1,0x575d000
01690a04  add x1,x1,#0xe9c
01690a08  mov x0,x19
01690a0c  bl 0x0124f120
01690a10  orr w1,wzr,#0xfffffffe
01690a14  mov w2,#0x1
01690a18  mov x0,x19
01690a1c  bl 0x0124cfc0
01690a20  mov x0,x19
01690a24  mov w1,w20
01690a28  bl 0x0124e060
01690a2c  orr w1,wzr,#0xfffffffd
01690a30  mov x0,x19
01690a34  bl 0x0124c4d0
01690a38  ldr x19,[sp, #0x10]
01690a3c  orr w1,wzr,#0xfffffffd
01690a40  mov w2,#0x6e7
01690a44  mov x0,x19
01690a48  bl 0x0124a650
01690a4c  orr w1,wzr,#0xfffffffe
01690a50  mov x0,x19
01690a54  bl 0x0124c0c0
01690a58  orr w1,wzr,#0xfffffffe
01690a5c  mov x0,x19
01690a60  bl 0x0124e920
01690a64  mov w20,w0
01690a68  adrp x1,0x575d000
01690a6c  add x1,x1,#0xe9c
01690a70  mov x0,x19
01690a74  bl 0x0124f120
01690a78  orr w1,wzr,#0xfffffffe
01690a7c  mov w2,#0x1
01690a80  mov x0,x19
01690a84  bl 0x0124cfc0
01690a88  mov x0,x19
01690a8c  mov w1,w20
01690a90  bl 0x0124e060
01690a94  orr w1,wzr,#0xfffffffd
01690a98  mov x0,x19
01690a9c  bl 0x0124c4d0
01690aa0  ldr x0,[sp, #0x10]
01690aa4  mov w1,#0x10
01690aa8  bl 0x0124cba0
01690aac  adrp x8,0x175c000
01690ab0  dup v0.2D,xzr
01690ab4  add x8,x8,#0x584
01690ab8  mov v0.D[0x0],x8
01690abc  str q0,[x0]
01690ac0  ldr x0,[sp, #0x10]
01690ac4  adrp x1,0x175c000
01690ac8  add x1,x1,#0xa74
01690acc  mov w2,#0x1
01690ad0  bl 0x0124ec90
01690ad4  ldr x0,[sp, #0x10]
01690ad8  mov w1,#0xffffffff
01690adc  bl 0x0124c0c0
01690ae0  ldr x19,[sp, #0x10]
01690ae4  orr w1,wzr,#0xfffffffb
01690ae8  mov w2,#0x6e7
01690aec  mov x0,x19
01690af0  bl 0x0124a650
01690af4  orr w1,wzr,#0xfffffffe
01690af8  mov x0,x19
01690afc  bl 0x0124c0c0
01690b00  orr w1,wzr,#0xfffffffe
01690b04  mov x0,x19
01690b08  bl 0x0124e920
01690b0c  mov w20,w0
01690b10  adrp x1,0x575d000
01690b14  add x1,x1,#0xea8
01690b18  mov x0,x19
01690b1c  bl 0x0124f120
01690b20  orr w1,wzr,#0xfffffffe
01690b24  mov w2,#0x1
01690b28  mov x0,x19
01690b2c  bl 0x0124cfc0
01690b30  mov x0,x19
01690b34  mov w1,w20
01690b38  bl 0x0124e060
01690b3c  orr w1,wzr,#0xfffffffd
01690b40  mov x0,x19
01690b44  bl 0x0124c4d0
01690b48  ldr x19,[sp, #0x10]
01690b4c  orr w1,wzr,#0xfffffffd
01690b50  mov w2,#0x6e7
01690b54  mov x0,x19
01690b58  bl 0x0124a650
01690b5c  orr w1,wzr,#0xfffffffe
01690b60  mov x0,x19
01690b64  bl 0x0124c0c0
01690b68  orr w1,wzr,#0xfffffffe
01690b6c  mov x0,x19
01690b70  bl 0x0124e920
01690b74  mov w20,w0
01690b78  adrp x1,0x575d000
01690b7c  add x1,x1,#0xea8
01690b80  mov x0,x19
01690b84  bl 0x0124f120
01690b88  orr w1,wzr,#0xfffffffe
01690b8c  mov w2,#0x1
01690b90  mov x0,x19
01690b94  bl 0x0124cfc0
01690b98  mov x0,x19
01690b9c  mov w1,w20
01690ba0  bl 0x0124e060
01690ba4  orr w1,wzr,#0xfffffffd
01690ba8  mov x0,x19
01690bac  bl 0x0124c4d0
01690bb0  ldr w8,[sp, #0x18]
01690bb4  ldr x0,[sp, #0x10]
01690bb8  sub w8,w8,#0x3
01690bbc  str w8,[sp, #0x18]
01690bc0  orr w1,wzr,#0xfffffffc
01690bc4  bl 0x0124c4d0
01690bc8  ldr w8,[sp, #0x18]
01690bcc  ldr x0,[sp, #0x10]
01690bd0  str wzr,[sp, #0x18]
01690bd4  cmp w8,#0x1
01690bd8  b.lt 0x01690bfc
01690bdc  mvn w1,w8
01690be0  bl 0x0124c4d0
01690be4  ldr w8,[sp, #0x18]
01690be8  cmp w8,#0x1
01690bec  b.lt 0x01690bfc
01690bf0  ldr x0,[sp, #0x10]
01690bf4  mvn w1,w8
01690bf8  bl 0x0124c4d0
01690bfc  ldr w8,[sp, #0x8]
01690c00  cmp w8,#0x1
01690c04  b.lt 0x01690c14
01690c08  ldr x0,[sp]
01690c0c  mvn w1,w8
01690c10  bl 0x0124c4d0
01690c14  ldp x29,x30,[sp, #0x30]
01690c18  ldp x20,x19,[sp, #0x20]
01690c1c  add sp,sp,#0x40
01690c20  ret
