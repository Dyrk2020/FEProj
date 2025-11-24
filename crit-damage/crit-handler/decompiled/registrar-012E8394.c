// registrar 0x12e8394 (std_hash_caller=True) entries=4
__int64 sub_12E8394()
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

  sub_55D64B4(&unk_8308C50);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308C50, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectGain", 54, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectGain", 54, 0, 0);
  qword_8308C58 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C6FDE0);
  v2 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectEquipmentForge", 64, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectEquipmentForge", 64, 0, 0);
  qword_8308C60 = sub_42F2580(v2 ^ HIWORD(v3), sub_4C6FE14);
  v4 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectForge", 55, 0, 0);
  v5 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnSelectForge", 55, 0, 0);
  qword_8308C68 = sub_42F2580(v4 ^ HIWORD(v5), sub_4C6FE48);
  v6 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnBuyEquip", 52, 0, 0);
  v7 = sub_1B13498("ParallelFlowActionTriggerCherrySelectCard_OnBuyEquip", 52, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4C6FE7C);
  qword_8308C70 = result;
  return result;
}
