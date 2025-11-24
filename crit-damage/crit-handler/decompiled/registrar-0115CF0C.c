// registrar 0x115cf0c (std_hash_caller=True) entries=1
__int64 sub_115CF0C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C4070);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C4070, &unk_7223630);
  v0 = sub_1B13498(&unk_569CBF2, 28, 0, 0);
  v1 = sub_1B13498(&unk_569CBF2, 28, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1DC9A0C);
  qword_82C4078 = result;
  return result;
}
