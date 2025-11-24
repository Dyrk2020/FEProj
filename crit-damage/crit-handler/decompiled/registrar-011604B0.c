// registrar 0x11604b0 (std_hash_caller=True) entries=4
__int64 sub_11604B0()
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

  sub_55D64B4(&unk_82C9630);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9630, &unk_7223630);
  v0 = sub_1B13498("HeroComponentForge_OnCheckDodge", 31, 0, 0);
  v1 = sub_1B13498("HeroComponentForge_OnCheckDodge", 31, 0, 0);
  qword_82C9638 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FC6658);
  v2 = sub_1B13498("HeroComponentForge_OnRoundChange", 32, 0, 0);
  v3 = sub_1B13498("HeroComponentForge_OnRoundChange", 32, 0, 0);
  qword_82C9640 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FC6670);
  v4 = sub_1B13498("HeroComponentForge_EquipOnBuy", 29, 0, 0);
  v5 = sub_1B13498("HeroComponentForge_EquipOnBuy", 29, 0, 0);
  qword_82C9648 = sub_42F2580(v4 ^ HIWORD(v5), sub_1FC6684);
  v6 = sub_1B13498("HeroComponentForge_EquipOnSold", 30, 0, 0);
  v7 = sub_1B13498("HeroComponentForge_EquipOnSold", 30, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_1FC671C);
  qword_82C9650 = result;
  return result;
}
