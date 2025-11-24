// registrar 0x12c6628 (std_hash_caller=True) entries=4
__int64 sub_12C6628()
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

  sub_55D64B4(&unk_82F1130);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1130, &unk_7223630);
  v0 = sub_1B13498(&unk_57EFA69, 38, 0, 0);
  v1 = sub_1B13498(&unk_57EFA69, 38, 0, 0);
  qword_82F1138 = sub_42F2580(v0 ^ HIWORD(v1), sub_4885EC8);
  v2 = sub_1B13498(&unk_57EFA90, 41, 0, 0);
  v3 = sub_1B13498(&unk_57EFA90, 41, 0, 0);
  qword_82F1140 = sub_42F2580(v2 ^ HIWORD(v3), sub_4885EE8);
  v4 = sub_1B13498(&unk_57EFABA, 47, 0, 0);
  v5 = sub_1B13498(&unk_57EFABA, 47, 0, 0);
  qword_82F1148 = sub_42F2580(v4 ^ HIWORD(v5), sub_4885F08);
  v6 = sub_1B13498(&unk_57EFAEA, 43, 0, 0);
  v7 = sub_1B13498(&unk_57EFAEA, 43, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4885F28);
  qword_82F1150 = result;
  return result;
}
