// registrar 0x12c0534 (std_hash_caller=True) entries=3
__int64 sub_12C0534()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED260);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED260, &unk_7223630);
  v0 = sub_1B13498("SLUnitDataMonitor_OnHurt", 24, 0, 0);
  v1 = sub_1B13498("SLUnitDataMonitor_OnHurt", 24, 0, 0);
  qword_82ED268 = sub_42F2580(v0 ^ HIWORD(v1), sub_46ECA9C);
  v2 = sub_1B13498("SLUnitDataMonitor_OnUseFastChatSignal", 37, 0, 0);
  v3 = sub_1B13498("SLUnitDataMonitor_OnUseFastChatSignal", 37, 0, 0);
  qword_82ED270 = sub_42F2580(v2 ^ HIWORD(v3), sub_46ECAB0);
  v4 = sub_1B13498("SLUnitDataMonitor_OnUseMiniMapSignal", 36, 0, 0);
  v5 = sub_1B13498("SLUnitDataMonitor_OnUseMiniMapSignal", 36, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_46ECAC4);
  qword_82ED278 = result;
  return result;
}
