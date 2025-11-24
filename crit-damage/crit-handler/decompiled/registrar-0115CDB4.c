// registrar 0x115cdb4 (std_hash_caller=True) entries=2
__int64 sub_115CDB4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C3CB0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C3CB0, &unk_7223630);
  v0 = sub_1B13498(&unk_569C109, 35, 0, 0);
  v1 = sub_1B13498(&unk_569C109, 35, 0, 0);
  qword_82C3CB8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1DB09DC);
  v2 = sub_1B13498(&unk_569C12D, 36, 0, 0);
  v3 = sub_1B13498(&unk_569C12D, 36, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1DB09F8);
  qword_82C3CC0 = result;
  return result;
}
