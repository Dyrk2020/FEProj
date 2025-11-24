// registrar 0x12c0f1c (std_hash_caller=True) entries=2
__int64 sub_12C0F1C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED460);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED460, &unk_7223630);
  v0 = sub_1B13498("EGAPushEfficiencyAnalyzer_OnUseSkill", 36, 0, 0);
  v1 = sub_1B13498("EGAPushEfficiencyAnalyzer_OnUseSkill", 36, 0, 0);
  qword_82ED468 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4715B20);
  v2 = sub_1B13498("EGAPushEfficiencyAnalyzer_OnDie", 31, 0, 0);
  v3 = sub_1B13498("EGAPushEfficiencyAnalyzer_OnDie", 31, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4715B38);
  qword_82ED470 = result;
  return result;
}
