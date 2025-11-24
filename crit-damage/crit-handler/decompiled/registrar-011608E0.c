// registrar 0x11608e0 (std_hash_caller=True) entries=3
__int64 sub_11608E0()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9A70);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9A70, &unk_7223630);
  v0 = sub_1B13498("ActorComponentAFKMgr_OnActorHurt", 32, 0, 0);
  v1 = sub_1B13498("ActorComponentAFKMgr_OnActorHurt", 32, 0, 0);
  qword_82C9A78 = sub_42F2580(v0 ^ HIWORD(v1), sub_1FD7CE0);
  v2 = sub_1B13498("ActorComponentAFKMgr_OnBeforeAttack", 35, 0, 0);
  v3 = sub_1B13498("ActorComponentAFKMgr_OnBeforeAttack", 35, 0, 0);
  qword_82C9A80 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FD7CF8);
  v4 = sub_1B13498("ActorComponentAFKMgr_OnGiveBuff", 31, 0, 0);
  v5 = sub_1B13498("ActorComponentAFKMgr_OnGiveBuff", 31, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1FD7D10);
  qword_82C9A88 = result;
  return result;
}
