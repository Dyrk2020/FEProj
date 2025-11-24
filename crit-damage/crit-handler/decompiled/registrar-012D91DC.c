// registrar 0x12d91dc (std_hash_caller=True) entries=5
__int64 sub_12D91DC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  int v8; // w21
  unsigned int v9; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FED20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FED20, &unk_7223630);
  v0 = sub_1B13498("FlowActionHitTrigger_OnHitHandler", 33, 0, 0);
  v1 = sub_1B13498("FlowActionHitTrigger_OnHitHandler", 33, 0, 0);
  qword_82FED28 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4AE5D74);
  v2 = sub_1B13498("FlowActionHitTrigger_OnMissHitHandler", 37, 0, 0);
  v3 = sub_1B13498("FlowActionHitTrigger_OnMissHitHandler", 37, 0, 0);
  qword_82FED30 = sub_42F2580(v2 ^ HIWORD(v3), sub_4AE5D8C);
  v4 = sub_1B13498("FlowActionHitTrigger_OnHitBlockHandler", 38, 0, 0);
  v5 = sub_1B13498("FlowActionHitTrigger_OnHitBlockHandler", 38, 0, 0);
  qword_82FED38 = sub_42F2580(v4 ^ HIWORD(v5), sub_4AE5DA4);
  v6 = sub_1B13498("FlowActionHitTrigger_OnHitSpellShieldHandler", 44, 0, 0);
  v7 = sub_1B13498("FlowActionHitTrigger_OnHitSpellShieldHandler", 44, 0, 0);
  qword_82FED40 = sub_42F2580(v6 ^ HIWORD(v7), sub_4AE5DBC);
  v8 = sub_1B13498("FlowActionHitTrigger_OnHitReflectBlockHander", 44, 0, 0);
  v9 = sub_1B13498("FlowActionHitTrigger_OnHitReflectBlockHander", 44, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_4AE5DD4);
  qword_82FED48 = result;
  return result;
}
