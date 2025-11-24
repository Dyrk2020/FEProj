// registrar 0x12dad98 (std_hash_caller=True) entries=1
__int64 sub_12DAD98()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FFB90);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FFB90, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerBeforeBeHealHpAfterCalc_OnBeforeBeHealHp", 57, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerBeforeBeHealHpAfterCalc_OnBeforeBeHealHp", 57, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AFD2EC);
  qword_82FFB98 = result;
  return result;
}
