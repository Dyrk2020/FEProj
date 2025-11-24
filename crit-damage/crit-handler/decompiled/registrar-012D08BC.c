// registrar 0x12d08bc (std_hash_caller=True) entries=4
__int64 sub_12D08BC()
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

  sub_55D64B4(&unk_82F9590);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F9590, &unk_7223630);
  v0 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillLvUpHandler", 51, 0, 0);
  v1 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillLvUpHandler", 51, 0, 0);
  qword_82F9598 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A2270C);
  v2 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnRepalceSkillHandler", 54, 0, 0);
  v3 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnRepalceSkillHandler", 54, 0, 0);
  qword_82F95A0 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A2272C);
  v4 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillRuningLvUpEndHandler", 60, 0, 0);
  v5 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillRuningLvUpEndHandler", 60, 0, 0);
  qword_82F95A8 = sub_42F2580(v4 ^ HIWORD(v5), sub_4A2274C);
  v6 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillGemModifyHandler", 56, 0, 0);
  v7 = sub_1B13498("FlowActionModifySkillRangeBySlot_OnSkillGemModifyHandler", 56, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4A2276C);
  qword_82F95B0 = result;
  return result;
}
