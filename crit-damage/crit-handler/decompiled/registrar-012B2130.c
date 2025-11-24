// registrar 0x12b2130 (std_hash_caller=True) entries=1
__int64 sub_12B2130()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E9158);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E9158, &unk_7223630);
  v0 = sub_1B13498(&unk_57CD980, 36, 0, 0);
  v1 = sub_1B13498(&unk_57CD980, 36, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_440EC64);
  qword_82E9160 = result;
  return result;
}
