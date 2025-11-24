// registrar 0x1165454 (std_hash_caller=True) entries=3
__int64 sub_1165454()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CF130);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CF130, &unk_7223630);
  v0 = sub_1B13498("RuinDataMgr_ActorDieHandler", 27, 0, 0);
  v1 = sub_1B13498("RuinDataMgr_ActorDieHandler", 27, 0, 0);
  qword_82CF138 = sub_42F2580(v0 ^ HIWORD(v1), sub_21E8A7C);
  v2 = sub_1B13498("RuinDataMgr_EnterBattle", 23, 0, 0);
  v3 = sub_1B13498("RuinDataMgr_EnterBattle", 23, 0, 0);
  qword_82CF140 = sub_42F2580(v2 ^ HIWORD(v3), sub_21E8A90);
  v4 = sub_1B13498("RuinDataMgr_MonsterCreateFinish", 31, 0, 0);
  v5 = sub_1B13498("RuinDataMgr_MonsterCreateFinish", 31, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_21E8B28);
  qword_82CF148 = result;
  return result;
}
