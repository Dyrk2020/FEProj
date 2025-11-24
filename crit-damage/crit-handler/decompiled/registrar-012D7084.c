// registrar 0x12d7084 (std_hash_caller=True) entries=1
__int64 sub_12D7084()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FDB00);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FDB00, &unk_7223630);
  v0 = sub_1B13498("FlowActionCreateBulletTrigger_OnCreateBullet", 44, 0, 0);
  v1 = sub_1B13498("FlowActionCreateBulletTrigger_OnCreateBullet", 44, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AC7800);
  qword_82FDB08 = result;
  return result;
}
