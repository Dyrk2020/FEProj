// registrar 0x12c1174 (std_hash_caller=True) entries=4
__int64 sub_12C1174()
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

  sub_55D64B4(&unk_82ED4F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED4F0, &unk_7223630);
  v0 = sub_1B13498("EGATeamFightAnalyzer_OnApplyCtrlEffect", 38, 0, 0);
  v1 = sub_1B13498("EGATeamFightAnalyzer_OnApplyCtrlEffect", 38, 0, 0);
  qword_82ED4F8 = sub_42F2580(v0 ^ HIWORD(v1), sub_471F88C);
  v2 = sub_1B13498("EGATeamFightAnalyzer_OnHurt", 27, 0, 0);
  v3 = sub_1B13498("EGATeamFightAnalyzer_OnHurt", 27, 0, 0);
  qword_82ED500 = sub_42F2580(v2 ^ HIWORD(v3), sub_471F8A0);
  v4 = sub_1B13498("EGATeamFightAnalyzer_OnTreatCure", 32, 0, 0);
  v5 = sub_1B13498("EGATeamFightAnalyzer_OnTreatCure", 32, 0, 0);
  qword_82ED508 = sub_42F2580(v4 ^ HIWORD(v5), sub_471F8B4);
  v6 = sub_1B13498("EGATeamFightAnalyzer_OnKill", 27, 0, 0);
  v7 = sub_1B13498("EGATeamFightAnalyzer_OnKill", 27, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_471F8C8);
  qword_82ED510 = result;
  return result;
}
