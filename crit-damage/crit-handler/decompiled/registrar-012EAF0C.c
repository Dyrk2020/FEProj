// registrar 0x12eaf0c (std_hash_caller=True) entries=1
__int64 sub_12EAF0C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8309CB8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8309CB8, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionComponentFlowEventListener_OnEventHandler", 59, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionComponentFlowEventListener_OnEventHandler", 59, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4C9ED14);
  qword_8309CC0 = result;
  return result;
}
