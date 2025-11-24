// registrar 0x12ce644 (std_hash_caller=True) entries=1
__int64 sub_12CE644()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7920);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7920, &unk_7223630);
  qword_82F7860 = 491520;
  qword_82F7868 = 14745600;
  v0 = sub_1B13498("FlowActionRushFollow_OnRushHitCamilleBlock", 42, 0, 0);
  v1 = sub_1B13498("FlowActionRushFollow_OnRushHitCamilleBlock", 42, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_49C6354);
  qword_82F7928 = result;
  return result;
}
