// registrar 0x115ccdc (std_hash_caller=True) entries=2
__int64 sub_115CCDC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C3A90);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C3A90, &unk_7223630);
  v0 = sub_1B13498("CherryRandomGainRuleMgr_OnRandomGainShowPickedFinish", 52, 0, 0);
  v1 = sub_1B13498("CherryRandomGainRuleMgr_OnRandomGainShowPickedFinish", 52, 0, 0);
  qword_82C3A98 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1D9AC80);
  v2 = sub_1B13498("CherryRandomGainRuleMgr_OnRandomGainPicked", 42, 0, 0);
  v3 = sub_1B13498("CherryRandomGainRuleMgr_OnRandomGainPicked", 42, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1D9AC94);
  qword_82C3AA0 = result;
  return result;
}
