// registrar 0x12e9d90 (std_hash_caller=True) entries=4
__int64 sub_12E9D90()
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

  sub_55D64B4(&unk_8309620);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8309620, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnAfterCalDamageAttackHandler", 72, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnAfterCalDamageAttackHandler", 72, 0, 0);
  qword_8309628 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C8681C);
  v2 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnHealHPHandler", 58, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnHealHPHandler", 58, 0, 0);
  qword_8309630 = sub_42F2580(v2 ^ HIWORD(v3), sub_4C86834);
  v4 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnShieldHandler", 58, 0, 0);
  v5 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnShieldHandler", 58, 0, 0);
  qword_8309638 = sub_42F2580(v4 ^ HIWORD(v5), sub_4C8684C);
  v6 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnHealMPHandler", 58, 0, 0);
  v7 = sub_1B13498("ParallelFlowActionRuneStatDataAddByTrigger_OnHealMPHandler", 58, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4C86864);
  qword_8309640 = result;
  return result;
}
