// registrar 0x1165144 (std_hash_caller=True) entries=5
__int64 sub_1165144()
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

  sub_55D64B4(&unk_82CEE60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CEE60, &unk_7223630);
  v0 = sub_1B13498("PixiuAwardMgr_OnRoundChange", 27, 0, 0);
  v1 = sub_1B13498("PixiuAwardMgr_OnRoundChange", 27, 0, 0);
  qword_82CEE68 = sub_42F2580(v0 ^ HIWORD(v1), sub_21D87DC);
  v2 = sub_1B13498("PixiuAwardMgr_OnPathSelectEnd", 29, 0, 0);
  v3 = sub_1B13498("PixiuAwardMgr_OnPathSelectEnd", 29, 0, 0);
  qword_82CEE70 = sub_42F2580(v2 ^ HIWORD(v3), sub_21D87F0);
  v4 = sub_1B13498("PixiuAwardMgr_OnBetStart", 24, 0, 0);
  v5 = sub_1B13498("PixiuAwardMgr_OnBetStart", 24, 0, 0);
  qword_82CEE78 = sub_42F2580(v4 ^ HIWORD(v5), sub_21D8804);
  v6 = sub_1B13498("PixiuAwardMgr_OnBetEnd", 22, 0, 0);
  v7 = sub_1B13498("PixiuAwardMgr_OnBetEnd", 22, 0, 0);
  qword_82CEE80 = sub_42F2580(v6 ^ HIWORD(v7), sub_21D8818);
  v8 = sub_1B13498("PixiuAwardMgr_OnTeamBattleHasResult", 35, 0, 0);
  v9 = sub_1B13498("PixiuAwardMgr_OnTeamBattleHasResult", 35, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_21D882C);
  qword_82CEE88 = result;
  return result;
}
