// registrar 0x12ce99c (std_hash_caller=True) entries=1
__int64 sub_12CE99C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7BD0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7BD0, &unk_7223630);
  v0 = sub_1B13498("FlowActionExitDurationOnCollision_OnSkillInterrupt", 50, 0, 0);
  v1 = sub_1B13498("FlowActionExitDurationOnCollision_OnSkillInterrupt", 50, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_49CE9CC);
  qword_82F7BD8 = result;
  return result;
}
