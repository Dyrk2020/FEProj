// registrar 0x115f7cc (std_hash_caller=True) entries=1
__int64 sub_115F7CC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C8150);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C8150, &unk_7223630);
  v0 = sub_1B13498(&unk_56AD892, 30, 0, 0);
  v1 = sub_1B13498(&unk_56AD892, 30, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1F3D94C);
  qword_82C8158 = result;
  return result;
}
