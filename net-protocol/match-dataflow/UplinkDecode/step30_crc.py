#!/usr/bin/env python3
"""UplinkDecode step 30: test CRC hypotheses on 010301 byte6."""
import json
from pathlib import Path

PROJ = Path('<research-workspace>')
OUT = PROJ / 'work/match-dataflow-20260812/UplinkDecode'
frames = json.load(open(OUT / 'uplink_ch06_frames.json'))
sub1 = [f for f in frames if f['sub'] == '010301'][:60]
pls = [bytes.fromhex(f['payload']) for f in sub1]

def crc8_maxim(data, init=0):
    crc = init
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = ((crc << 1) ^ 0x31) & 0xFF if crc & 0x80 else (crc << 1) & 0xFF
    return crc

def crc8_itu(data, init=0):
    crc = init
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = ((crc << 1) ^ 0x07) & 0xFF if crc & 0x80 else (crc << 1) & 0xFF
    return crc

def crc8_smbus(data, init=0):
    crc = init
    for b in data:
        crc ^= b
        for _ in range(8):
            crc = ((crc << 1) ^ 0x07) & 0xFF if crc & 0x80 else (crc << 1) & 0xFF
    return crc

def chk(data):  # simple byte XOR
    x = 0
    for b in data:
        x ^= b
    return x

def chk2(data):  # sum low byte
    return sum(data) & 0xFF

for name, fn in [('xor', chk), ('sum', chk2), ('maxim', crc8_maxim), ('itu', crc8_itu)]:
    ok = 0
    for pl in pls:
        if fn(pl[:6]) == pl[6]:
            ok += 1
    print(f'{name}: {ok}/{len(pls)}')

# maybe crc covers pos+time only (bytes 0-1, 4-5)
for name, fn in [('xor', chk), ('sum', chk2), ('maxim', crc8_maxim), ('itu', crc8_itu)]:
    ok = 0
    for pl in pls:
        if fn(pl[:2] + pl[4:6]) == pl[6]:
            ok += 1
    print(f'{name} pos+time: {ok}/{len(pls)}')
