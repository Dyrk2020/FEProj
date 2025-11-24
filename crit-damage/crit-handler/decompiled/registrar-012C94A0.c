// registrar 0x12c94a0 (std_hash_caller=True) entries=1
__int64 sub_12C94A0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F3B60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F3B60, &unk_7223630);
  v0 = sub_1B13498("FlowActionAfterCauseHurtTrigger_OnAfterCauseHurt", 48, 0, 0);
  v1 = sub_1B13498("FlowActionAfterCauseHurtTrigger_OnAfterCauseHurt", 48, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_493F9BC);
  qword_82F3B68 = result;
  return result;
}
