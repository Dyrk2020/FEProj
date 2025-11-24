// registrar 0x12bd580 (std_hash_caller=True) entries=3
__int64 sub_12BD580()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EC4B0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EC4B0, &unk_7223630);
  v0 = sub_1B13498(&unk_57DF600, 28, 0, 0);
  v1 = sub_1B13498(&unk_57DF600, 28, 0, 0);
  qword_82EC4B8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4603AC4);
  v2 = sub_1B13498(&unk_57DF61D, 29, 0, 0);
  v3 = sub_1B13498(&unk_57DF61D, 29, 0, 0);
  qword_82EC4C0 = sub_42F2580(v2 ^ HIWORD(v3), sub_4603AD8);
  v4 = sub_1B13498(&unk_57DF63B, 35, 0, 0);
  v5 = sub_1B13498(&unk_57DF63B, 35, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4603AEC);
  qword_82EC4C8 = result;
  return result;
}
