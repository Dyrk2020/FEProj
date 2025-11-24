// registrar 0x12c1824 (std_hash_caller=True) entries=5
__int64 sub_12C1824()
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
  __int64 result; // x0

  sub_55D64B4(&unk_82ED700);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED700, &unk_7223630);
  v0 = sub_1B13498("AICoachMonitor_OnDie", 20, 0, 0);
  v1 = sub_1B13498("AICoachMonitor_OnDie", 20, 0, 0);
  qword_82ED708 = sub_42F2580(v0 ^ HIWORD(v1), sub_4733BC0);
  v2 = sub_1B13498("AICoachMonitor_OnActorFinishInit", 32, 0, 0);
  v3 = sub_1B13498("AICoachMonitor_OnActorFinishInit", 32, 0, 0);
  qword_82ED710 = sub_42F2580(v2 ^ HIWORD(v3), sub_4733BD4);
  v4 = sub_1B13498("AICoachMonitor_OnReciveHighLight", 32, 0, 0);
  v5 = sub_1B13498("AICoachMonitor_OnReciveHighLight", 32, 0, 0);
  qword_82ED718 = sub_42F2580(v4 ^ HIWORD(v5), sub_4733C40);
  v6 = sub_1B13498("AICoachMonitor_OnActorApplyBuff", 31, 0, 0);
  v7 = sub_1B13498("AICoachMonitor_OnActorApplyBuff", 31, 0, 0);
  qword_82ED720 = sub_42F2580(v6 ^ HIWORD(v7), sub_4733CB4);
  v8 = sub_1B13498("AICoachMonitor_OnActorRemoveBuff", 32, 0, 0);
  v9 = sub_1B13498("AICoachMonitor_OnActorRemoveBuff", 32, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), sub_4733CE8);
  qword_82ED728 = result;
  return result;
}
