// registrar 0x115e7bc (std_hash_caller=True) entries=6
__int64 sub_115E7BC()
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
  __int64 result; // x0

  sub_55D64B4(&unk_82C5FA0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C5FA0, &unk_7223630);
  v0 = sub_1B13498("BattleActor_OnReborn", 20, 0, 0);
  v1 = sub_1B13498("BattleActor_OnReborn", 20, 0, 0);
  qword_82C5FA8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1E8F10C);
  v2 = sub_1B13498("BattleActor_OnStateChangedHandler", 33, 0, 0);
  v3 = sub_1B13498("BattleActor_OnStateChangedHandler", 33, 0, 0);
  qword_82C5FB0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1E8F1D8);
  v4 = sub_1B13498("BattleActor_OnHurtingHandler", 28, 0, 0);
  v5 = sub_1B13498("BattleActor_OnHurtingHandler", 28, 0, 0);
  qword_82C5FB8 = sub_42F2580(v4 ^ HIWORD(v5), sub_1E8F2C4);
  v6 = sub_1B13498("BattleActor_OnNaviTransformed", 29, 0, 0);
  v7 = sub_1B13498("BattleActor_OnNaviTransformed", 29, 0, 0);
  qword_82C5FC0 = sub_42F2580(v6 ^ HIWORD(v7), sub_1E8F390);
  v8 = sub_1B13498("BattleActor_OnBeforeFowChange", 29, 0, 0);
  v9 = sub_1B13498("BattleActor_OnBeforeFowChange", 29, 0, 0);
  qword_82C5FC8 = sub_42F2580(v8 ^ HIWORD(v9), sub_1E8F3A4);
  v10 = sub_1B13498("BattleActor_OnAfterFowChange", 28, 0, 0);
  v11 = sub_1B13498("BattleActor_OnAfterFowChange", 28, 0, 0);
  result = sub_42F2580(v10 ^ HIWORD(v11), sub_1E8F450);
  qword_82C5FD0 = result;
  return result;
}
