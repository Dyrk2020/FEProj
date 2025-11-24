// registrar 0x12dbf00 (std_hash_caller=True) entries=2
__int64 sub_12DBF00()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83004D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83004D0, &unk_7223630);
  v0 = sub_1B13498("FlowActionHeroKillAssistTrigger_OnKillHander", 44, 0, 0);
  v1 = sub_1B13498("FlowActionHeroKillAssistTrigger_OnKillHander", 44, 0, 0);
  qword_83004D8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4B0DE54);
  v2 = sub_1B13498("FlowActionHeroKillAssistTrigger_OnKillAssistHander", 50, 0, 0);
  v3 = sub_1B13498("FlowActionHeroKillAssistTrigger_OnKillAssistHander", 50, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4B0DF60);
  qword_83004E0 = result;
  return result;
}
