// registrar 0x12c6910 (std_hash_caller=True) entries=1
__int64 sub_12C6910()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F1300);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1300, &unk_7223630);
  v0 = sub_1B13498(&unk_57EFC9B, 29, 0, 0);
  v1 = sub_1B13498(&unk_57EFC9B, 29, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_488AA1C);
  qword_82F1308 = result;
  return result;
}
