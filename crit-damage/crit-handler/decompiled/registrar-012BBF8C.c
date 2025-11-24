// registrar 0x12bbf8c (std_hash_caller=True) entries=1
__int64 sub_12BBF8C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EBEB0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EBEB0, &unk_7223630);
  v0 = sub_1B13498("AITeamSceneObjs_onUseSkill", 26, 0, 0);
  v1 = sub_1B13498("AITeamSceneObjs_onUseSkill", 26, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_456C74C);
  qword_82EBEB8 = result;
  qword_82EBE98 = 98304;
  qword_82EBEA0 = 21299;
  qword_82EBE90 = 327680;
  qword_82EBEA8 = 81920;
  return result;
}
