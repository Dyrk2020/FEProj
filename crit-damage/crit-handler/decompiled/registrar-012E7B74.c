// registrar 0x12e7b74 (std_hash_caller=True) entries=2
__int64 sub_12E7B74()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308A00);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308A00, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerCompareHpWithinTime_OnAttack", 53, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerCompareHpWithinTime_OnAttack", 53, 0, 0);
  qword_8308A08 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C6B618);
  v2 = sub_1B13498("ParallelFlowActionTriggerCompareHpWithinTime_OnKill", 51, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerCompareHpWithinTime_OnKill", 51, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4C6B654);
  qword_8308A10 = result;
  return result;
}
