// registrar 0x12c4fa0 (std_hash_caller=True) entries=1
__int64 sub_12C4FA0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EFFA8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EFFA8, &unk_7223630);
  v0 = sub_1B13498(&unk_57EDE84, 42, 0, 0);
  v1 = sub_1B13498(&unk_57EDE84, 42, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_484947C);
  qword_82EFFB0 = result;
  return result;
}
