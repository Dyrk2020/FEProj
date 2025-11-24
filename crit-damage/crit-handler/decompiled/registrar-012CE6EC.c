// registrar 0x12ce6ec (std_hash_caller=True) entries=1
__int64 sub_12CE6EC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7A10);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7A10, &unk_7223630);
  v0 = sub_1B13498("FlowActionRushToPosition_OnRushHitCamilleBlock", 46, 0, 0);
  v1 = sub_1B13498("FlowActionRushToPosition_OnRushHitCamilleBlock", 46, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_49C17AC);
  qword_82F7A18 = result;
  return result;
}
