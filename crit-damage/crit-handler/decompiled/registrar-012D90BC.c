// registrar 0x12d90bc (std_hash_caller=True) entries=1
__int64 sub_12D90BC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FEC60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FEC60, &unk_7223630);
  v0 = sub_1B13498("FlowActionEffectDodgeTrigger_OnDodgeAction", 42, 0, 0);
  v1 = sub_1B13498("FlowActionEffectDodgeTrigger_OnDodgeAction", 42, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AE399C);
  qword_82FEC68 = result;
  return result;
}
