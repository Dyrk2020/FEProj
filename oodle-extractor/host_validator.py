#!/usr/bin/env python3
"""Independent, fail-closed host validator for the canonical Oodle ELF outputs."""
import hashlib, json, struct, tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
INPUT_SHA = {
 "libtdr_cp.so":"541AD8A5BD621DCC92F43502746AB59B4264177D5A78C0482807F47387D8967A",
 "libLNet_cp.so":"65FD6F39BD94B344CC2CD2C87AED8375156E95098912FFCA1ADA00836EE79278",
 "libFEProj_cp.so":"11F0632EF9D8A45D544343605DF12BA3B982B817FD996CBD9C52D0F60492D67F",
 "libil2cpp_cp.so":"8DEDD827E92D74B654387CB9621678425581764F19865BF1BF270210815D859E",
 "libunity_cp.so":"7FF7721973D159169D5956147EFA8845AAE918D9B4FB95FB341B79B23F02F323",
}
OUTPUT_SHA = {
 "libtdr.so":"94C3B45384D810C9136084EEFABE6AB6EF5E1808017AF67FFC9C53FC3876495D",
 "libLNet.so":"55C2879F7ACDD0C64FB308CE3A0A1007D308417E475B431DABD9C5E0F8AB5A86",
 "libFEProj.so":"5E608F2DA59371A583929AED90E4EC4985BC8EE12FC0D44124000B94D1B8A02A",
 "libil2cpp.so":"6E8E7002169BC658FBE64BE4C6E216E22C4BF719A620940E77890B9E57211DC6",
 "libunity.so":"6DFBEC920DDD0539DE4AB2F1D5AEF783F203399AB46939DAA46B51F1B8C215AC",
}

def digest(p):
    b=p.read_bytes(); return len(b), hashlib.sha256(b).hexdigest().upper(), int.from_bytes(b[:4], 'little') if len(b)>=4 else None

def elf(p, filename):
    b=p.read_bytes()
    if len(b)<64 or b[:4] != b'\x7fELF': raise ValueError('ELF magic/header truncated')
    if b[4:6] != b'\x02\x01': raise ValueError('not ELF64 little-endian')
    ident, typ, machine, phoff, phentsize, phnum = struct.unpack_from('<16sHHIQQ', b, 0)[0], struct.unpack_from('<H',b,16)[0], struct.unpack_from('<H',b,18)[0], struct.unpack_from('<Q',b,32)[0], struct.unpack_from('<H',b,54)[0], struct.unpack_from('<H',b,56)[0]
    if (typ,machine)!=(3,183): raise ValueError('wrong ET_DYN/AArch64')
    if phentsize != 56 or phnum == 0 or phoff > len(b) or phnum > (len(b)-phoff)//phentsize: raise ValueError('program-header boundary')
    loads=[]; dynamic=None
    for i in range(phnum):
        off=phoff+i*phentsize; typ, _, p_offset, vaddr, _, filesz, _, _ = struct.unpack_from('<IIQQQQQQ',b,off)
        if p_offset > len(b) or filesz > len(b)-p_offset: raise ValueError('segment boundary')
        if typ==1: loads.append((vaddr,p_offset,filesz))
        if typ==2: dynamic=(p_offset,filesz)
    if not dynamic or dynamic[1]%16: raise ValueError('PT_DYNAMIC boundary')
    strtab=strsz=soname=None
    for off in range(dynamic[0],dynamic[0]+dynamic[1],16):
        tag,val=struct.unpack_from('<QQ',b,off)
        if tag==0: break
        if tag==5: strtab=val
        elif tag==10: strsz=val
        elif tag==14: soname=val
    if strtab is None or strsz is None or soname is None: raise ValueError('missing soname metadata')
    stroff=None
    for va,off,size in loads:
        if va<=strtab<va+size: stroff=off+(strtab-va); break
    if stroff is None or stroff>len(b) or strsz>len(b)-stroff or soname>=strsz: raise ValueError('string table boundary')
    end=b.find(b'\0',stroff+soname,stroff+strsz)
    actual=b[stroff+soname:end if end>=0 else stroff+strsz].decode('ascii')
    if actual != filename: raise ValueError(f'soname/file mismatch: {actual!r}')
    return {'class':'ELF64','endianness':'little','machine':'AArch64','type':'ET_DYN','soname':actual,'program_headers':phnum}

def validate(inp, out, expected_size):
    isize, ihash, ifirst=digest(inp)
    if ihash != INPUT_SHA[inp.name] or ifirst != expected_size:
        raise ValueError('input identity or declared output size mismatch')
    osize, ohash, ofirst=digest(out); name=out.name
    if osize != expected_size or ohash != OUTPUT_SHA[name]: raise ValueError('output identity mismatch')
    return {'status':'PASS','input':{'size':isize,'sha256':ihash,'first_u32_le':ifirst,'declared_output_size':expected_size},'output':{'size':osize,'sha256':ohash,'first_u32_le':ofirst},'elf':elf(out,name),'crc':{'status':'unsupported','reason':'Algorithm/coverage is not established by evidence; not guessed.'}}

def self_test():
    with tempfile.TemporaryDirectory() as d:
        p=Path(d)/'bad.so'; p.write_bytes(b'\x7fELF'+b'\0'*60)
        try: elf(p,'bad.so'); raise AssertionError('negative ELF accepted')
        except ValueError: pass
        p.write_bytes(b'\x7fELF' + bytes([2, 2]) + b'\0' * 58)
        try: elf(p, 'bad.so'); raise AssertionError('wrong endian accepted')
        except ValueError: pass
    print('PASS: synthetic truncated/header-negative tests rejected')

if __name__=='__main__':
    self_test()
    config=json.loads((ROOT/'app/src/main/assets/oodle_compress_config.json').read_text())
    for item in config['NativeAssets']['library']['arm64-v8a']:
        name=item['name']; out=name[:-6]+'.so'
        inp=ROOT/'app/src/main/assets/input'/name
        diagnostic=ROOT/'diagnostic-extract/lib/arm64-v8a'/out
        canonical=ROOT.parents[1]/'work/native-container-audit/decompressed-arm64'/out
        output=diagnostic if diagnostic.exists() else canonical
        if inp.exists() and output.exists(): print(json.dumps(validate(inp,output,item['size']),sort_keys=True))
    print('CRC status: unsupported (no algorithm/coverage evidence; no guess)')
