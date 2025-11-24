// registrar 0x12daf48 (std_hash_caller=True) entries=1
__int64 sub_12DAF48()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FFC80);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FFC80, &unk_7223630);
  v0 = sub_1B13498("FlowActionLeaveRealmTrigger_OnLeaveRealm", 40, 0, 0);
  v1 = sub_1B13498("FlowActionLeaveRealmTrigger_OnLeaveRealm", 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AFEC34);
  qword_82FFC88 = result;
  return result;
}
