// registrar 0x12b0178 (std_hash_caller=True) entries=2
__int64 sub_12B0178()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E8960);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E8960, &unk_7223630);
  v0 = sub_1B13498("CherryEventProcess_OnCherryAfterRounrdChange", 44, 0, 0);
  v1 = sub_1B13498("CherryEventProcess_OnCherryAfterRounrdChange", 44, 0, 0);
  qword_82E8968 = sub_42F2580(v0 ^ HIWORD(v1), sub_43D82B8);
  v2 = sub_1B13498("CherryEventProcess_ReadyToRestSkillHandler", 42, 0, 0);
  v3 = sub_1B13498("CherryEventProcess_ReadyToRestSkillHandler", 42, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_43D8348);
  qword_82E8970 = result;
  return result;
}
