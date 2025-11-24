// registrar 0x12d746c (std_hash_caller=True) entries=1
__int64 sub_12D746C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FDD30);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FDD30, &unk_7223630);
  v0 = sub_1B13498("FlowActionHurtTrigger_OnHurt", 28, 0, 0);
  v1 = sub_1B13498("FlowActionHurtTrigger_OnHurt", 28, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ACB8F8);
  qword_82FDD38 = result;
  return result;
}
