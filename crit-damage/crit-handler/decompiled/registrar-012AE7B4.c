// registrar 0x12ae7b4 (std_hash_caller=True) entries=4
__int64 sub_12AE7B4()
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

  sub_55D64B4(&unk_82E8280);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8280, &unk_7223630);
  v0 = sub_1B13498("AiInteractiveA_FirstKillHandler", 31, 0, 0);
  v1 = sub_1B13498("AiInteractiveA_FirstKillHandler", 31, 0, 0);
  qword_82E8288 = sub_42F2580(v0 ^ HIWORD(v1), sub_438F248);
  v2 = sub_1B13498("AiInteractiveA_ShortCutsHandler", 31, 0, 0);
  v3 = sub_1B13498("AiInteractiveA_ShortCutsHandler", 31, 0, 0);
  qword_82E8290 = sub_42F2580(v2 ^ HIWORD(v3), sub_438F25C);
  v4 = sub_1B13498("AiInteractiveA_OnCreateInteractive", 34, 0, 0);
  v5 = sub_1B13498("AiInteractiveA_OnCreateInteractive", 34, 0, 0);
  qword_82E8298 = sub_42F2580(v4 ^ HIWORD(v5), sub_438F270);
  v6 = sub_1B13498("AiInteractiveA_OnReciveHighlightEvent", 37, 0, 0);
  v7 = sub_1B13498("AiInteractiveA_OnReciveHighlightEvent", 37, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_438F284);
  qword_82E82A0 = result;
  return result;
}
