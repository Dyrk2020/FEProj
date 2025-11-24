// registrar 0x12b1fe0 (std_hash_caller=True) entries=1
__int64 sub_12B1FE0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E9100);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E9100, &unk_7223630);
  v0 = sub_1B13498(&unk_57CD888, 32, 0, 0);
  v1 = sub_1B13498(&unk_57CD888, 32, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_439C2F8);
  qword_82E9108 = result;
  return result;
}
