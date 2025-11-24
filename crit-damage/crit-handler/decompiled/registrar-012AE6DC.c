// registrar 0x12ae6dc (std_hash_caller=True) entries=2
__int64 sub_12AE6DC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E8250);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8250, &unk_7223630);
  v0 = sub_1B13498("AiSurrenderVoteA_OnUpdateSurrender", 34, 0, 0);
  v1 = sub_1B13498("AiSurrenderVoteA_OnUpdateSurrender", 34, 0, 0);
  qword_82E8258 = sub_42F2580(v0 ^ HIWORD(v1), sub_438C82C);
  v2 = sub_1B13498("AiSurrenderVoteA_OnResultSurrender", 34, 0, 0);
  v3 = sub_1B13498("AiSurrenderVoteA_OnResultSurrender", 34, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_438C840);
  qword_82E8260 = result;
  return result;
}
