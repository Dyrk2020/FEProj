// registrar 0x12d8804 (std_hash_caller=True) entries=1
__int64 sub_12D8804()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE820);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE820, &unk_7223630);
  v0 = sub_1B13498("FlowActionKillAwardFinishTrigger_OnKillAwardFinishHandler", 57, 0, 0);
  v1 = sub_1B13498("FlowActionKillAwardFinishTrigger_OnKillAwardFinishHandler", 57, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADC9DC);
  qword_82FE828 = result;
  return result;
}
