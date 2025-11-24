// registrar 0x12c64d8 (std_hash_caller=True) entries=1
__int64 sub_12C64D8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F1020);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1020, &unk_7223630);
  v0 = sub_1B13498(&unk_57EF979, 40, 0, 0);
  v1 = sub_1B13498(&unk_57EF979, 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_488352C);
  qword_82F1028 = result;
  return result;
}
