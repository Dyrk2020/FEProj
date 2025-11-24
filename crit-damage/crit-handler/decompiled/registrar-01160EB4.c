// registrar 0x1160eb4 (std_hash_caller=True) entries=3
__int64 sub_1160EB4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9F80);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9F80, &unk_7223630);
  v0 = sub_1B13498("ActorComponentPostureAnim_OnUseSkill", 36, 0, 0);
  v1 = sub_1B13498("ActorComponentPostureAnim_OnUseSkill", 36, 0, 0);
  qword_82C9F88 = sub_42F2580(v0 ^ HIWORD(v1), sub_1FEC7CC);
  v2 = sub_1B13498("ActorComponentPostureAnim_OnActorHurt", 37, 0, 0);
  v3 = sub_1B13498("ActorComponentPostureAnim_OnActorHurt", 37, 0, 0);
  qword_82C9F90 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FEC7E0);
  v4 = sub_1B13498("ActorComponentPostureAnim_OnStateChangedHandler", 47, 0, 0);
  v5 = sub_1B13498("ActorComponentPostureAnim_OnStateChangedHandler", 47, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1FEC8B0);
  qword_82C9F98 = result;
  return result;
}
