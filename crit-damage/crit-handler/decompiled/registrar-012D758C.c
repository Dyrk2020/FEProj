// registrar 0x12d758c (std_hash_caller=True) entries=1
__int64 sub_12D758C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FDDE0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FDDE0, &unk_7223630);
  v0 = sub_1B13498("FlowActionApplyBuffTrigger_OnApplyBuff", 38, 0, 0);
  v1 = sub_1B13498("FlowActionApplyBuffTrigger_OnApplyBuff", 38, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ACCF14);
  qword_82FDDE8 = result;
  return result;
}
