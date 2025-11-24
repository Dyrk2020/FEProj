// registrar 0x12c63c8 (std_hash_caller=True) entries=1
__int64 sub_12C63C8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F0F60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F0F60, &unk_7223630);
  v0 = sub_1B13498(&unk_57EF86C, 22, 0, 0);
  v1 = sub_1B13498(&unk_57EF86C, 22, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_48810FC);
  qword_82F0F68 = result;
  return result;
}
