// registrar 0x12f13f0 (std_hash_caller=True) entries=1
__int64 sub_12F13F0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830E480);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830E480, &unk_7223630);
  v0 = sub_1B13498("FlowActionActorDiscardEvacuateDepotTrigger_OnDiscard", 52, 0, 0);
  v1 = sub_1B13498("FlowActionActorDiscardEvacuateDepotTrigger_OnDiscard", 52, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4E16674);
  qword_830E488 = result;
  return result;
}
