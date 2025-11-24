// registrar 0x12cfafc (std_hash_caller=True) entries=5
__int64 sub_12CFAFC()
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

  sub_55D64B4(&unk_82F8A60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F8A60, &unk_7223630);
  v0 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseMultiFireSkill", 50, 0, 0);
  v1 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseMultiFireSkill", 50, 0, 0);
  qword_82F8A68 = sub_42F2580(v0 ^ HIWORD(v1), sub_49FE5D8);
  v2 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseSplitSkill", 46, 0, 0);
  v3 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseSplitSkill", 46, 0, 0);
  qword_82F8A70 = sub_42F2580(v2 ^ HIWORD(v3), sub_49FE610);
  v4 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseScatterSkill", 48, 0, 0);
  v5 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseScatterSkill", 48, 0, 0);
  qword_82F8A78 = sub_42F2580(v4 ^ HIWORD(v5), sub_49FE648);
  v6 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseGhostSkill", 46, 0, 0);
  v7 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseGhostSkill", 46, 0, 0);
  qword_82F8A80 = sub_42F2580(v6 ^ HIWORD(v7), sub_49FE680);
  v8 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseAutoCastSkill", 49, 0, 0);
  v9 = sub_1B13498("FlowActionUseMultiSkillTrigger_OnUseAutoCastSkill", 49, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_49FE6B8);
  qword_82F8A88 = result;
  return result;
}
