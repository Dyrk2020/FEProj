from sim import Sim

# Decode the lazy-init blocks in send (0xbecb8), recv (0xbf0f4), NetSend-internal (0x710b4)
for name, va_start, va_end in [
    ("send@0xbecb8 -> 0x24bd90", 0xbecb8, 0xbeed4),
    ("recv@0xbf0f4 -> 0x24bdc0/0x24bdf0", 0xbf0f4, 0xbf2ec),
    ("netsend@0x710b4 -> 0x248140", 0x710b4, 0x71214),
]:
    s = Sim(va_start, va_end)
    s.run()
    print("=" * 60)
    print(name)
    for base in [0x24bd90, 0x24bdc0, 0x24bdf0, 0x248140]:
        blob = bytes(s.mem[base:base + 0x50])
        if any(blob):
            print(f"  @{base:x}:")
            for i in range(0, 0x50, 16):
                chunk = blob[i:i + 16]
                if any(chunk):
                    print(f"    +{i:02x}: " + " ".join(f"{b:02x}" for b in chunk))
