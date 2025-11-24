# sub_191F28C -- LogicStringCacheMgr stringcacheinfo.txt loader
# source: libFEProj-rttext.so (runtime VA == file offset)
# range 0x191f28c..0x191f5a0, capstone dump with .rela.plt call resolution.
# Reading guide (FLOWBLOCKS.md §c): getline loop -> strip CR ->
# split on ',' -> atoi(fields[0]) -> rejoin remaining columns ->
# std::map<int,string> insert.  No validation of inline blocks.
0x191f28c: stp x28, x27, [sp, #-0x60]!
0x191f290: stp x26, x25, [sp, #0x10]
0x191f294: stp x24, x23, [sp, #0x20]
0x191f298: stp x22, x21, [sp, #0x30]
0x191f29c: stp x20, x19, [sp, #0x40]
0x191f2a0: stp x29, x30, [sp, #0x50]
0x191f2a4: add x29, sp, #0x50
0x191f2a8: sub sp, sp, #0x290
0x191f2ac: adrp x24, #0x726d000
0x191f2b0: add x24, x24, #0xf00
0x191f2b4: ldr x8, [x24, #0x20]
0x191f2b8: mov x20, x1
0x191f2bc: str x0, [sp, #0x10]
0x191f2c0: cbz x8, #0x191f32c
0x191f2c4: sub sp, sp, #0xa0
0x191f2c8: stp x0, x1, [sp]
0x191f2cc: stp x2, x3, [sp, #0x10]
0x191f2d0: stp x4, x5, [sp, #0x20]
0x191f2d4: stp x6, x7, [sp, #0x30]
0x191f2d8: stp x8, x19, [sp, #0x40]
0x191f2dc: stp x20, x21, [sp, #0x50]
0x191f2e0: stp x22, x23, [sp, #0x60]
0x191f2e4: stp x24, x25, [sp, #0x70]
0x191f2e8: stp x26, x27, [sp, #0x80]
0x191f2ec: str x28, [sp, #0x90]
0x191f2f0: mov x0, sp
0x191f2f4: mov x1, x29
0x191f2f8: mov w2, #0xa0
0x191f2fc: bl #0x5413d24                                  ; -> sub_5413d24
0x191f300: ldp x0, x1, [sp]
0x191f304: ldp x8, x2, [sp, #0x10]
0x191f308: ldp x19, x20, [sp, #0x20]
0x191f30c: ldp x21, x22, [sp, #0x30]
0x191f310: ldp x23, x24, [sp, #0x40]
0x191f314: ldp x25, x26, [sp, #0x50]
0x191f318: ldp x27, x28, [sp, #0x60]
0x191f31c: ldp x29, x30, [sp, #0x70]
0x191f320: add sp, sp, x2
0x191f324: ret
0x191f328: bl #0x54138c0                                  ; -> sub_54138c0
0x191f32c: cbz x20, #0x191f8c0
0x191f330: adrp x1, #0x5674000
0x191f334: add x1, x1, #0x660
0x191f338: sub x0, x29, #0x70
0x191f33c: add x2, sp, #0x40
0x191f340: bl #0x13d8460                                  ; -> sub_13d8460
0x191f344: sub x1, x29, #0x70
0x191f348: mov x0, x20
0x191f34c: mov x2, xzr
0x191f350: bl #0x41fd288                                  ; -> sub_41fd288
0x191f354: mov x21, x0
0x191f358: bl #0x13ce148                                  ; -> sub_13ce148
0x191f35c: ldr w8, [x0, #0x84]
0x191f360: cmp w8, #5
0x191f364: b.ne #0x191f490
0x191f368: adrp x8, #0x6a7f000
0x191f36c: add x8, x8, #0x9f8
0x191f370: add x8, x8, #0x18
0x191f374: str x8, [sp, #0x40]
0x191f378: stur wzr, [x29, #-0xb0]
0x191f37c: adrp x1, #0x5674000
0x191f380: add x1, x1, #0x6b5
0x191f384: add x0, sp, #0x40
0x191f388: sub x2, x29, #0xb0
0x191f38c: mov w3, wzr
0x191f390: bl #0x1aa6a4c                                  ; -> sub_1aa6a4c
0x191f394: mov x21, x0
0x191f398: ldur w8, [x29, #-0xb0]
0x191f39c: cmp w8, #1
0x191f3a0: b.lt #0x191f40c
0x191f3a4: adrp x1, #0x5674000
0x191f3a8: add x1, x1, #0x693
0x191f3ac: add x0, sp, #0x1d0
0x191f3b0: sub x2, x29, #0x90
0x191f3b4: bl #0x13d8460                                  ; -> sub_13d8460
0x191f3b8: add x0, sp, #0x1d0
0x191f3bc: add x23, sp, #0x1d0
0x191f3c0: bl #0x2072eec                                  ; -> sub_2072eec
0x191f3c4: ldr x22, [sp, #0x1e0]
0x191f3c8: cbz x22, #0x191f400
0x191f3cc: ldr x8, [sp, #0x1d0]
0x191f3d0: add x0, x23, #0x10
0x191f3d4: sub x23, x8, x22
0x191f3d8: adrp x3, #0x564b000
0x191f3dc: add x3, x3, #0x4ab
0x191f3e0: mov x1, x22
0x191f3e4: mov w2, w23
0x191f3e8: bl #0x1a6c4cc                                  ; -> sub_1a6c4cc
0x191f3ec: cbz x23, #0x191f400
0x191f3f0: eor w8, w0, #1
0x191f3f4: tbz w8, #0, #0x191f400
0x191f3f8: mov x0, x22
0x191f3fc: bl #0x114a600                                  ; -> free
0x191f400: ldur w8, [x29, #-0xb0]
0x191f404: cmp w8, #0
0x191f408: b.gt #0x191f490
0x191f40c: adrp x1, #0x5674000
0x191f410: add x1, x1, #0x6b2
0x191f414: add x0, sp, #0x40
0x191f418: sub x2, x29, #0xb0
0x191f41c: mov w3, wzr
0x191f420: bl #0x1aa6a4c                                  ; -> sub_1aa6a4c
0x191f424: mov x21, x0
0x191f428: ldur w8, [x29, #-0xb0]
0x191f42c: cmp w8, #1
0x191f430: b.lt #0x191f490
0x191f434: adrp x1, #0x5674000
0x191f438: add x1, x1, #0x6e8
0x191f43c: add x0, sp, #0x1b0
0x191f440: sub x2, x29, #0x90
0x191f444: bl #0x13d8460                                  ; -> sub_13d8460
0x191f448: add x0, sp, #0x1b0
0x191f44c: add x23, sp, #0x1b0
0x191f450: bl #0x2072eec                                  ; -> sub_2072eec
0x191f454: ldr x22, [sp, #0x1c0]
0x191f458: cbz x22, #0x191f490
0x191f45c: ldr x8, [sp, #0x1b0]
0x191f460: add x0, x23, #0x10
0x191f464: sub x23, x8, x22
0x191f468: adrp x3, #0x564b000
0x191f46c: add x3, x3, #0x4ab
0x191f470: mov x1, x22
0x191f474: mov w2, w23
0x191f478: bl #0x1a6c4cc                                  ; -> sub_1a6c4cc
0x191f47c: cbz x23, #0x191f490
0x191f480: eor w8, w0, #1
0x191f484: tbz w8, #0, #0x191f490
0x191f488: mov x0, x22
0x191f48c: bl #0x114a600                                  ; -> free
0x191f490: cbz x21, #0x191f948
0x191f494: mov x0, x20
0x191f498: bl #0x41fbbdc                                  ; -> sub_41fbbdc
0x191f49c: mov x0, x20
0x191f4a0: bl #0x41fb7f8                                  ; -> sub_41fb7f8
0x191f4a4: adrp x1, #0x58af000
0x191f4a8: add x1, x1, #0xdfa
0x191f4ac: mov w0, wzr
0x191f4b0: bl #0x1a6c28c                                  ; -> sub_1a6c28c
0x191f4b4: add x0, x24, #0x58
0x191f4b8: ldarb w8, [x0]
0x191f4bc: tbnz w8, #0, #0x191f4d0
0x191f4c0: bl #0x1150500                                  ; -> __cxa_guard_acquire
0x191f4c4: cbz w0, #0x191f4d0
0x191f4c8: add x0, x24, #0x58
0x191f4cc: bl #0x1154fe0                                  ; -> __cxa_guard_release
0x191f4d0: ldr x8, [x20]
0x191f4d4: mov x0, x20
0x191f4d8: ldr x8, [x8, #0x50]
0x191f4dc: blr x8
0x191f4e0: add x0, sp, #0x1a8
0x191f4e4: add x2, sp, #0x40
0x191f4e8: mov x1, x21
0x191f4ec: bl #0x561b104                                  ; -> sub_561b104
0x191f4f0: add x0, sp, #0x40
0x191f4f4: add x1, sp, #0x1a8
0x191f4f8: mov w2, #8
0x191f4fc: add x19, sp, #0x40
0x191f500: bl #0x55fa6e0                                  ; -> sub_55fa6e0
0x191f504: adrp x26, #0x7216000
0x191f508: ldr x8, [sp, #0x40]
0x191f50c: ldr x26, [x26, #0x2b0]
0x191f510: add x9, x26, #0x18
0x191f514: str x9, [sp, #0x38]
0x191f518: ldur x8, [x8, #-0x18]
0x191f51c: add x8, x19, x8
0x191f520: ldr x27, [x8, #0xf0]
0x191f524: cbz x27, #0x191ff84
0x191f528: ldr x9, [sp, #0x10]
0x191f52c: sub x8, x29, #0xb0
0x191f530: adrp x24, #0x5860000
0x191f534: adrp x25, #0x5860000
0x191f538: add x22, x9, #0x10
0x191f53c: sub x9, x29, #0x90
0x191f540: add x20, sp, #0x40
0x191f544: add x24, x24, #0xae8
0x191f548: add x25, x25, #0xaf4
0x191f54c: add x23, x8, #0x10
0x191f550: add x8, x9, #0x10
0x191f554: str x8, [sp, #8]
0x191f558: ldrb w8, [x27, #0x38]
0x191f55c: cbz w8, #0x191f568
0x191f560: ldrb w8, [x27, #0x43]
0x191f564: b #0x191f588
0x191f568: mov x0, x27
0x191f56c: bl #0x55d40c0                                  ; -> sub_55d40c0
0x191f570: ldr x8, [x27]
0x191f574: ldr x8, [x8, #0x30]
0x191f578: mov w1, #0xa
0x191f57c: mov x0, x27
0x191f580: blr x8
0x191f584: mov w8, w0
0x191f588: add x0, sp, #0x40
0x191f58c: add x1, sp, #0x38
0x191f590: mov w2, w8
0x191f594: bl #0x55ddde0                                  ; -> sub_55ddde0
0x191f598: ldr x8, [x0]
0x191f59c: ldur x8, [x8, #-0x18]
