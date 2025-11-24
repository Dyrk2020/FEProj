// registrar 0x12ce524 (std_hash_caller=True) entries=1
__int64 sub_12CE524()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7790);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7790, &unk_7223630);
  v0 = sub_1B13498("ActionRushEventCheckCollision_OnSkillInterrupt", 46, 0, 0);
  v1 = sub_1B13498("ActionRushEventCheckCollision_OnSkillInterrupt", 46, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_49BDA38);
  qword_82F7798 = result;
  return result;
}
