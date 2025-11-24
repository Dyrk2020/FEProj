// registrar 0x12e7c4c (std_hash_caller=True) entries=6
__int64 sub_12E7C4C()
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

  sub_55D64B4(&unk_8308A40);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308A40, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerSkill_OnBeforeUseSkill", 47, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerSkill_OnBeforeUseSkill", 47, 0, 0);
  qword_8308A48 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C6C054);
  v2 = sub_1B13498("ParallelFlowActionTriggerSkill_OnUseSkill", 41, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerSkill_OnUseSkill", 41, 0, 0);
  qword_8308A50 = sub_42F2580(v2 ^ HIWORD(v3), sub_4C6C094);
  v4 = sub_1B13498("ParallelFlowActionTriggerSkill_OnStopSkill", 42, 0, 0);
  v5 = sub_1B13498("ParallelFlowActionTriggerSkill_OnStopSkill", 42, 0, 0);
  qword_8308A58 = sub_42F2580(v4 ^ HIWORD(v5), sub_4C6C0D4);
  v6 = sub_1B13498("ParallelFlowActionTriggerSkill_OnSkillInterrupt", 47, 0, 0);
  v7 = sub_1B13498("ParallelFlowActionTriggerSkill_OnSkillInterrupt", 47, 0, 0);
  qword_8308A60 = sub_42F2580(v6 ^ HIWORD(v7), sub_4C6C114);
  v8 = sub_1B13498("ParallelFlowActionTriggerSkill_OnCastSkill", 42, 0, 0);
  v9 = sub_1B13498("ParallelFlowActionTriggerSkill_OnCastSkill", 42, 0, 0);
  qword_8308A68 = sub_42F2580(v8 ^ HIWORD(v9), sub_4C6C154);
  v10 = sub_1B13498("ParallelFlowActionTriggerSkill_OnSkillCastSuccess", 49, 0, 0);
  v11 = sub_1B13498("ParallelFlowActionTriggerSkill_OnSkillCastSuccess", 49, 0, 0);
  result = sub_42F2580(v10 ^ HIWORD(v11), sub_4C6C194);
  qword_8308A70 = result;
  return result;
}
