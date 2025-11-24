// registrar 0x12d8654 (std_hash_caller=True) entries=1
__int64 sub_12D8654()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE710);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE710, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerMonsterEvolution_OnMonsterEvolution", 52, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerMonsterEvolution_OnMonsterEvolution", 52, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADB2D8);
  qword_82FE718 = result;
  return result;
}
