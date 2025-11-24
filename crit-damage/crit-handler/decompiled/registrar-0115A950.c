// registrar 0x115a950 (std_hash_caller=True) entries=3
__int64 sub_115A950()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BE4A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BE4A0, &unk_7223630);
  v0 = sub_1B13498("CCSUnitDataMonitor_OnHurt", 25, 0, 0);
  v1 = sub_1B13498("CCSUnitDataMonitor_OnHurt", 25, 0, 0);
  qword_82BE4A8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1B73EC0);
  v2 = sub_1B13498("CCSUnitDataMonitor_OnUseFastChatSignal", 38, 0, 0);
  v3 = sub_1B13498("CCSUnitDataMonitor_OnUseFastChatSignal", 38, 0, 0);
  qword_82BE4B0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1B73ED4);
  v4 = sub_1B13498("CCSUnitDataMonitor_OnUseMiniMapSignal", 37, 0, 0);
  v5 = sub_1B13498("CCSUnitDataMonitor_OnUseMiniMapSignal", 37, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1B73EE8);
  qword_82BE4B8 = result;
  return result;
}
