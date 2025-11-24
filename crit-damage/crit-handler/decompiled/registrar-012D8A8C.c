// registrar 0x12d8a8c (std_hash_caller=True) entries=1
__int64 sub_12D8A8C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE970);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE970, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerBuyOutsideSpringTypeChanged_OnBuyOutsideSpringTypeChanged", 74, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerBuyOutsideSpringTypeChanged_OnBuyOutsideSpringTypeChanged", 74, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADE8E4);
  qword_82FE978 = result;
  return result;
}
