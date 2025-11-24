// registrar 0x12d62cc (std_hash_caller=True) entries=1
__int64 sub_12D62CC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FD380);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FD380, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerActorObjEvent_OnEventHandler", 45, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerActorObjEvent_OnEventHandler", 45, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ABADA4);
  qword_82FD388 = result;
  return result;
}
