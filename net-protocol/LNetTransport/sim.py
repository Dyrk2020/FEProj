from lnet_tools import RAW

# Minimal A64 interpreter for the lazy-init block 0xbecb8..0xbeed4 (send fn prologue).
# Executes real instructions; handles the subset used there.
import struct


class Sim:
    def __init__(self, va_start, va_end, key=0):
        self.pc = va_start
        self.end = va_end
        self.regs = {}
        self.v = {}  # 16-byte vectors
        self.key = key

    def read_w(self, va):
        w = struct.unpack_from('<I', RAW, va)[0]
        if self.key:
            w ^= self.key * 0x01010101
        return w

    def step(self):
        va = self.pc
        ins = self.read_w(va)
        self.pc += 4
        m = ins >> 26
        # movz w/x, #imm16, lsl #hw
        if (ins & 0x7F800000) == 0x52800000 or (ins & 0x7F800000) == 0xD2800000:
            sf = (ins >> 31) & 1
            hw = (ins >> 21) & 3
            imm16 = (ins >> 5) & 0xFFFF
            rd = ins & 0x1F
            self.regs[rd] = (imm16 << (16 * hw)) & ((1 << (64 if sf else 32)) - 1)
            return
        # movn
        if (ins & 0x7F800000) == 0x12800000 or (ins & 0x7F800000) == 0x92800000:
            sf = (ins >> 31) & 1
            hw = (ins >> 21) & 3
            imm16 = (ins >> 5) & 0xFFFF
            rd = ins & 0x1F
            self.regs[rd] = (~(imm16 << (16 * hw))) & ((1 << (64 if sf else 32)) - 1)
            return
        # movk
        if (ins & 0x7F800000) == 0x72800000 or (ins & 0x7F800000) == 0xF2800000:
            sf = (ins >> 31) & 1
            hw = (ins >> 21) & 3
            imm16 = (ins >> 5) & 0xFFFF
            rd = ins & 0x1F
            mask = 0xFFFF << (16 * hw)
            self.regs[rd] = (self.regs.get(rd, 0) & ~mask) | (imm16 << (16 * hw))
            return
        # add/sub immediate
        if (ins & 0x1F800000) == 0x11000000 or (ins & 0x1F800000) == 0x19000000:
            sf = (ins >> 31) & 1
            op = (ins >> 30) & 1
            S = (ins >> 29) & 1
            shift = (ins >> 22) & 1
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            v = self.regs.get(rn, 0)
            imm = imm12 << (12 if shift else 0)
            if (ins & 0x1F800000) == 0x11000000:
                self.regs[rd] = (v + imm) & ((1 << (64 if sf else 32)) - 1)
            else:
                self.regs[rd] = (v - imm) & ((1 << (64 if sf else 32)) - 1)
            return
        # logical (shifted register): AND/BIC/AND?/ORR/ORN/EOR/EON — opc+N
        if (ins & 0x1F000000) == 0x0A000000 or (ins & 0x1F000000) == 0x2A000000 \
                or (ins & 0x1F000000) == 0x4A000000 or (ins & 0x1F000000) == 0x8A000000 \
                or (ins & 0x1F000000) == 0xAA000000 or (ins & 0x1F000000) == 0xCA000000:
            opc = (ins >> 29) & 3
            N = (ins >> 21) & 1
            rm = (ins >> 16) & 0x1F
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            a = self.regs.get(rn, 0)
            b = self.regs.get(rm, 0)
            if opc == 0:
                r = a & (~b if N else b)
            elif opc == 1:
                r = a & (~b if N else b)  # ANDS/BICS — flags not modeled
            elif opc == 2:
                r = a | (~b if N else b)
            else:
                r = a ^ (~b if N else b)
            self.regs[rd] = r & 0xFFFFFFFF
            return
        # and imm / bic imm: and wN, wN, #imm (logical immediate)
        if (ins >> 23) == 0b1001000 and ((ins >> 31) & 1) == 0 and ((ins >> 29) & 3) == 0:
            # AND (immediate) 32-bit
            imm = decode_aimm(ins)
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            self.regs[rd] = (self.regs.get(rn, 0) & imm) & 0xFFFFFFFF
            return
        # adrp
        if (ins & 0x9F000000) == 0x90000000:
            immlo = (ins >> 29) & 3
            immhi = (ins >> 5) & 0x7FFFF
            imm = ((immhi << 2) | immlo) << 12
            if imm & (1 << 32):
                imm -= (1 << 33)
            rd = ins & 0x1F
            self.regs[rd] = ((self.pc - 4) & ~0xFFF) + imm
            return
        # ldrb wN, [xN, #imm] unsigned offset
        if (ins & 0xFFC00000) == 0x39400000:
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12
            self.regs[rt] = RAW[addr]
            return
        # strb wN, [xN, #imm]
        if (ins & 0xFFC00000) == 0x39000000:
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12
            # write into a shadow copy of memory
            self.mem[addr] = self.regs.get(rt, 0) & 0xFF
            return
        # ldr q (128) / ldr d (64) unsigned offset
        if (ins & 0xFFC00000) == 0x3DC00000:  # ldr q
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12 * 16
            self.v[rt] = bytes(RAW[addr:addr + 16])
            return
        if (ins & 0xFFC00000) == 0xFD400000:  # ldr d
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12 * 8
            self.v[rt] = bytes(RAW[addr:addr + 8])
            return
        if (ins & 0xFFC00000) == 0x3D000000:  # str q scaled
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12 * 16
            self.mem[addr:addr + 16] = self.v.get(rt, bytes(16))
            return
        if (ins >> 21) & 0x7FF == 0x1EC and (ins >> 10) & 3 == 0:  # stur q
            imm9 = (ins >> 12) & 0x1FF
            if imm9 & 0x100:
                imm9 -= 0x200
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm9
            self.mem[addr:addr + 16] = self.v.get(rt, bytes(16))
            return
        if (ins >> 21) & 0x7FF == 0x1EE and (ins >> 10) & 3 == 0:  # ldur q
            imm9 = (ins >> 12) & 0x1FF
            if imm9 & 0x100:
                imm9 -= 0x200
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm9
            self.v[rt] = bytes(self.mem[addr:addr + 16])
            return
        if (ins & 0xFFC00000) == 0xFD000000:  # str d
            imm12 = (ins >> 10) & 0xFFF
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm12 * 8
            self.mem[addr:addr + 8] = self.v.get(rt, bytes(8))
            return
        # ldur d / stur d (unscaled)
        if (ins >> 21) & 0x7FF == 0x7E2:  # ldur d
            imm9 = (ins >> 12) & 0x1FF
            if imm9 & 0x100:
                imm9 -= 0x200
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm9
            self.v[rt] = bytes(self.mem[addr:addr + 8])
            return
        if (ins >> 21) & 0x7FF == 0x7E0:  # stur d
            imm9 = (ins >> 12) & 0x1FF
            if imm9 & 0x100:
                imm9 -= 0x200
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            addr = self.regs.get(rn, 0) + imm9
            self.mem[addr:addr + 8] = self.v.get(rt, bytes(8))
            return
        # NOT (vector) mvn Vd.16B/8B, Vn
        if (ins & 0xFFFFFC00) == 0x6E205800 or (ins & 0xFFFFFC00) == 0x2E205800:
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            d = self.v.get(rn, bytes(16))
            self.v[rd] = bytes(b ^ 0xFF for b in d)
            return
        # EOR (vector) Vd.16B/8B, Vn, Vm
        if (ins & 0xFFE0FC00) == 0x6E201C00 or (ins & 0xFFE0FC00) == 0x2E201C00:
            rm = (ins >> 16) & 0x1F
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            vn = self.v.get(rn, bytes(16))
            vm = self.v.get(rm, bytes(16))
            self.v[rd] = bytes(a ^ b for a, b in zip(vn, vm))
            return
        # MOVI Vd.16B/8B, #imm
        if (ins >> 24) in (0x4F, 0x6F):
            import capstone as _cs
            _m = _cs.Cs(_cs.CS_ARCH_ARM64, _cs.CS_MODE_ARM)
            il = list(_m.disasm(struct.pack('<I', ins), 0))
            if il and il[0].mnemonic == 'movi':
                op = il[0].op_str
                imm = int(op.split('#')[1].split('}')[0].split(',')[0], 0)
                rd = ins & 0x1F
                self.v[rd] = bytes([imm & 0xFF]) * 16
                return
        # ldp q0, q4, [x9]
        if (ins & 0x7FC00000) in (0x6DC00000, 0xAD400000, 0x2D400000, 0x6D400000):  # ldp q offset
            imm7 = (ins >> 15) & 0x7F
            if imm7 & 0x40:
                imm7 -= 0x80
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            rt2 = (ins >> 10) & 0x1F
            addr = self.regs.get(rn, 0) + imm7 * 16
            self.v[rt] = bytes(self.mem[addr:addr + 16])
            self.v[rt2] = bytes(self.mem[addr + 16:addr + 32])
            return
        # stp q
        if (ins & 0x7FC00000) in (0x6D000000, 0xAC800000, 0x2C800000, 0xAD000000, 0x2D000000, 0x6D800000):
            imm7 = (ins >> 15) & 0x7F
            if imm7 & 0x40:
                imm7 -= 0x80
            rn = (ins >> 5) & 0x1F
            rt = ins & 0x1F
            rt2 = (ins >> 10) & 0x1F
            addr = self.regs.get(rn, 0) + imm7 * 16
            self.mem[addr:addr + 16] = self.v.get(rt, bytes(16))
            self.mem[addr + 16:addr + 32] = self.v.get(rt2, bytes(16))
            return
        # BSL Vd.16B/8B, Vn, Vm
        if (ins & 0xFFE0FC00) == 0x6E601C00 or (ins & 0xFFE0FC00) == 0x2E601C00:
            rm = (ins >> 16) & 0x1F
            rn = (ins >> 5) & 0x1F
            rd = ins & 0x1F
            vd = self.v.get(rd, bytes(16))
            vn = self.v.get(rn, bytes(16))
            vm = self.v.get(rm, bytes(16))
            out = bytes(((vn[i] & vd[i]) | (vm[i] & ~vd[i])) & 0xFF for i in range(len(vd)))
            self.v[rd] = out
            return
        # logical immediate AND/EOR/ORR (32-bit) — decode imm via capstone op str
        if (ins & 0x1F000000) in (0x12000000, 0x52000000, 0x32000000):
            # lazily map by decoding with capstone
            import capstone as _cs
            _m = _cs.Cs(_cs.CS_ARCH_ARM64, _cs.CS_MODE_ARM)
            il = list(_m.disasm(struct.pack('<I', ins), 0))
            if il:
                op = il[0].op_str
                imm = int(op.split('#')[1].split(',')[0], 0)
                rn = (ins >> 5) & 0x1F
                rd = ins & 0x1F
                a = self.regs.get(rn, 0)
                m = (ins >> 29) & 3
                if m == 0:
                    r = a & imm
                elif m == 2:
                    r = a | imm
                else:
                    r = a ^ imm
                self.regs[rd] = r & 0xFFFFFFFF
                return
        # ldar/stlr (acquire/release load/store) — exact encodings used in this block
        if ins == 0x88dffd09:  # ldar w9, [x8]
            self.regs[9] = struct.unpack_from('<I', self.mem, self.regs.get(8, 0))[0]
            return
        if ins == 0x889ffd09:  # stlr w9, [x8]
            struct.pack_into('<I', self.mem, self.regs.get(8, 0), self.regs.get(9, 0))
            return
        # cbnz/cbz
        if (ins & 0x7F000000) == 0x34000000:  # cbz w
            imm19 = (ins >> 5) & 0x7FFFF
            if imm19 & 0x40000:
                imm19 -= 0x80000
            rt = ins & 0x1F
            if self.regs.get(rt, 0) == 0:
                self.pc += imm19 * 4
            return
        if (ins & 0x7F000000) == 0x35000000:  # cbnz w
            imm19 = (ins >> 5) & 0x7FFFF
            if imm19 & 0x40000:
                imm19 -= 0x80000
            rt = ins & 0x1F
            if self.regs.get(rt, 0) != 0:
                self.pc += imm19 * 4
            return
        raise NotImplementedError(f"insn at {va:#x}: {ins:#010x}")

    def run(self):
        self.mem = bytearray(RAW)
        while self.pc < self.end:
            try:
                self.step()
            except NotImplementedError as e:
                print(f"STOP {e}")
                break
        return self.mem


def decode_aimm(ins):
    """Decode 32-bit logical immediate."""
    N = (ins >> 22) & 1
    immr = (ins >> 16) & 0x3F
    imms = (ins >> 10) & 0x3F
    # 32-bit: N must be 0
    if N != 0:
        return 0xFFFFFFFF
    # replicate pattern
    length = 32
    levels = 5
    if imms == 0x1F:
        return 0
    if (imms & 0x1F) == 0x1F:
        return 0
    # standard algorithm
    imms_b = imms & 0x1F
    immr_b = immr & 0x1F
    if imms_b == 0x1F:
        return 0xFFFFFFFF
    # build mask
    len_ = 0
    t = 0x1F & ~imms_b
    while t & 1:
        t >>= 1
        len_ += 1
    esize = 1 << len_
    # weimask
    welem = ((1 << (imms_b + 1)) - 1) & 0xFFFFFFFF
    welem = welem & ((1 << esize) - 1)
    if esize < 32:
        welem = (welem << (32 - esize)) | (welem >> esize & 0xFFFFFFFF) if False else welem
    # replicate
    result = 0
    for i in range(32 // esize):
        result |= welem << (i * esize)
    # rotate right by immr
    r = immr_b % esize
    if r:
        # rotate each esize element
        out = 0
        for i in range(32 // esize):
            e = (result >> (i * esize)) & ((1 << esize) - 1)
            e = ((e >> r) | (e << (esize - r))) & ((1 << esize) - 1)
            out |= e << (i * esize)
        result = out
    return result


s = Sim(0xbecb8, 0xbeed4)
mem = s.run()
T = mem[0x24bd90:0x24bd90 + 0x2f]
print("decoded @0x24bd90:", T.hex())
print("  ".join(f"{i:02x}:{b:02x}" for i, b in enumerate(T)))
