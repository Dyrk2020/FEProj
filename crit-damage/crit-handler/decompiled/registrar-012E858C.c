// registrar 0x12e858c (std_hash_caller=True) entries=2
__int64 sub_12E858C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308D00);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308D00, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerSkillDistance_OnUseSkill", 49, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerSkillDistance_OnUseSkill", 49, 0, 0);
  qword_8308D08 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C70AAC);
  v2 = sub_1B13498("ParallelFlowActionTriggerSkillDistance_OnStopSkill", 50, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerSkillDistance_OnStopSkill", 50, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4C70BAC);
  qword_8308D10 = result;
  return result;
}
