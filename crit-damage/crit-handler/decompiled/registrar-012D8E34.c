// registrar 0x12d8e34 (std_hash_caller=True) entries=1
__int64 sub_12D8E34()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FEB30);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FEB30, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerForwardChange_OnForwardChangedHandler", 54, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerForwardChange_OnForwardChangedHandler", 54, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AE1744);
  qword_82FEB38 = result;
  return result;
}
