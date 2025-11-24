// registrar 0x12c3b0c (std_hash_caller=True) entries=2
__int64 sub_12C3B0C()
{
  int v0; // w20
  unsigned int v1; // w0
  int v2; // w20
  unsigned int v3; // w0

  sub_55D64B4(&unk_82EF790);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EF790, &unk_7223630);
  v0 = sub_1B13498(&unk_57ECFB3, 36, 0, 0);
  v1 = sub_1B13498(&unk_57ECFB3, 36, 0, 0);
  sub_42F2580(v0 ^ HIWORD(v1), nullsub_1273);
  v2 = sub_1B13498(&unk_57ECFD8, 41, 0, 0);
  v3 = sub_1B13498(&unk_57ECFD8, 41, 0, 0);
  return sub_42F2580(v2 ^ HIWORD(v3), nullsub_1274);
}
