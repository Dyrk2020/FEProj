// registrar 0x12d2b1c (std_hash_caller=True) entries=1
__int64 sub_12D2B1C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FABF0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FABF0, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC7CD, 42, 0, 0);
  v1 = sub_1B13498(&unk_57FC7CD, 42, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4A5DD20);
  qword_82FABF8 = result;
  return result;
}
