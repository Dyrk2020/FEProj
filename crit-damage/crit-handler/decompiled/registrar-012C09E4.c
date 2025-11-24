// registrar 0x12c09e4 (std_hash_caller=True) entries=4
__int64 sub_12C09E4()
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

  sub_55D64B4(&unk_82ED370);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED370, &unk_7223630);
  v0 = sub_1B13498("GameFinishMonitor_OnApplyCtrlEffect", 35, 0, 0);
  v1 = sub_1B13498("GameFinishMonitor_OnApplyCtrlEffect", 35, 0, 0);
  qword_82ED378 = sub_42F2580(v0 ^ HIWORD(v1), sub_4703F3C);
  v2 = sub_1B13498("GameFinishMonitor_OnHurt", 24, 0, 0);
  v3 = sub_1B13498("GameFinishMonitor_OnHurt", 24, 0, 0);
  qword_82ED380 = sub_42F2580(v2 ^ HIWORD(v3), sub_4703F50);
  v4 = sub_1B13498("GameFinishMonitor_OnKill", 24, 0, 0);
  v5 = sub_1B13498("GameFinishMonitor_OnKill", 24, 0, 0);
  qword_82ED388 = sub_42F2580(v4 ^ HIWORD(v5), sub_4703F64);
  v6 = sub_1B13498("GameFinishMonitor_OnUseSkill", 28, 0, 0);
  v7 = sub_1B13498("GameFinishMonitor_OnUseSkill", 28, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4703F78);
  qword_82ED390 = result;
  return result;
}
