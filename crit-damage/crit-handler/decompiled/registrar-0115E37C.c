// registrar 0x115e37c (std_hash_caller=True) entries=7
__int64 sub_115E37C()
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
  int v10; // w21
  unsigned int v11; // w0
  int v12; // w21
  unsigned int v13; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C5890);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C5890, &unk_7223630);
  v0 = sub_1B13498("BattlePlayerInteractiveMgr_OnSendFastSignal", 43, 0, 0);
  v1 = sub_1B13498("BattlePlayerInteractiveMgr_OnSendFastSignal", 43, 0, 0);
  qword_82C5898 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1E6BF3C);
  v2 = sub_1B13498("BattlePlayerInteractiveMgr_OnFastSignalReply", 44, 0, 0);
  v3 = sub_1B13498("BattlePlayerInteractiveMgr_OnFastSignalReply", 44, 0, 0);
  qword_82C58A0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1E6C004);
  v4 = sub_1B13498("BattlePlayerInteractiveMgr_OnCreateInteractive", 46, 0, 0);
  v5 = sub_1B13498("BattlePlayerInteractiveMgr_OnCreateInteractive", 46, 0, 0);
  qword_82C58A8 = sub_42F2580(v4 ^ HIWORD(v5), sub_1E6C018);
  v6 = sub_1B13498("BattlePlayerInteractiveMgr_OnActorHurt", 38, 0, 0);
  v7 = sub_1B13498("BattlePlayerInteractiveMgr_OnActorHurt", 38, 0, 0);
  qword_82C58B0 = sub_42F2580(v6 ^ HIWORD(v7), sub_1E6C02C);
  v8 = sub_1B13498("BattlePlayerInteractiveMgr_OnActorKillInfo", 42, 0, 0);
  v9 = sub_1B13498("BattlePlayerInteractiveMgr_OnActorKillInfo", 42, 0, 0);
  qword_82C58B8 = sub_42F2580(v8 ^ HIWORD(v9), sub_1E6C040);
  v10 = sub_1B13498("BattlePlayerInteractiveMgr_OnSpecialEvent", 41, 0, 0);
  v11 = sub_1B13498("BattlePlayerInteractiveMgr_OnSpecialEvent", 41, 0, 0);
  qword_82C58C0 = sub_42F2580(v10 ^ HIWORD(v11), sub_1E6C054);
  v12 = sub_1B13498("BattlePlayerInteractiveMgr_OnNotifyInteractiveFistbump", 54, 0, 0);
  v13 = sub_1B13498("BattlePlayerInteractiveMgr_OnNotifyInteractiveFistbump", 54, 0, 0);
  result = sub_42F2580(v12 ^ HIWORD(v13), sub_1E6C068);
  qword_82C58C8 = result;
  return result;
}
