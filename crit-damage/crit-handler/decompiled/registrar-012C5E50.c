// registrar 0x12c5e50 (std_hash_caller=True) entries=2
__int64 sub_12C5E50()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F0B60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F0B60, &unk_7223630);
  v0 = sub_1B13498(&unk_57EF2F8, 43, 0, 0);
  v1 = sub_1B13498(&unk_57EF2F8, 43, 0, 0);
  qword_82F0B68 = sub_42F2580(v0 ^ HIWORD(v1), sub_4876EB0);
  v2 = sub_1B13498(&unk_57EF324, 42, 0, 0);
  v3 = sub_1B13498(&unk_57EF324, 42, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4876F80);
  qword_82F0B70 = result;
  return result;
}
