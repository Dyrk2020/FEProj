// registrar 0x12d7da4 (std_hash_caller=True) entries=1
__int64 sub_12D7DA4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE240);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE240, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerStealSkillCastSuccess_OnStealSkillCastSuccess", 62, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerStealSkillCastSuccess_OnStealSkillCastSuccess", 62, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AD3CA8);
  qword_82FE248 = result;
  return result;
}
