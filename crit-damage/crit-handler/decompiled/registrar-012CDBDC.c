// registrar 0x12cdbdc (std_hash_caller=True) entries=2
__int64 sub_12CDBDC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7060);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7060, &unk_7223630);
  v0 = sub_1B13498("FlowActionModSkillRange_OnSkillChangeHandler", 44, 0, 0);
  v1 = sub_1B13498("FlowActionModSkillRange_OnSkillChangeHandler", 44, 0, 0);
  qword_82F7068 = sub_42F2580(v0 ^ HIWORD(v1), sub_49A8C90);
  v2 = sub_1B13498("FlowActionModSkillRange_OnSkillGemChangeHandler", 47, 0, 0);
  v3 = sub_1B13498("FlowActionModSkillRange_OnSkillGemChangeHandler", 47, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_49A8CB0);
  qword_82F7070 = result;
  return result;
}
