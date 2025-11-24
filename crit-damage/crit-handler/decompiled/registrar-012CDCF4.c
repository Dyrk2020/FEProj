// registrar 0x12cdcf4 (std_hash_caller=True) entries=1
__int64 sub_12CDCF4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7110);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7110, &unk_7223630);
  v0 = sub_1B13498("FlowActionSkillField_OnSkillInterrupt", 37, 0, 0);
  v1 = sub_1B13498("FlowActionSkillField_OnSkillInterrupt", 37, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_49AAD7C);
  qword_82F7118 = result;
  return result;
}
