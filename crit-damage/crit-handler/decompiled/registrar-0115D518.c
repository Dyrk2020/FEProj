// registrar 0x115d518 (std_hash_caller=True) entries=2
__int64 sub_115D518()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C49A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C49A0, &unk_7223630);
  v0 = sub_1B13498(&unk_569EEE3, 24, 0, 0);
  v1 = sub_1B13498(&unk_569EEE3, 24, 0, 0);
  qword_82C49A8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1E02504);
  v2 = sub_1B13498(&unk_569EEFC, 23, 0, 0);
  v3 = sub_1B13498(&unk_569EEFC, 23, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1E025A8);
  qword_82C49B0 = result;
  return result;
}
