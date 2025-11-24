// registrar 0x12da888 (std_hash_caller=True) entries=1
__int64 sub_12DA888()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FF8F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FF8F0, &unk_7223630);
  v0 = sub_1B13498("FlowActionHealHPTrigger_OnHealHp", 32, 0, 0);
  v1 = sub_1B13498("FlowActionHealHPTrigger_OnHealHp", 32, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AF8C60);
  qword_82FF8F8 = result;
  return result;
}
