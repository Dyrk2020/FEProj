// registrar 0x12c5cc0 (std_hash_caller=True) entries=1
__int64 sub_12C5CC0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F0A20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F0A20, &unk_7223630);
  v0 = sub_1B13498(&unk_57EF1DC, 35, 0, 0);
  v1 = sub_1B13498(&unk_57EF1DC, 35, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4874570);
  qword_82F0A28 = result;
  return result;
}
