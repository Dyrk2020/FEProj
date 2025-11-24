// registrar 0x12dbfd8 (std_hash_caller=True) entries=3
__int64 sub_12DBFD8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8300530);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8300530, &unk_7223630);
  v0 = sub_1B13498("FlowActionKillTrigger_OnKillHander", 34, 0, 0);
  v1 = sub_1B13498("FlowActionKillTrigger_OnKillHander", 34, 0, 0);
  qword_8300538 = sub_42F2580(v0 ^ HIWORD(v1), sub_4B0ED84);
  v2 = sub_1B13498("FlowActionKillTrigger_OnInflict", 31, 0, 0);
  v3 = sub_1B13498("FlowActionKillTrigger_OnInflict", 31, 0, 0);
  qword_8300540 = sub_42F2580(v2 ^ HIWORD(v3), sub_4B0ED9C);
  v4 = sub_1B13498("FlowActionKillTrigger_OnFrameEnd", 32, 0, 0);
  v5 = sub_1B13498("FlowActionKillTrigger_OnFrameEnd", 32, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4B0EEA4);
  qword_8300548 = result;
  return result;
}
