// registrar 0x12cf02c (std_hash_caller=True) entries=2
__int64 sub_12CF02C()
{
  int v0; // w22
  unsigned int v1; // w0
  int v2; // w22
  unsigned int v3; // w0

  sub_55D64B4(&unk_82F82B0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F82B0, &unk_7223630);
  v0 = sub_1B13498("FlowActionHurtOnCollision_OnSkillInterrupt", 42, 0, 0);
  v1 = sub_1B13498("FlowActionHurtOnCollision_OnSkillInterrupt", 42, 0, 0);
  qword_82F82B8 = sub_42F2580(v0 ^ HIWORD(v1), sub_49E9C1C);
  v2 = sub_1B13498("FlowActionHurtOnCollision_OnFlash", 33, 0, 0);
  v3 = sub_1B13498("FlowActionHurtOnCollision_OnFlash", 33, 0, 0);
  qword_82F82C0 = sub_42F2580(v2 ^ HIWORD(v3), sub_49E9D14);
  qword_82F81F8 = 0;
  qword_82F8200 = 0;
  qword_82F81F0 = 0;
  dword_82F8208 = 8;
  __cxa_atexit((void (*)(void *))&loc_20BCC2C, &qword_82F81F0, &unk_7223630);
  qword_82F8218 = 0;
  qword_82F8220 = 0;
  qword_82F8210 = 0;
  dword_82F8228 = 8;
  return __cxa_atexit((void (*)(void *))&loc_20BCC2C, &qword_82F8210, &unk_7223630);
}
