// registrar 0x12ec23c (std_hash_caller=True) entries=2
__int64 sub_12EC23C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830A4C0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830A4C0, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionMonsterSacrifice_MonsterSpawnHandler", 54, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionMonsterSacrifice_MonsterSpawnHandler", 54, 0, 0);
  qword_830A4C8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4CBB4B0);
  v2 = sub_1B13498("ParallelFlowActionMonsterSacrifice_ActorBeforeDieHandler", 56, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionMonsterSacrifice_ActorBeforeDieHandler", 56, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4CBB4E8);
  qword_830A4D0 = result;
  return result;
}
