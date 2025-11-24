// registrar 0x12ed7f4 (std_hash_caller=True) entries=1
__int64 sub_12ED7F4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830B1B0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830B1B0, &unk_7223630);
  v0 = sub_1B13498("FlowActionGainSkillGemTrigger_OnGainSkillGem", 44, 0, 0);
  v1 = sub_1B13498("FlowActionGainSkillGemTrigger_OnGainSkillGem", 44, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4CEC440);
  qword_830B1B8 = result;
  return result;
}
