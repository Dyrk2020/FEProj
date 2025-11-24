// registrar 0x115f324 (std_hash_caller=True) entries=1
__int64 sub_115F324()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C7BF8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C7BF8, &unk_7223630);
  v0 = sub_1B13498(&unk_56AC997, 41, 0, 0);
  v1 = sub_1B13498(&unk_56AC997, 41, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1F29FD4);
  qword_82C7C00 = result;
  return result;
}
