// registrar 0x12b1bb8 (std_hash_caller=True) entries=1
__int64 sub_12B1BB8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E8FF8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8FF8, &unk_7223630);
  v0 = sub_1B13498(&unk_57CD553, 35, 0, 0);
  v1 = sub_1B13498(&unk_57CD553, 35, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_44052DC);
  qword_82E9000 = result;
  return result;
}
