// registrar 0x1159ef0 (std_hash_caller=True) entries=4
__int64 sub_1159EF0()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BE1E0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BE1E0, &unk_7223630);
  v0 = sub_1B13498("BevTreeSkillAnalyzer_OnHurt", 27, 0, 0);
  v1 = sub_1B13498("BevTreeSkillAnalyzer_OnHurt", 27, 0, 0);
  qword_82BE1E8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1B3F560);
  v2 = sub_1B13498("BevTreeSkillAnalyzer_OnKill", 27, 0, 0);
  v3 = sub_1B13498("BevTreeSkillAnalyzer_OnKill", 27, 0, 0);
  qword_82BE1F0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1B3F574);
  v4 = sub_1B13498("BevTreeSkillAnalyzer_OnUseSkill", 31, 0, 0);
  v5 = sub_1B13498("BevTreeSkillAnalyzer_OnUseSkill", 31, 0, 0);
  qword_82BE1F8 = sub_42F2580(v4 ^ HIWORD(v5), sub_1B3F588);
  v6 = sub_1B13498("BevTreeSkillAnalyzer_OnApplyBuff", 32, 0, 0);
  v7 = sub_1B13498("BevTreeSkillAnalyzer_OnApplyBuff", 32, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_1B3F5A0);
  qword_82BE200 = result;
  return result;
}
