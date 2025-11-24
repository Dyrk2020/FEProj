// registrar 0x12c4aa8 (std_hash_caller=True) entries=2
__int64 sub_12C4AA8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EF980);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EF980, &unk_7223630);
  v0 = sub_1B13498(&unk_57ED8E9, 43, 0, 0);
  v1 = sub_1B13498(&unk_57ED8E9, 43, 0, 0);
  qword_82EF988 = sub_42F2580(v0 ^ HIWORD(v1), sub_482F070);
  v2 = sub_1B13498(&unk_57ED915, 46, 0, 0);
  v3 = sub_1B13498(&unk_57ED915, 46, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_482F138);
  qword_82EF990 = result;
  return result;
}
