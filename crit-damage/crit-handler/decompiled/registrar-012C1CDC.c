// registrar 0x12c1cdc (std_hash_caller=True) entries=3
__int64 sub_12C1CDC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED820);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED820, &unk_7223630);
  v0 = sub_1B13498("PureRLUnitDataMonitor_OnHurt", 28, 0, 0);
  v1 = sub_1B13498("PureRLUnitDataMonitor_OnHurt", 28, 0, 0);
  qword_82ED828 = sub_42F2580(v0 ^ HIWORD(v1), sub_474AAF4);
  v2 = sub_1B13498("PureRLUnitDataMonitor_OnUseFastChatSignal", 41, 0, 0);
  v3 = sub_1B13498("PureRLUnitDataMonitor_OnUseFastChatSignal", 41, 0, 0);
  qword_82ED830 = sub_42F2580(v2 ^ HIWORD(v3), sub_474AB08);
  v4 = sub_1B13498("PureRLUnitDataMonitor_OnUseMiniMapSignal", 40, 0, 0);
  v5 = sub_1B13498("PureRLUnitDataMonitor_OnUseMiniMapSignal", 40, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_474AB1C);
  qword_82ED838 = result;
  return result;
}
