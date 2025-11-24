// registrar 0x115a3e8 (std_hash_caller=True) entries=12
__int64 sub_115A3E8()
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
  int v14; // w21
  unsigned int v15; // w0
  int v16; // w21
  unsigned int v17; // w0
  int v18; // w21
  unsigned int v19; // w0
  int v20; // w21
  unsigned int v21; // w0
  int v22; // w21
  unsigned int v23; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BE330);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BE330, &unk_7223630);
  v0 = sub_1B13498("GameArtistMonitor_OnApplyCtrlEffect", 35, 0, 0);
  v1 = sub_1B13498("GameArtistMonitor_OnApplyCtrlEffect", 35, 0, 0);
  qword_82BE338 = sub_42F2580(v0 ^ HIWORD(v1), sub_1B5BDC4);
  v2 = sub_1B13498("GameArtistMonitor_OnMonsterSpawn", 32, 0, 0);
  v3 = sub_1B13498("GameArtistMonitor_OnMonsterSpawn", 32, 0, 0);
  qword_82BE340 = sub_42F2580(v2 ^ HIWORD(v3), sub_1B5BDD8);
  v4 = sub_1B13498("GameArtistMonitor_OnHurt", 24, 0, 0);
  v5 = sub_1B13498("GameArtistMonitor_OnHurt", 24, 0, 0);
  qword_82BE348 = sub_42F2580(v4 ^ HIWORD(v5), sub_1B5BDEC);
  v6 = sub_1B13498("GameArtistMonitor_OnDie", 23, 0, 0);
  v7 = sub_1B13498("GameArtistMonitor_OnDie", 23, 0, 0);
  qword_82BE350 = sub_42F2580(v6 ^ HIWORD(v7), sub_1B5BE00);
  v8 = sub_1B13498("GameArtistMonitor_OnTreatCure", 29, 0, 0);
  v9 = sub_1B13498("GameArtistMonitor_OnTreatCure", 29, 0, 0);
  qword_82BE358 = sub_42F2580(v8 ^ HIWORD(v9), sub_1B5BE14);
  v10 = sub_1B13498("GameArtistMonitor_OnBeforeDie", 29, 0, 0);
  v11 = sub_1B13498("GameArtistMonitor_OnBeforeDie", 29, 0, 0);
  qword_82BE360 = sub_42F2580(v10 ^ HIWORD(v11), sub_1B5BE28);
  v12 = sub_1B13498("GameArtistMonitor_OnHeroReborn", 30, 0, 0);
  v13 = sub_1B13498("GameArtistMonitor_OnHeroReborn", 30, 0, 0);
  qword_82BE368 = sub_42F2580(v12 ^ HIWORD(v13), sub_1B5BE48);
  v14 = sub_1B13498("GameArtistMonitor_OnUseSkill", 28, 0, 0);
  v15 = sub_1B13498("GameArtistMonitor_OnUseSkill", 28, 0, 0);
  qword_82BE370 = sub_42F2580(v14 ^ HIWORD(v15), sub_1B5BE68);
  v16 = sub_1B13498("GameArtistMonitor_OnUpGrade", 27, 0, 0);
  v17 = sub_1B13498("GameArtistMonitor_OnUpGrade", 27, 0, 0);
  qword_82BE378 = sub_42F2580(v16 ^ HIWORD(v17), sub_1B5BE80);
  v18 = sub_1B13498("GameArtistMonitor_OnEnterGrass", 30, 0, 0);
  v19 = sub_1B13498("GameArtistMonitor_OnEnterGrass", 30, 0, 0);
  qword_82BE380 = sub_42F2580(v18 ^ HIWORD(v19), sub_1B5BE94);
  v20 = sub_1B13498("GameArtistMonitor_OnLeaveGrass", 30, 0, 0);
  v21 = sub_1B13498("GameArtistMonitor_OnLeaveGrass", 30, 0, 0);
  qword_82BE388 = sub_42F2580(v20 ^ HIWORD(v21), sub_1B5BEB4);
  v22 = sub_1B13498("GameArtistMonitor_OnBuyEquip", 28, 0, 0);
  v23 = sub_1B13498("GameArtistMonitor_OnBuyEquip", 28, 0, 0);
  result = sub_42F2580(v22 ^ HIWORD(v23), sub_1B5BED4);
  qword_82BE390 = result;
  return result;
}
