// registrar 0x12db608 (std_hash_caller=True) entries=2
__int64 sub_12DB608()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8300010);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8300010, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerSignalResponse_OnUseFastChatSignal", 51, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerSignalResponse_OnUseFastChatSignal", 51, 0, 0);
  qword_8300018 = sub_42F2580(v0 ^ HIWORD(v1), sub_4B04AA8);
  v2 = sub_1B13498("FlowActionTriggerSignalResponse_OnUseMiniMapSignal", 50, 0, 0);
  v3 = sub_1B13498("FlowActionTriggerSignalResponse_OnUseMiniMapSignal", 50, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4B04ABC);
  qword_8300020 = result;
  return result;
}
