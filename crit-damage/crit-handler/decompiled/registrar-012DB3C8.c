// registrar 0x12db3c8 (std_hash_caller=True) entries=1
__int64 sub_12DB3C8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FFEE0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FFEE0, &unk_7223630);
  v0 = sub_1B13498("FlowActionUseSkillTrigger_OnUseSkill", 36, 0, 0);
  v1 = sub_1B13498("FlowActionUseSkillTrigger_OnUseSkill", 36, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4B02D20);
  qword_82FFEE8 = result;
  return result;
}
