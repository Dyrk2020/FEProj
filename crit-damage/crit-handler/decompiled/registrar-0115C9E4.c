// registrar 0x115c9e4 (std_hash_caller=True) entries=4
__int64 sub_115C9E4()
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

  sub_55D64B4(&unk_82C3640);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C3640, &unk_7223630);
  v0 = sub_1B13498("SkillAIEvaluation_OnUseSkill", 28, 0, 0);
  v1 = sub_1B13498("SkillAIEvaluation_OnUseSkill", 28, 0, 0);
  qword_82C3648 = sub_42F2580(v0 ^ HIWORD(v1), sub_1D7BC64);
  v2 = sub_1B13498("SkillAIEvaluation_OnStopSkill", 29, 0, 0);
  v3 = sub_1B13498("SkillAIEvaluation_OnStopSkill", 29, 0, 0);
  qword_82C3650 = sub_42F2580(v2 ^ HIWORD(v3), sub_1D7BD38);
  v4 = sub_1B13498("SkillAIEvaluation_OnCreateBullet", 32, 0, 0);
  v5 = sub_1B13498("SkillAIEvaluation_OnCreateBullet", 32, 0, 0);
  qword_82C3658 = sub_42F2580(v4 ^ HIWORD(v5), sub_1D7BD50);
  v6 = sub_1B13498("SkillAIEvaluation_OnAttacHandler", 32, 0, 0);
  v7 = sub_1B13498("SkillAIEvaluation_OnAttacHandler", 32, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_1D7BD68);
  qword_82C3660 = result;
  return result;
}
