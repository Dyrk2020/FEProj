// registrar 0x12e7814 (std_hash_caller=True) entries=2
__int64 sub_12E7814()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83088C0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83088C0, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerSignalResponse_OnUseFastChatSignal", 59, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerSignalResponse_OnUseFastChatSignal", 59, 0, 0);
  qword_83088C8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C69134);
  v2 = sub_1B13498("ParallelFlowActionTriggerSignalResponse_OnUseMiniMapSignal", 58, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerSignalResponse_OnUseMiniMapSignal", 58, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4C69208);
  qword_83088D0 = result;
  return result;
}
