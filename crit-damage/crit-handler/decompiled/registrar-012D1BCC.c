// registrar 0x12d1bcc (std_hash_caller=True) entries=5
__int64 sub_12D1BCC()
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

  sub_55D64B4(&unk_82FA120);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA120, &unk_7223630);
  v0 = sub_1B13498("FlowActionRunesStatistics_OnAfterCalDamageAttackHandler", 55, 0, 0);
  v1 = sub_1B13498("FlowActionRunesStatistics_OnAfterCalDamageAttackHandler", 55, 0, 0);
  qword_82FA128 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A432AC);
  v2 = sub_1B13498("FlowActionRunesStatistics_OnHealHPHandler", 41, 0, 0);
  v3 = sub_1B13498("FlowActionRunesStatistics_OnHealHPHandler", 41, 0, 0);
  qword_82FA130 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A432C4);
  v4 = sub_1B13498("FlowActionRunesStatistics_OnBeHealHPHandler", 43, 0, 0);
  v5 = sub_1B13498("FlowActionRunesStatistics_OnBeHealHPHandler", 43, 0, 0);
  qword_82FA138 = sub_42F2580(v4 ^ HIWORD(v5), sub_4A432DC);
  v6 = sub_1B13498("FlowActionRunesStatistics_OnShieldHandler", 41, 0, 0);
  v7 = sub_1B13498("FlowActionRunesStatistics_OnShieldHandler", 41, 0, 0);
  qword_82FA140 = sub_42F2580(v6 ^ HIWORD(v7), sub_4A432F4);
  v8 = sub_1B13498("FlowActionRunesStatistics_OnAddMoneyHandler", 43, 0, 0);
  v9 = sub_1B13498("FlowActionRunesStatistics_OnAddMoneyHandler", 43, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_4A4330C);
  qword_82FA148 = result;
  return result;
}
