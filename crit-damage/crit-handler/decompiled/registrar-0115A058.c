// registrar 0x115a058 (std_hash_caller=True) entries=3
__int64 sub_115A058()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BE230);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BE230, &unk_7223630);
  v0 = sub_1B13498("BevTreeStateAnalyzer_OnBackHome", 31, 0, 0);
  v1 = sub_1B13498("BevTreeStateAnalyzer_OnBackHome", 31, 0, 0);
  qword_82BE238 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1B4326C);
  v2 = sub_1B13498("BevTreeStateAnalyzer_OnUseSkill", 31, 0, 0);
  v3 = sub_1B13498("BevTreeStateAnalyzer_OnUseSkill", 31, 0, 0);
  qword_82BE240 = sub_42F2580(v2 ^ HIWORD(v3), sub_1B43284);
  v4 = sub_1B13498("BevTreeStateAnalyzer_OnKill", 27, 0, 0);
  v5 = sub_1B13498("BevTreeStateAnalyzer_OnKill", 27, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1B4329C);
  qword_82BE248 = result;
  return result;
}
