// registrar 0x12d61f4 (std_hash_caller=True) entries=2
__int64 sub_12D61F4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FD330);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FD330, &unk_7223630);
  v0 = sub_1B13498("FlowActionAttackDelayDieTrigger_OnInflict", 41, 0, 0);
  v1 = sub_1B13498("FlowActionAttackDelayDieTrigger_OnInflict", 41, 0, 0);
  qword_82FD338 = sub_42F2580(v0 ^ HIWORD(v1), sub_4ABA50C);
  v2 = sub_1B13498("FlowActionAttackDelayDieTrigger_OnActorDie", 42, 0, 0);
  v3 = sub_1B13498("FlowActionAttackDelayDieTrigger_OnActorDie", 42, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4ABA60C);
  qword_82FD340 = result;
  return result;
}
