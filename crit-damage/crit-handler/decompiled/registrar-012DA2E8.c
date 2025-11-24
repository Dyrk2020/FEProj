// registrar 0x12da2e8 (std_hash_caller=True) entries=1
__int64 sub_12DA2E8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FF5E0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FF5E0, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerBeforeCalcCritForTarget_OnBeforeCalCritTargetHandler", 69, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerBeforeCalcCritForTarget_OnBeforeCalCritTargetHandler", 69, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AF3DD4);
  qword_82FF5E8 = result;
  return result;
}
