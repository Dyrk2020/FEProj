// registrar 0x12e8f10 (std_hash_caller=True) entries=2
__int64 sub_12E8F10()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308F90);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308F90, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerActorDie_ActorDieHandler", 49, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerActorDie_ActorDieHandler", 49, 0, 0);
  qword_8308F98 = sub_42F2580(v0 ^ HIWORD(v1), sub_4C758CC);
  v2 = sub_1B13498("ParallelFlowActionTriggerActorDie_ActorRebornHandler", 52, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerActorDie_ActorRebornHandler", 52, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4C75904);
  qword_8308FA0 = result;
  return result;
}
