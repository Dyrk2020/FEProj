// registrar 0x1166824 (std_hash_caller=True) entries=1
__int64 sub_1166824()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82D04D8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82D04D8, &unk_7223630);
  v0 = sub_1B13498(&unk_56CD808, 40, 0, 0);
  v1 = sub_1B13498(&unk_56CD808, 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_228D1B8);
  qword_82D04E0 = result;
  return result;
}
