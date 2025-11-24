// registrar 0x1160fd4 (std_hash_caller=True) entries=3
__int64 sub_1160FD4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CA070);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CA070, &unk_7223630);
  v0 = sub_1B13498("ActorComponentVisible_OnActorApplyBuff", 38, 0, 0);
  v1 = sub_1B13498("ActorComponentVisible_OnActorApplyBuff", 38, 0, 0);
  qword_82CA078 = sub_42F2580(v0 ^ HIWORD(v1), sub_1FF13BC);
  v2 = sub_1B13498("ActorComponentVisible_OnActorEnterGrass", 39, 0, 0);
  v3 = sub_1B13498("ActorComponentVisible_OnActorEnterGrass", 39, 0, 0);
  qword_82CA080 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FF13D4);
  v4 = sub_1B13498("ActorComponentVisible_OnActorLeaveGrass", 39, 0, 0);
  v5 = sub_1B13498("ActorComponentVisible_OnActorLeaveGrass", 39, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1FF13EC);
  qword_82CA088 = result;
  qword_82C9FD0 = 0x4000;
  qword_82C9FD8 = 40960;
  qword_82C9FE0 = 0x4000;
  return result;
}
