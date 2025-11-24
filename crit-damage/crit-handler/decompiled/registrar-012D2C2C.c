// registrar 0x12d2c2c (std_hash_caller=True) entries=2
__int64 sub_12D2C2C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FACE0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FACE0, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC8B3, 40, 0, 0);
  v1 = sub_1B13498(&unk_57FC8B3, 40, 0, 0);
  qword_82FACE8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A5FDEC);
  v2 = sub_1B13498(&unk_57FC8DC, 33, 0, 0);
  v3 = sub_1B13498(&unk_57FC8DC, 33, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4A5FE04);
  qword_82FACF0 = result;
  return result;
}
