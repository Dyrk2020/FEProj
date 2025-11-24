// registrar 0x12c96b0 (std_hash_caller=True) entries=1
__int64 sub_12C96B0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F3D20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F3D20, &unk_7223630);
  v0 = sub_1B13498("FlowActionLuaScript_FinishHandler", 33, 0, 0);
  v1 = sub_1B13498("FlowActionLuaScript_FinishHandler", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_494548C);
  qword_82F3D28 = result;
  return result;
}
