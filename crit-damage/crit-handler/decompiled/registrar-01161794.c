// registrar 0x1161794 (std_hash_caller=True) entries=5
__int64 sub_1161794()
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

  sub_55D64B4(&unk_82CAB90);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CAB90, &unk_7223630);
  v0 = sub_1B13498("ActorComponentFightStateMgr_OnActorHurt", 39, 0, 0);
  v1 = sub_1B13498("ActorComponentFightStateMgr_OnActorHurt", 39, 0, 0);
  qword_82CAB98 = sub_42F2580(v0 ^ HIWORD(v1), &loc_202D6FC);
  v2 = sub_1B13498("ActorComponentFightStateMgr_OnActorApplyBuff", 44, 0, 0);
  v3 = sub_1B13498("ActorComponentFightStateMgr_OnActorApplyBuff", 44, 0, 0);
  qword_82CABA0 = sub_42F2580(v2 ^ HIWORD(v3), sub_202D7E4);
  v4 = sub_1B13498("ActorComponentFightStateMgr_OnActorImmuneBuff", 45, 0, 0);
  v5 = sub_1B13498("ActorComponentFightStateMgr_OnActorImmuneBuff", 45, 0, 0);
  qword_82CABA8 = sub_42F2580(v4 ^ HIWORD(v5), sub_202D7FC);
  v6 = sub_1B13498("ActorComponentFightStateMgr_OnActorDodge", 40, 0, 0);
  v7 = sub_1B13498("ActorComponentFightStateMgr_OnActorDodge", 40, 0, 0);
  qword_82CABB0 = sub_42F2580(v6 ^ HIWORD(v7), sub_202D8DC);
  v8 = sub_1B13498("ActorComponentFightStateMgr_OnActorHitMiss", 42, 0, 0);
  v9 = sub_1B13498("ActorComponentFightStateMgr_OnActorHitMiss", 42, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_202D99C);
  qword_82CABB8 = result;
  return result;
}
