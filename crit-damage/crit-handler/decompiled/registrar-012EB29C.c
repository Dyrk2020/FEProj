// registrar 0x12eb29c (std_hash_caller=True) entries=1
__int64 sub_12EB29C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8309DD0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8309DD0, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerCustomEvent_OnEventHandler", 51, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerCustomEvent_OnEventHandler", 51, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4CA3650);
  qword_8309DD8 = result;
  return result;
}
