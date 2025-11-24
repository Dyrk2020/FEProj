// registrar 0x115d3c8 (std_hash_caller=True) entries=1
__int64 sub_115D3C8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C4680);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C4680, &unk_7223630);
  v0 = sub_1B13498(&unk_569EB56, 33, 0, 0);
  v1 = sub_1B13498(&unk_569EB56, 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1DF50B0);
  qword_82C4688 = result;
  return result;
}
