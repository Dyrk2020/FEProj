// registrar 0x12f1550 (std_hash_caller=True) entries=1
__int64 sub_12F1550()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830E510);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830E510, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionActorEvacuateTrigger_OnActorEvacuate", 54, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionActorEvacuateTrigger_OnActorEvacuate", 54, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4E178AC);
  qword_830E518 = result;
  return result;
}
