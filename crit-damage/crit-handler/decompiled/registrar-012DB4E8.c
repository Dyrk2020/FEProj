// registrar 0x12db4e8 (std_hash_caller=True) entries=1
__int64 sub_12DB4E8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FFF80);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FFF80, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerFirstBlood_OnFirstBlood", 40, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerFirstBlood_OnFirstBlood", 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4B03B00);
  qword_82FFF88 = result;
  return result;
}
