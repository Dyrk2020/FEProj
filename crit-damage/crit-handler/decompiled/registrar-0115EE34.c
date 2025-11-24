// registrar 0x115ee34 (std_hash_caller=True) entries=1
__int64 sub_115EE34()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C7420);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C7420, &unk_7223630);
  v0 = sub_1B13498("BattleEquipMgr_OnActorHurt", 26, 0, 0);
  v1 = sub_1B13498("BattleEquipMgr_OnActorHurt", 26, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1EF958C);
  qword_82C7428 = result;
  return result;
}
