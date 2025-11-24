// registrar 0x12c0bcc (std_hash_caller=True) entries=9
__int64 sub_12C0BCC()
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
  __int64 result; // x0

  sub_55D64B4(&unk_82ED3D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED3D0, &unk_7223630);
  v0 = sub_1B13498("GameArtistDeathStateMonitor_OnHurt", 34, 0, 0);
  v1 = sub_1B13498("GameArtistDeathStateMonitor_OnHurt", 34, 0, 0);
  qword_82ED3D8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4712A90);
  v2 = sub_1B13498("GameArtistDeathStateMonitor_OnDie", 33, 0, 0);
  v3 = sub_1B13498("GameArtistDeathStateMonitor_OnDie", 33, 0, 0);
  qword_82ED3E0 = sub_42F2580(v2 ^ HIWORD(v3), sub_4712AA4);
  v4 = sub_1B13498("GameArtistDeathStateMonitor_OnApplyCtrlEffect", 45, 0, 0);
  v5 = sub_1B13498("GameArtistDeathStateMonitor_OnApplyCtrlEffect", 45, 0, 0);
  qword_82ED3E8 = sub_42F2580(v4 ^ HIWORD(v5), sub_4712AB8);
  v6 = sub_1B13498("GameArtistDeathStateMonitor_OnFinishCtrlEffect", 46, 0, 0);
  v7 = sub_1B13498("GameArtistDeathStateMonitor_OnFinishCtrlEffect", 46, 0, 0);
  qword_82ED3F0 = sub_42F2580(v6 ^ HIWORD(v7), sub_4712AD0);
  v8 = sub_1B13498("GameArtistDeathStateMonitor_OnBeforeDie", 39, 0, 0);
  v9 = sub_1B13498("GameArtistDeathStateMonitor_OnBeforeDie", 39, 0, 0);
  qword_82ED3F8 = sub_42F2580(v8 ^ HIWORD(v9), sub_4712AE8);
  v10 = sub_1B13498("GameArtistDeathStateMonitor_OnUseSkill", 38, 0, 0);
  v11 = sub_1B13498("GameArtistDeathStateMonitor_OnUseSkill", 38, 0, 0);
  qword_82ED400 = sub_42F2580(v10 ^ HIWORD(v11), sub_4712B08);
  v12 = sub_1B13498("GameArtistDeathStateMonitor_OnEnterGrass", 40, 0, 0);
  v13 = sub_1B13498("GameArtistDeathStateMonitor_OnEnterGrass", 40, 0, 0);
  qword_82ED408 = sub_42F2580(v12 ^ HIWORD(v13), sub_4712B20);
  v14 = sub_1B13498("GameArtistDeathStateMonitor_OnLeaveGrass", 40, 0, 0);
  v15 = sub_1B13498("GameArtistDeathStateMonitor_OnLeaveGrass", 40, 0, 0);
  qword_82ED410 = sub_42F2580(v14 ^ HIWORD(v15), sub_4712B40);
  v16 = sub_1B13498("GameArtistDeathStateMonitor_OnHitActor", 38, 0, 0);
  v17 = sub_1B13498("GameArtistDeathStateMonitor_OnHitActor", 38, 0, 0);
  result = sub_42F2580(v16 ^ HIWORD(v17), sub_4712B60);
  qword_82ED418 = result;
  return result;
}
