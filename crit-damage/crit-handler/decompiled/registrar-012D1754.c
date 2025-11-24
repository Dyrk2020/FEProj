// registrar 0x12d1754 (std_hash_caller=True) entries=14
__int64 sub_12D1754()
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
  int v14; // w21
  unsigned int v15; // w0
  int v16; // w21
  unsigned int v17; // w0
  int v18; // w21
  unsigned int v19; // w0
  int v20; // w21
  unsigned int v21; // w0
  int v22; // w21
  unsigned int v23; // w0
  int v24; // w21
  unsigned int v25; // w0
  int v26; // w21
  unsigned int v27; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FA020);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA020, &unk_7223630);
  v0 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnAfterCalDamageAttackHandler", 64, 0, 0);
  v1 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnAfterCalDamageAttackHandler", 64, 0, 0);
  qword_82FA028 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A41798);
  v2 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnHealHPHandler", 50, 0, 0);
  v3 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnHealHPHandler", 50, 0, 0);
  qword_82FA030 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A417B0);
  v4 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnShieldHandler", 50, 0, 0);
  v5 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnShieldHandler", 50, 0, 0);
  qword_82FA038 = sub_42F2580(v4 ^ HIWORD(v5), sub_4A417C8);
  v6 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnHealMPHandler", 50, 0, 0);
  v7 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnHealMPHandler", 50, 0, 0);
  qword_82FA040 = sub_42F2580(v6 ^ HIWORD(v7), sub_4A417E0);
  v8 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatPierceDamge", 52, 0, 0);
  v9 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatPierceDamge", 52, 0, 0);
  qword_82FA048 = sub_42F2580(v8 ^ HIWORD(v9), sub_4A417F8);
  v10 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceDamage", 53, 0, 0);
  v11 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceDamage", 53, 0, 0);
  qword_82FA050 = sub_42F2580(v10 ^ HIWORD(v11), sub_4A41810);
  v12 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatTargetModificationRateValueDamage", 74, 0, 0);
  v13 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatTargetModificationRateValueDamage", 74, 0, 0);
  qword_82FA058 = sub_42F2580(v12 ^ HIWORD(v13), sub_4A41828);
  v14 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatSuckBlood", 50, 0, 0);
  v15 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatSuckBlood", 50, 0, 0);
  qword_82FA060 = sub_42F2580(v14 ^ HIWORD(v15), sub_4A41840);
  v16 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatBuyEquip", 49, 0, 0);
  v17 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatBuyEquip", 49, 0, 0);
  qword_82FA068 = sub_42F2580(v16 ^ HIWORD(v17), sub_4A41858);
  v18 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatAttackerModificationRateValueDamage", 76, 0, 0);
  v19 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatAttackerModificationRateValueDamage", 76, 0, 0);
  qword_82FA070 = sub_42F2580(v18 ^ HIWORD(v19), sub_4A41870);
  v20 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceSkillCd", 54, 0, 0);
  v21 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceSkillCd", 54, 0, 0);
  qword_82FA078 = sub_42F2580(v20 ^ HIWORD(v21), sub_4A41888);
  v22 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatShieldDamageAbsorbed", 61, 0, 0);
  v23 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatShieldDamageAbsorbed", 61, 0, 0);
  qword_82FA080 = sub_42F2580(v22 ^ HIWORD(v23), sub_4A418A0);
  v24 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceEquipCd", 54, 0, 0);
  v25 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceEquipCd", 54, 0, 0);
  qword_82FA088 = sub_42F2580(v24 ^ HIWORD(v25), sub_4A418B8);
  v26 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceActiveEquipCd", 60, 0, 0);
  v27 = sub_1B13498("FlowActionRuneStatDataAddByTrigger_OnStatReduceActiveEquipCd", 60, 0, 0);
  result = sub_42F2580(v26 ^ HIWORD(v27), sub_4A418D0);
  qword_82FA090 = result;
  return result;
}
