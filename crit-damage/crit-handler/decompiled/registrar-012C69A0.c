// registrar 0x12c69a0 (std_hash_caller=True) entries=1
__int64 sub_12C69A0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F1340);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1340, &unk_7223630);
  v0 = sub_1B13498(&unk_57EFCE9, 26, 0, 0);
  v1 = sub_1B13498(&unk_57EFCE9, 26, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_488B038);
  qword_82F1348 = result;
  return result;
}
