#!/usr/bin/env python3
"""resolve.py — enrich extracted.json: resolve prop/fn names via full island-delta sweep
(validated by ordered TSV member-list hints; zone-priority fallback)."""
import json, re, sys

SO = '<research-workspace>/work/feproj-readable-20260814/elf-views/libFEProj-rttext.so'
data = open(SO, 'rb').read()

DELTAS = list(range(-0x80000, 0xB0000, 0x10000))
ZONE_A = (0x5650000, 0x5685000)
ZONE_B = (0x5800000, 0x5C00000)
# delta preference per zone (most common first)
DELTA_PRIO_A = [0x60000, -0x10000, -0x20000, 0, -0x30000, 0x10000, -0x40000, 0x20000]
DELTA_PRIO_B = [0, -0x10000, -0x20000, 0x60000]
DELTA_PRIO_C = [0, -0x10000, -0x20000, 0x60000]

CLEAN = re.compile(r'^[A-Za-z_][A-Za-z0-9_]*$')

def run_at(buf, maxlen=160, minlen=1):
    n = 0
    for c in buf[:maxlen]:
        if c == 0:
            return bytes(buf[:n]).decode('ascii') if n >= minlen else None
        if not (0x20 <= c <= 0x7e):
            return None
        n += 1
    return None

def sweep(ga):
    """all (string, delta, kind) candidates for a UNK_ ghidra addr."""
    va = ga - 0x100000
    out = []
    seen = set()
    for delta in DELTAS:
        off = va + delta
        if off < 0 or off + 160 > len(data):
            continue
        s = run_at(data[off:off+160])
        if s and (s, delta, 'raw') not in seen:
            seen.add((s, delta, 'raw')); out.append((s, delta, 'raw'))
        s = run_at(bytes(c ^ 0x30 for c in data[off:off+160]))
        if s and (s, delta, 'enc') not in seen:
            seen.add((s, delta, 'enc')); out.append((s, delta, 'enc'))
    return out

def pick(ga, hint=None):
    c = sweep(ga)
    if not c:
        return None
    if hint:
        for s, d, k in c:
            if s == hint:
                return s
    va = ga - 0x100000
    prio = DELTA_PRIO_A if ZONE_A[0] <= va <= ZONE_A[1] else (DELTA_PRIO_B if ZONE_B[0] <= va <= ZONE_B[1] else DELTA_PRIO_C)
    prio_idx = {d: i for i, d in enumerate(prio)}
    def score(item):
        s, d, k = item
        clean = 0 if CLEAN.match(s) else 1
        length = 0 if 1 <= len(s) <= 48 else 1
        dp = prio_idx.get(d, 99)
        return (clean, length, dp)
    best = min(c, key=score)
    return best[0]

def main():
    ex = json.load(open('/tmp/extracted.json'))
    # TSV hints
    tsv = open('<research-workspace>/work/feproj-extended-20260814/bindings/dispatcher-881-cases.tsv').read().splitlines()
    tsv_by = {}
    for l in tsv[1:]:
        c = l.split('\t')
        tsv_by[int(c[0])] = ([x for x in (c[7] if len(c) > 7 else '').split(';') if x],
                             [x for x in (c[8] if len(c) > 8 else '').split(';') if x])
    nprop = nfn = 0
    for v in ex.values():
        tp, tf = tsv_by.get(v['case'], ([], []))
        for i, p in enumerate(v['props']):
            nr = p['name_ref']
            if nr is not None:
                hint = tp[i] if i < len(tp) else None
                nm = pick(nr, hint)
                p['name'] = nm
                if nm: nprop += 1
                p['hinted'] = hint is not None
            if p.get('getter') is not None:
                p['getter_rt'] = p['getter'] - 0x100000
            if p.get('setter') is not None:
                p['setter_rt'] = p['setter'] - 0x100000
        for i, f in enumerate(v['fns']):
            nr = f['name_ref']
            if nr is not None:
                hint = tf[i] if i < len(tf) else None
                nm = pick(nr, hint)
                f['name'] = nm
                if nm: nfn += 1
                f['hinted'] = hint is not None
            if f.get('code') is not None:
                f['code_rt'] = f['code'] - 0x100000
            if f.get('thunk') is not None:
                f['thunk_rt'] = f['thunk'] - 0x100000
        if v.get('begin_addr'):
            v['begin_rt'] = v['begin_addr'] - 0x100000
        if v.get('class_name_ref'):
            v['class_name_rt'] = v['class_name_ref'] - 0x100000
    json.dump(ex, open('/tmp/extracted_resolved.json', 'w'), indent=1)
    totp = sum(len(v['props']) for v in ex.values())
    totf = sum(len(v['fns']) for v in ex.values())
    print(f"props: {nprop}/{totp} resolved; fns: {nfn}/{totf} resolved")
    # sanity: FlowAction p5
    v = ex['1']
    print("FlowAction props:", [p['name'] for p in v['props']])
    v = ex['866']
    print("BattleActor p13:", [p['name'] for p in v['props']][12:15])

if __name__ == '__main__':
    main()
