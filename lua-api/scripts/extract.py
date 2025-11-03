#!/usr/bin/env python3
"""extract.py — parse Ghidra decompiled template .c files into class API records.

Template anatomy (case<N>-<Class>.c):
  func_0x0124ba40(L, &UNK_0174a87c)         ; class allocator (GOT veneer, runtime 0x114ba40)
  func_0x01251aa0(L, &UNK_0575da06)         ; get _G table ("_G" @ runtime 0x565da06)
  func_0x0174aa04 / gate_check(&class)      ; gate (runtime 0x164aa04)
  func_0x<X>(&cls, &UNK_<name>, &_G, 0x736d101)   ; beginClass: name = CLASS NAME, flags
  -- member chain (interleaved props / fns):
  PROP: X = func_0x<Y>(cls, &UNK_<name>, <getter>, 0[, <setter>, 0])
        getter can be &UNK_<code> or PTR_DAT_<data>
  FN:   p = func_0x0124cba0(cls, 0x10); p[1]=0; *p = &UNK_<fncode>
        func_0x0124ec90(cls, &UNK_<thunk>, 1)
        ... func_0x0124f120(cls, &UNK_<fnname>)   ; one per method name (registered 2x)
  -- refcount release tail: func_0x0124c4d0(...)
"""
import re, json, sys, os, importlib.util

D = '<research-workspace>/work/lua-api-reference-20260814/decompiled'
SO = '<research-workspace>/work/feproj-readable-20260814/elf-views/libFEProj-rttext.so'
data = open(SO, 'rb').read()

# reuse resolve.py's sweep/pick
_spec = importlib.util.spec_from_file_location('resolve_mod', os.path.join(os.path.dirname(__file__), 'resolve.py'))
resolve_mod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(resolve_mod)
sweep = resolve_mod.sweep
pick = resolve_mod.pick

def ptr_dat_target(ghidra_addr):
    """PTR_DAT_<addr>: read qword pointer at ghidra addr -> runtime target."""
    va = ghidra_addr - 0x100000
    off = va - 0x10000 if va >= 0x6a6c000 else va   # LOAD1 delta +0x10000
    if 0 <= off + 8 <= len(data):
        import struct
        val = struct.unpack_from('<Q', data, off)[0]
        return val
    return None

# ---- helper address sets (ghidra coords) ----
HELPER_RE = re.compile(r'^0x0124[0-9a-f]{4}$')
GATE = {'0x0174aa04'}

CALL_RE = re.compile(r'(?:(\w+)\s*=\s*(?:\([^)]*\)\s*)?)?([A-Za-z_][A-Za-z0-9_]*)\s*\(([^;]*)\);')

def split_args(s):
    args, depth, cur = [], 0, []
    for ch in s:
        if ch == '(' : depth += 1
        elif ch == ')': depth -= 1
        if ch == ',' and depth == 0:
            args.append(''.join(cur).strip()); cur = []
        else:
            cur.append(ch)
    if ''.join(cur).strip():
        args.append(''.join(cur).strip())
    return args

REF_RE = re.compile(r'&?(UNK|PTR_DAT)_([0-9a-fA-F]{8})')
INT_RE = re.compile(r'^(0x[0-9a-fA-F]+|\d+)$')

def parse_ref(arg):
    m = REF_RE.search(arg)
    if m:
        return int(m.group(2), 16)
    return None

def extract_one(path, cls_bind_s=None, cls_bind=None):
    txt = open(path).read()
    fnm = re.search(r'void (case\d+_[A-Za-z0-9_]+)\(', txt)
    fname = fnm.group(1) if fnm else os.path.basename(path)
    case = int(re.search(r'case(\d+)-', os.path.basename(path)).group(1))
    body = txt[txt.find('{'):]
    rec = dict(case=case, fname=fname, class_name=None, class_flags=None,
               props=[], fns=[], begin_addr=None, errors=[],
               cls_bind_s=cls_bind_s, cls_bind=cls_bind)
    calls = []  # (func_addr, args, lineno-ish idx)
    for m in CALL_RE.finditer(body):
        fn = (m.group(2) or '')
        if fn.startswith('func_0x'):
            fa = int(fn[7:], 16)
        else:
            fa = None
        args = split_args(m.group(3))
        calls.append((fa, args))
    # beginClass: 4 args, last == 0x736d101 (any helper name: func_0x... or named like beginclass_tmpl)
    begin_i = None
    for i, (fa, args) in enumerate(calls):
        if len(args) == 4 and args[3] == '0x736d101':
            begin_i = i
            rec['begin_addr'] = fa
            break
    if begin_i is None:
        rec['errors'].append('no beginClass')
        return rec
    name_ref = parse_ref(calls[begin_i][1][1])
    if name_ref:
        hint_s = rec.get('cls_bind_s', '') or ''
        hint_raw = rec.get('cls_bind', '') or ''
        cands = sweep(name_ref)
        nm = None
        for s, d, k in cands:
            if s == hint_s:
                nm = s; break
        if nm is None:
            for s, d, k in cands:
                if s == hint_raw:
                    nm = s; break
        if nm is None:
            for s, d, k in cands:
                if hint_raw and s.startswith(hint_s):
                    nm = s; break
        if nm is None and cands:
            # fall back to best-looking candidate
            nm = pick(name_ref)
        if nm and (nm == hint_s or not hint_s):
            rec['class_name'] = nm
            rec['class_name_resolved'] = True
            rec['class_name_raw'] = nm
        elif nm and nm == hint_raw:
            # raw TSV name (e.g. "Foo* >") matches the code string verbatim
            rec['class_name'] = nm
            rec['class_name_display'] = hint_s
            rec['class_name_resolved'] = True
            rec['class_name_raw'] = nm
        elif nm and hint_s and nm.startswith(hint_s):
            rec['class_name'] = nm
            rec['class_name_display'] = hint_s
            rec['class_name_resolved'] = True
            rec['class_name_raw'] = nm
        elif nm and hint_s:
            # candidate exists but mismatches BINDINGS: keep BINDINGS name, note ref mismatch
            rec['class_name'] = hint_s
            rec['class_name_resolved'] = False
            rec['class_name_ref_mismatch'] = (nm, name_ref)
        else:
            rec['class_name'] = hint_s or None
            rec['class_name_resolved'] = False
        rec['class_name_ref'] = name_ref
    else:
        rec['errors'].append('beginClass name not a ref')
    # fn blocks: cba0 markers
    cba = [i for i, (fa, args) in enumerate(calls) if fa == 0x0124cba0]
    fn_block = set()
    for bi in cba:
        # assignments *var = &UNK_<code> between cba0 and ec90
        code_ref = None
        for m in re.finditer(r'\*(\w+)\s*=\s*&(UNK|PTR_DAT)_([0-9a-fA-F]{8})', body):
            pass
        # scan from cba0 to next cba0/EOF: capture ec90 thunk, f120 names, *p=code
        end = cba[cba.index(bi)+1] if cba.index(bi)+1 < len(cba) else len(calls)
        seg = calls[bi:end]
        fn_code = None
        thunk = None
        for fa, args in seg:
            if fa == 0x0124ec90 and len(args) >= 2:
                thunk = parse_ref(args[1])
            if fa == 0x0124f120 and len(args) >= 2:
                nr = parse_ref(args[1])
                rec['fns'].append(dict(name=None, name_ref=nr, code=fn_code, thunk=thunk))
            if fa is None:
                pass
        # the code pointer: look in raw body for '*p = &UNK_..' near this block start
        # (find the first such assignment after this cba0's position)
        # simpler: assignment lines captured separately
        # resolve code from the cba0 call context: scan statements
        for fa, args in seg:
            if fa == 0x0124ec90:
                thunk = parse_ref(args[1])
        # set code for fns recorded in this block (they were recorded with code=None)
        # find the *var = &UNK_ assignment immediately following cba0
    # --- redo fn extraction with statement-level scan for code pointer ---
    stmts = [s.strip() for s in body.split(';') if s.strip()]
    rec['fns'] = []
    i = 0
    while i < len(stmts):
        st = stmts[i]
        m = re.match(r'(?:(\w+)\s*=\s*(?:\([^)]*\)\s*)?)?func_0x0124cba0\((.+)\)', st)
        if m:
            block = {'code': None, 'thunk': None, 'names': []}
            j = i + 1
            while j < len(stmts):
                s2 = stmts[j]
                m2 = re.match(r'\*(\w+)\s*=\s*&(UNK)_([0-9a-fA-F]{8})', s2)
                if m2 and block['code'] is None:
                    block['code'] = int(m2.group(3), 16)
                m3 = re.match(r'func_0x0124ec90\(([^,]+),\s*&(UNK)_([0-9a-fA-F]{8}),\s*1\)', s2)
                if m3 and block['thunk'] is None:
                    block['thunk'] = int(m3.group(3), 16)
                m4 = re.match(r'func_0x0124f120\(([^,]+),\s*&(UNK)_([0-9a-fA-F]{8})\)', s2)
                if m4:
                    block['names'].append(int(m4.group(3), 16))
                if re.match(r'(?:(\w+)\s*=\s*)?func_0x0124cba0\(', s2):
                    break
                j += 1
            for nr in block['names']:
                rec['fns'].append(dict(name=None, name_ref=nr,
                                       code=block['code'], thunk=block['thunk']))
            i = j
        else:
            i += 1
    # props: non-helper calls after beginClass with 4/6 args, args[1] = ref
    for fa, args in calls[begin_i+1:]:
        if fa is None: continue
        if HELPER_RE.match(f'{fa:#x}'): continue
        if fa in GATE or fa == 0x0124ba40 or fa == 0x01251aa0: continue
        if len(args) not in (4, 6): continue
        nr = parse_ref(args[1])
        if nr is None: continue
        getter = parse_ref(args[2])
        setter = parse_ref(args[4]) if len(args) == 6 else None
        idx = None
        for k in (3, 5):
            if k < len(args) and INT_RE.match(args[k]) and args[k] not in ('0', '0x0'):
                idx = args[k]
        rec['props'].append(dict(name=None, name_ref=nr, getter=getter,
                                 setter=setter, index=idx,
                                 getter_ptr=('PTR_DAT' in args[2])))
    return rec

def main():
    rows = json.load(open(sys.argv[1] if len(sys.argv) > 1 else '/tmp/bind_rows_sanitized.json'))
    out = {}
    for r in rows:
        fn = f"case{r['case']}-{r['cls_s']}.c"
        p = os.path.join(D, fn)
        if not os.path.exists(p):
            out[r['case']] = dict(error='missing')
            continue
        rec = extract_one(p, cls_bind_s=r['cls_s'], cls_bind=r['cls'])
        rec['cls_bind'] = r['cls']
        rec['cls_bind_s'] = r['cls_s']
        rec['props_expected'] = r['props']
        rec['fns_expected'] = r['fns']
        out[r['case']] = rec
    json.dump(out, open('/tmp/extracted.json', 'w'), indent=1)
    # quick stats
    no_begin = [c for c, v in out.items() if 'no beginClass' in v.get('errors', [])]
    print("cases:", len(out), "| no beginClass:", len(no_begin), no_begin[:10])
    ncls = sum(1 for v in out.values() if v.get('class_name'))
    print("class names resolved:", ncls)
    totp = sum(len(v.get('props', [])) for v in out.values())
    totf = sum(len(v.get('fns', [])) for v in out.values())
    print("total props:", totp, "total fn-regs:", totf)

if __name__ == '__main__':
    main()
