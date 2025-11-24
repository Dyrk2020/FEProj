// registrar 0x12c58c8 (std_hash_caller=True) entries=2
__int64 sub_12C58C8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F0730);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F0730, &unk_7223630);
  v0 = sub_1B13498(&unk_57EE8D6, 27, 0, 0);
  v1 = sub_1B13498(&unk_57EE8D6, 27, 0, 0);
  qword_82F0738 = sub_42F2580(v0 ^ HIWORD(v1), sub_4867514);
  v2 = sub_1B13498(&unk_57EE8F2, 33, 0, 0);
  v3 = sub_1B13498(&unk_57EE8F2, 33, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_486752C);
  qword_82F0740 = result;
  return result;
}
