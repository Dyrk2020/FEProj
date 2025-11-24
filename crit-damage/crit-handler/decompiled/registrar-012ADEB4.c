// registrar 0x12adeb4 (std_hash_caller=True) entries=4
__int64 sub_12ADEB4()
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

  sub_55D64B4(&unk_82E8050);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8050, &unk_7223630);
  v0 = sub_1B13498("AiInteractiveNewA_FirstKillHandler", 34, 0, 0);
  v1 = sub_1B13498("AiInteractiveNewA_FirstKillHandler", 34, 0, 0);
  qword_82E8058 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4368820);
  v2 = sub_1B13498("AiInteractiveNewA_ShortCutsHandler", 34, 0, 0);
  v3 = sub_1B13498("AiInteractiveNewA_ShortCutsHandler", 34, 0, 0);
  qword_82E8060 = sub_42F2580(v2 ^ HIWORD(v3), sub_4368864);
  v4 = sub_1B13498("AiInteractiveNewA_OnCreateInteractive", 37, 0, 0);
  v5 = sub_1B13498("AiInteractiveNewA_OnCreateInteractive", 37, 0, 0);
  qword_82E8068 = sub_42F2580(v4 ^ HIWORD(v5), sub_4368878);
  v6 = sub_1B13498("AiInteractiveNewA_OnReciveHighlightEvent", 40, 0, 0);
  v7 = sub_1B13498("AiInteractiveNewA_OnReciveHighlightEvent", 40, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_436888C);
  qword_82E8070 = result;
  return result;
}
