// registrar 0x12d86e4 (std_hash_caller=True) entries=1
__int64 sub_12D86E4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE780);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE780, &unk_7223630);
  v0 = sub_1B13498("FlowActionAfterCalDmgForTarget_OnAfterCalDamageTargetHandler", 60, 0, 0);
  v1 = sub_1B13498("FlowActionAfterCalDmgForTarget_OnAfterCalDamageTargetHandler", 60, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ADBC50);
  qword_82FE788 = result;
  return result;
}
