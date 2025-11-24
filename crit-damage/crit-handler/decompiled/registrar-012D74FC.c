// registrar 0x12d74fc (std_hash_caller=True) entries=1
__int64 sub_12D74FC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FDD70);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FDD70, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerAced_AcedHandler", 33, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerAced_AcedHandler", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ACBFF4);
  qword_82FDD78 = result;
  return result;
}
