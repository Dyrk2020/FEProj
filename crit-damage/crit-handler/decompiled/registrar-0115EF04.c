// registrar 0x115ef04 (std_hash_caller=True) entries=1
__int64 sub_115EF04()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C7630);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C7630, &unk_7223630);
  v0 = sub_1B13498("BattleEquipCancelRuleMgr_OnUseSkill", 35, 0, 0);
  v1 = sub_1B13498("BattleEquipCancelRuleMgr_OnUseSkill", 35, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1F03FE0);
  qword_82C7638 = result;
  return result;
}
