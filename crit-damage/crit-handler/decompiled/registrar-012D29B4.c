// registrar 0x12d29b4 (std_hash_caller=True) entries=4
__int64 sub_12D29B4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FAB70);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FAB70, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC6CF, 47, 0, 0);
  v1 = sub_1B13498(&unk_57FC6CF, 47, 0, 0);
  qword_82FAB78 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A5D0A0);
  v2 = sub_1B13498(&unk_57FC6FF, 46, 0, 0);
  v3 = sub_1B13498(&unk_57FC6FF, 46, 0, 0);
  qword_82FAB80 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A5D0B8);
  v4 = sub_1B13498(&unk_57FC72E, 51, 0, 0);
  v5 = sub_1B13498(&unk_57FC72E, 51, 0, 0);
  qword_82FAB88 = sub_42F2580(v4 ^ HIWORD(v5), sub_4A5D19C);
  v6 = sub_1B13498(&unk_57FC762, 50, 0, 0);
  v7 = sub_1B13498(&unk_57FC762, 50, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4A5D1B4);
  qword_82FAB90 = result;
  return result;
}
