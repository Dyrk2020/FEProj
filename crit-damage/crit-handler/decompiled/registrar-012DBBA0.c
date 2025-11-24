// registrar 0x12dbba0 (std_hash_caller=True) entries=1
__int64 sub_12DBBA0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8300338);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8300338, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerActorUseRushSkillEnd_OnActorUseRushSkillEnd", 60, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerActorUseRushSkillEnd_OnActorUseRushSkillEnd", 60, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4B0AC28);
  qword_8300340 = result;
  return result;
}
