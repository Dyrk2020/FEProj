// registrar 0x12d6824 (std_hash_caller=True) entries=1
__int64 sub_12D6824()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FD660);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FD660, &unk_7223630);
  v0 = sub_1B13498("FlowActionLeaveGrassTrigger_ActorLeaveGrass", 43, 0, 0);
  v1 = sub_1B13498("FlowActionLeaveGrassTrigger_ActorLeaveGrass", 43, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4ABF6D0);
  qword_82FD668 = result;
  return result;
}
