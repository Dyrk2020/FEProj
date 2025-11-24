// registrar 0x12d8774 (std_hash_caller=True) entries=1
__int64 sub_12D8774()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE7D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE7D0, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerForgeEquipmentLayer_OnEquipmentLayer", 53, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerForgeEquipmentLayer_OnEquipmentLayer", 53, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADC2C4);
  qword_82FE7D8 = result;
  return result;
}
