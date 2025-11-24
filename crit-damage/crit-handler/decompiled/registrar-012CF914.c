// registrar 0x12cf914 (std_hash_caller=True) entries=4
__int64 sub_12CF914()
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

  sub_55D64B4(&unk_82F89B0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F89B0, &unk_7223630);
  v0 = sub_1B13498("FlowActionModifySkillRange_OnSkillLvUpHandler", 45, 0, 0);
  v1 = sub_1B13498("FlowActionModifySkillRange_OnSkillLvUpHandler", 45, 0, 0);
  qword_82F89B8 = sub_42F2580(v0 ^ HIWORD(v1), sub_49FD2EC);
  v2 = sub_1B13498("FlowActionModifySkillRange_OnRepalceSkillHandler", 48, 0, 0);
  v3 = sub_1B13498("FlowActionModifySkillRange_OnRepalceSkillHandler", 48, 0, 0);
  qword_82F89C0 = sub_42F2580(v2 ^ HIWORD(v3), sub_49FD30C);
  v4 = sub_1B13498("FlowActionModifySkillRange_OnSkillRuningLvUpEndHandler", 54, 0, 0);
  v5 = sub_1B13498("FlowActionModifySkillRange_OnSkillRuningLvUpEndHandler", 54, 0, 0);
  qword_82F89C8 = sub_42F2580(v4 ^ HIWORD(v5), sub_49FD32C);
  v6 = sub_1B13498("FlowActionModifySkillRange_OnSkillGemModifyHandler", 50, 0, 0);
  v7 = sub_1B13498("FlowActionModifySkillRange_OnSkillGemModifyHandler", 50, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_49FD34C);
  qword_82F89D0 = result;
  return result;
}
