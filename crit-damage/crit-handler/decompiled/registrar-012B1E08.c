// registrar 0x12b1e08 (std_hash_caller=True) entries=2
__int64 sub_12B1E08()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E9090);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E9090, &unk_7223630);
  v0 = sub_1B13498(&unk_57CD732, 42, 0, 0);
  v1 = sub_1B13498(&unk_57CD732, 42, 0, 0);
  qword_82E9098 = sub_42F2580(v0 ^ HIWORD(v1), sub_439C2F8);
  v2 = sub_1B13498(&unk_57CD75D, 47, 0, 0);
  v3 = sub_1B13498(&unk_57CD75D, 47, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4408610);
  qword_82E90A0 = result;
  return result;
}
