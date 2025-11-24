// registrar 0x12d69d4 (std_hash_caller=True) entries=1
__int64 sub_12D69D4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FD750);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FD750, &unk_7223630);
  v0 = sub_1B13498("FlowActionActorDieByGATrigger_OnDieByAG", 39, 0, 0);
  v1 = sub_1B13498("FlowActionActorDieByGATrigger_OnDieByAG", 39, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AC0EAC);
  qword_82FD758 = result;
  return result;
}
