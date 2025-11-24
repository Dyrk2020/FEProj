// registrar 0x12bb50c (std_hash_caller=True) entries=3
__int64 sub_12BB50C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EBA20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EBA20, &unk_7223630);
  v0 = sub_1B13498("TeamAiTacticsMgr_OnAIObjCreate", 30, 0, 0);
  v1 = sub_1B13498("TeamAiTacticsMgr_OnAIObjCreate", 30, 0, 0);
  qword_82EBA28 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4532FDC);
  v2 = sub_1B13498("TeamAiTacticsMgr_OnAiObjDestroy", 31, 0, 0);
  v3 = sub_1B13498("TeamAiTacticsMgr_OnAiObjDestroy", 31, 0, 0);
  qword_82EBA30 = sub_42F2580(v2 ^ HIWORD(v3), sub_4532FF0);
  v4 = sub_1B13498("TeamAiTacticsMgr_OnDie", 22, 0, 0);
  v5 = sub_1B13498("TeamAiTacticsMgr_OnDie", 22, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4533004);
  qword_82EBA38 = result;
  return result;
}
