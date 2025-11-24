// registrar 0x12b6978 (std_hash_caller=True) entries=2
__int64 sub_12B6978()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EA350);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA350, &unk_7223630);
  v0 = sub_1B13498("HeroSelectForgingCrad_ReadyToSelectForgingCard", 46, 0, 0);
  v1 = sub_1B13498("HeroSelectForgingCrad_ReadyToSelectForgingCard", 46, 0, 0);
  qword_82EA358 = sub_42F2580(v0 ^ HIWORD(v1), sub_448CCC0);
  v2 = sub_1B13498("HeroSelectForgingCrad_ReadyToSelectSkillGem", 43, 0, 0);
  v3 = sub_1B13498("HeroSelectForgingCrad_ReadyToSelectSkillGem", 43, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_448CD68);
  qword_82EA360 = result;
  return result;
}
