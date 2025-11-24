// registrar 0x12c1a54 (std_hash_caller=True) entries=8
__int64 sub_12C1A54()
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
  __int64 result; // x0

  sub_55D64B4(&unk_82ED7A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED7A0, &unk_7223630);
  v0 = sub_1B13498("GameSafeMonitor_OnStrategicTargetUpdate", 39, 0, 0);
  v1 = sub_1B13498("GameSafeMonitor_OnStrategicTargetUpdate", 39, 0, 0);
  qword_82ED7A8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_474007C);
  v2 = sub_1B13498("GameSafeMonitor_OnActorHurt", 27, 0, 0);
  v3 = sub_1B13498("GameSafeMonitor_OnActorHurt", 27, 0, 0);
  qword_82ED7B0 = sub_42F2580(v2 ^ HIWORD(v3), sub_4740090);
  v4 = sub_1B13498("GameSafeMonitor_OnActorKillOrDie", 32, 0, 0);
  v5 = sub_1B13498("GameSafeMonitor_OnActorKillOrDie", 32, 0, 0);
  qword_82ED7B8 = sub_42F2580(v4 ^ HIWORD(v5), sub_47400A4);
  v6 = sub_1B13498("GameSafeMonitor_OnActorUseSkill", 31, 0, 0);
  v7 = sub_1B13498("GameSafeMonitor_OnActorUseSkill", 31, 0, 0);
  qword_82ED7C0 = sub_42F2580(v6 ^ HIWORD(v7), sub_47400B8);
  v8 = sub_1B13498("GameSafeMonitor_OnSendSignal", 28, 0, 0);
  v9 = sub_1B13498("GameSafeMonitor_OnSendSignal", 28, 0, 0);
  qword_82ED7C8 = sub_42F2580(v8 ^ HIWORD(v9), sub_47400CC);
  v10 = sub_1B13498("GameSafeMonitor_OnActorUseHexGate", 33, 0, 0);
  v11 = sub_1B13498("GameSafeMonitor_OnActorUseHexGate", 33, 0, 0);
  qword_82ED7D0 = sub_42F2580(v10 ^ HIWORD(v11), sub_47400E0);
  v12 = sub_1B13498("GameSafeMonitor_OnSendFastSignal", 32, 0, 0);
  v13 = sub_1B13498("GameSafeMonitor_OnSendFastSignal", 32, 0, 0);
  qword_82ED7D8 = sub_42F2580(v12 ^ HIWORD(v13), sub_47400F4);
  v14 = sub_1B13498("GameSafeMonitor_OnSendMiniMapSignal", 35, 0, 0);
  v15 = sub_1B13498("GameSafeMonitor_OnSendMiniMapSignal", 35, 0, 0);
  result = sub_42F2580(v14 ^ HIWORD(v15), sub_4740108);
  qword_82ED7E0 = result;
  return result;
}
