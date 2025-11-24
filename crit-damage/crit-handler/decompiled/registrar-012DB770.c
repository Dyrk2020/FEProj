// registrar 0x12db770 (std_hash_caller=True) entries=1
__int64 sub_12DB770()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83000B0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83000B0, &unk_7223630);
  v0 = sub_1B13498("FlowActionSkillPushQueueTrigger_OnSkillPushQueue", 48, 0, 0);
  v1 = sub_1B13498("FlowActionSkillPushQueueTrigger_OnSkillPushQueue", 48, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4B05904);
  qword_83000B8 = result;
  return result;
}
