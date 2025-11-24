// registrar 0x12c8420 (std_hash_caller=True) entries=2
__int64 sub_12C8420()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F2720);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F2720, &unk_7223630);
  v0 = sub_1B13498("SkillPassiveEffectMgr_OnReborn", 30, 0, 0);
  v1 = sub_1B13498("SkillPassiveEffectMgr_OnReborn", 30, 0, 0);
  qword_82F2728 = sub_42F2580(v0 ^ HIWORD(v1), sub_48D07B4);
  v2 = sub_1B13498("SkillPassiveEffectMgr_OnZombieReborn", 36, 0, 0);
  v3 = sub_1B13498("SkillPassiveEffectMgr_OnZombieReborn", 36, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_48D0818);
  qword_82F2730 = result;
  return result;
}
