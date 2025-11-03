#!/usr/bin/env python3
"""postprocess.py — rewrite decompiled/<case>-<class>.c replacing &UNK_<addr> string refs
(in string-pool range) with quoted string literals for readability. Code/data refs untouched.
Uses the same full island-delta sweep as resolve.py, with the resolved member map as override."""
import json, os, re, sys

D = '<research-workspace>/work/lua-api-reference-20260814/decompiled'
SO = '<research-workspace>/work/feproj-readable-20260814/elf-views/libFEProj-rttext.so'
data = open(SO, 'rb').read()

import importlib.util
_spec = importlib.util.spec_from_file_location('resolve_mod', os.path.join(os.path.dirname(__file__), 'resolve.py'))
resolve_mod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(resolve_mod)
sweep = resolve_mod.sweep
pick = resolve_mod.pick

# override map: ghidra name_ref -> chosen name (from extract+resolve)
try:
    ex = json.load(open('/tmp/extracted_resolved.json'))
    override = {}
    keep_unk = set()
    for v in ex.values():
        if v.get('class_name_ref') is not None:
            if v.get('class_name_resolved') and v.get('class_name'):
                override[v['class_name_ref']] = v['class_name']
            else:
                keep_unk.add(v['class_name_ref'])
        for p in v.get('props', []):
            if p.get('name_ref') is not None and p.get('name'):
                override[p['name_ref']] = p['name']
        for f in v.get('fns', []):
            if f.get('name_ref') is not None and f.get('name'):
                override[f['name_ref']] = f['name']
except Exception as e:
    override = {}
    keep_unk = set()
    print("no override map:", e)

def resolve(ga):
    if ga in override:
        return override[ga]
    va = ga - 0x100000
    if not (0x5630000 <= va < 0x5C00000):
        return None
    return pick(ga)

REF_RE = re.compile(r'&UNK_([0-9a-fA-F]{8})')
HEADER = ("// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the\n"
          "// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were\n"
          "// rewritten as &\"<string>\" by postprocess.py; code/data addresses remain as &UNK_.\n")

def main():
    files = sorted(f for f in os.listdir(D) if re.match(r'case\d+-.*\.c$', f))
    nfiles = 0; nrepl = 0
    for fn in files:
        p = os.path.join(D, fn)
        txt = open(p).read()
        def sub(m):
            ga = int(m.group(1), 16)
            if ga in keep_unk:
                return m.group(0)
            s = resolve(ga)
            if s is None:
                return m.group(0)
            nonlocal nrepl
            nrepl += 1
            return '&"{}"'.format(s.replace('\\', '\\\\').replace('"', '\\"'))
        new = REF_RE.sub(sub, txt)
        if new != txt:
            lines = new.split('\n')
            if lines and lines[0].startswith('// ===='):
                new = '\n'.join(lines[:1] + [HEADER.rstrip('\n')] + lines[1:])
            open(p, 'w').write(new)
            nfiles += 1
    print(f"rewrote {nfiles} files, {nrepl} refs resolved")

if __name__ == '__main__':
    main()
