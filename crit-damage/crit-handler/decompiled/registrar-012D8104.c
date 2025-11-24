// registrar 0x12d8104 (std_hash_caller=True) entries=1
__int64 sub_12D8104()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE410);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE410, &unk_7223630);
  v0 = sub_1B13498("FlowActionShieldBreakTrigger_OnShieldBreak", 42, 0, 0);
  v1 = sub_1B13498("FlowActionShieldBreakTrigger_OnShieldBreak", 42, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AD6A74);
  qword_82FE418 = result;
  return result;
}
