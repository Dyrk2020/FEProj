// registrar 0x12e7ff4 (std_hash_caller=True) entries=1
__int64 sub_12E7FF4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308B20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308B20, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerGiveBuff_GiveBuffHandler", 49, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerGiveBuff_GiveBuffHandler", 49, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4C6D4C0);
  qword_8308B28 = result;
  return result;
}
