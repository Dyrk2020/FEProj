// registrar 0x12da5b8 (std_hash_caller=True) entries=1
__int64 sub_12DA5B8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FF750);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FF750, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerCreateInteractive_OnCreateInteractive", 54, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerCreateInteractive_OnCreateInteractive", 54, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AF634C);
  qword_82FF758 = result;
  return result;
}
