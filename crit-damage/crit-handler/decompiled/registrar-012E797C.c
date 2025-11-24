// registrar 0x12e797c (std_hash_caller=True) entries=1
__int64 sub_12E797C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308940);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308940, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerSoilderFighting_ActorHurtHandler", 57, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerSoilderFighting_ActorHurtHandler", 57, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4C69DF0);
  qword_8308948 = result;
  return result;
}
