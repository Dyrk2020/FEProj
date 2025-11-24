// registrar 0x12ea078 (std_hash_caller=True) entries=1
__int64 sub_12EA078()
{
  int v0; // w20
  unsigned int v1; // w0

  sub_55D64B4(&unk_83096E8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83096E8, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionLuaScript_FinishHandler", 41, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionLuaScript_FinishHandler", 41, 0, 0);
  return sub_42F2580(v0 ^ HIWORD(v1), &loc_4C89F2C);
}
