// registrar 0x12b131c (std_hash_caller=True) entries=1
__int64 sub_12B131C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E8DD8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8DD8, &unk_7223630);
  v0 = sub_1B13498(&unk_57CCEAF, 28, 0, 0);
  v1 = sub_1B13498(&unk_57CCEAF, 28, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_439C2F8);
  qword_82E8DE0 = result;
  return result;
}
