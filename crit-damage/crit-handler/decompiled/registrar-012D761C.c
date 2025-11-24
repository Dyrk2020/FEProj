// registrar 0x12d761c (std_hash_caller=True) entries=2
__int64 sub_12D761C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FDE30);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FDE30, &unk_7223630);
  v0 = sub_1B13498("FlowActionBeHitTrigger_OnBeHitHandler", 37, 0, 0);
  v1 = sub_1B13498("FlowActionBeHitTrigger_OnBeHitHandler", 37, 0, 0);
  qword_82FDE38 = sub_42F2580(v0 ^ HIWORD(v1), sub_4ACD8BC);
  v2 = sub_1B13498("FlowActionBeHitTrigger_OnBeHitSpellShieldHandler", 48, 0, 0);
  v3 = sub_1B13498("FlowActionBeHitTrigger_OnBeHitSpellShieldHandler", 48, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4ACD978);
  qword_82FDE40 = result;
  return result;
}
