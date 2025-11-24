// registrar 0x12bd420 (std_hash_caller=True) entries=3
__int64 sub_12BD420()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EC470);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EC470, &unk_7223630);
  v0 = sub_1B13498(&unk_57DF48F, 73, 0, 0);
  v1 = sub_1B13498(&unk_57DF48F, 73, 0, 0);
  qword_82EC478 = sub_42F2580(v0 ^ HIWORD(v1), sub_4600B74);
  v2 = sub_1B13498(&unk_57DF4D9, 76, 0, 0);
  v3 = sub_1B13498(&unk_57DF4D9, 76, 0, 0);
  qword_82EC480 = sub_42F2580(v2 ^ HIWORD(v3), sub_4600B88);
  v4 = sub_1B13498(&unk_57DF526, 81, 0, 0);
  v5 = sub_1B13498(&unk_57DF526, 81, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4600B9C);
  qword_82EC488 = result;
  return result;
}
