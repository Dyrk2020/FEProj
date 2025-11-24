// registrar 0x12c40c0 (std_hash_caller=True) entries=2
__int64 sub_12C40C0()
{
  int v0; // w20
  unsigned int v1; // w0
  int v2; // w20
  unsigned int v3; // w0

  sub_55D64B4(&unk_82EF830);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EF830, &unk_7223630);
  v0 = sub_1B13498(&unk_57ED355, 31, 0, 0);
  v1 = sub_1B13498(&unk_57ED355, 31, 0, 0);
  sub_42F2580(v0 ^ HIWORD(v1), nullsub_1286);
  v2 = sub_1B13498(&unk_57ED375, 38, 0, 0);
  v3 = sub_1B13498(&unk_57ED375, 38, 0, 0);
  return sub_42F2580(v2 ^ HIWORD(v3), nullsub_1287);
}
