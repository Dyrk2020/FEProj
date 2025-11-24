// registrar 0x12bd108 (std_hash_caller=True) entries=5
__int64 sub_12BD108()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  int v8; // w21
  unsigned int v9; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EC3F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EC3F0, &unk_7223630);
  v0 = sub_1B13498(&unk_57DF0D8, 62, 0, 0);
  v1 = sub_1B13498(&unk_57DF0D8, 62, 0, 0);
  qword_82EC3F8 = sub_42F2580(v0 ^ HIWORD(v1), sub_45FD2B0);
  v2 = sub_1B13498(&unk_57DF117, 59, 0, 0);
  v3 = sub_1B13498(&unk_57DF117, 59, 0, 0);
  qword_82EC400 = sub_42F2580(v2 ^ HIWORD(v3), sub_45FD370);
  v4 = sub_1B13498(&unk_57DF153, 59, 0, 0);
  v5 = sub_1B13498(&unk_57DF153, 59, 0, 0);
  qword_82EC408 = sub_42F2580(v4 ^ HIWORD(v5), sub_45FD3B8);
  v6 = sub_1B13498(&unk_57DF18F, 60, 0, 0);
  v7 = sub_1B13498(&unk_57DF18F, 60, 0, 0);
  qword_82EC410 = sub_42F2580(v6 ^ HIWORD(v7), &loc_45FD488);
  v8 = sub_1B13498(&unk_57DF1CC, 57, 0, 0);
  v9 = sub_1B13498(&unk_57DF1CC, 57, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_45FD49C);
  qword_82EC418 = result;
  return result;
}
