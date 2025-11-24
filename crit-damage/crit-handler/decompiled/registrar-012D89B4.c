// registrar 0x12d89b4 (std_hash_caller=True) entries=2
__int64 sub_12D89B4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE920);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE920, &unk_7223630);
  v0 = sub_1B13498("FlowActionImmuneBuffTrigger_OnImmuneBuff", 40, 0, 0);
  v1 = sub_1B13498("FlowActionImmuneBuffTrigger_OnImmuneBuff", 40, 0, 0);
  qword_82FE928 = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADE2AC);
  v2 = sub_1B13498("FlowActionImmuneBuffTrigger_OnImmuneSpellShield", 47, 0, 0);
  v3 = sub_1B13498("FlowActionImmuneBuffTrigger_OnImmuneSpellShield", 47, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4ADE2C4);
  qword_82FE930 = result;
  return result;
}
