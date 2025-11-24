// registrar 0x1161a14 (std_hash_caller=True) entries=7
__int64 sub_1161A14()
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
  int v10; // w21
  unsigned int v11; // w0
  int v12; // w21
  unsigned int v13; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CAE80);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CAE80, &unk_7223630);
  v0 = sub_1B13498("HeroComponentStealMgr_OnBeforeApplyBuff", 39, 0, 0);
  v1 = sub_1B13498("HeroComponentStealMgr_OnBeforeApplyBuff", 39, 0, 0);
  qword_82CAE88 = sub_42F2580(v0 ^ HIWORD(v1), &loc_203A2F0);
  v2 = sub_1B13498("HeroComponentStealMgr_OnBeforeGiveBuff", 38, 0, 0);
  v3 = sub_1B13498("HeroComponentStealMgr_OnBeforeGiveBuff", 38, 0, 0);
  qword_82CAE90 = sub_42F2580(v2 ^ HIWORD(v3), sub_203A3D4);
  v4 = sub_1B13498("HeroComponentStealMgr_OnDynamicSkillChanged", 43, 0, 0);
  v5 = sub_1B13498("HeroComponentStealMgr_OnDynamicSkillChanged", 43, 0, 0);
  qword_82CAE98 = sub_42F2580(v4 ^ HIWORD(v5), sub_203A3EC);
  v6 = sub_1B13498("HeroComponentStealMgr_OnSkillPassiveEffectEnable", 48, 0, 0);
  v7 = sub_1B13498("HeroComponentStealMgr_OnSkillPassiveEffectEnable", 48, 0, 0);
  qword_82CAEA0 = sub_42F2580(v6 ^ HIWORD(v7), sub_203A404);
  v8 = sub_1B13498("HeroComponentStealMgr_OnBackHome", 32, 0, 0);
  v9 = sub_1B13498("HeroComponentStealMgr_OnBackHome", 32, 0, 0);
  qword_82CAEA8 = sub_42F2580(v8 ^ HIWORD(v9), sub_203A520);
  v10 = sub_1B13498("HeroComponentStealMgr_OnUseSkill", 32, 0, 0);
  v11 = sub_1B13498("HeroComponentStealMgr_OnUseSkill", 32, 0, 0);
  qword_82CAEB0 = sub_42F2580(v10 ^ HIWORD(v11), sub_203A5E8);
  v12 = sub_1B13498("HeroComponentStealMgr_OnBattleFinish", 36, 0, 0);
  v13 = sub_1B13498("HeroComponentStealMgr_OnBattleFinish", 36, 0, 0);
  result = sub_42F2580(v12 ^ HIWORD(v13), sub_203A5FC);
  qword_82CAEB8 = result;
  qword_82CAD20 = 0x4000;
  return result;
}
