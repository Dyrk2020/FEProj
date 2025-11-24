// registrar 0x12b6b90 (std_hash_caller=True) entries=3
__int64 sub_12B6B90()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EA3E0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA3E0, &unk_7223630);
  v0 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onStartSimulate", 46, 0, 0);
  v1 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onStartSimulate", 46, 0, 0);
  qword_82EA3E8 = sub_42F2580(v0 ^ HIWORD(v1), sub_448F1BC);
  v2 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onHeroJoin", 41, 0, 0);
  v3 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onHeroJoin", 41, 0, 0);
  qword_82EA3F0 = sub_42F2580(v2 ^ HIWORD(v3), sub_448F1D0);
  v4 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onEndSimulate", 44, 0, 0);
  v5 = sub_1B13498("ShouldGoBackToSpringForSupplyC_onEndSimulate", 44, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_448F1E4);
  qword_82EA3F8 = result;
  return result;
}
