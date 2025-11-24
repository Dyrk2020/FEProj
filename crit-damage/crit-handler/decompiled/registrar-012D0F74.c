// registrar 0x12d0f74 (std_hash_caller=True) entries=1
__int64 sub_12D0F74()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F99F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F99F0, &unk_7223630);
  v0 = sub_1B13498("FlowActionBulletEmitter_CalcTrasnformInfo", 41, 0, 0);
  v1 = sub_1B13498("FlowActionBulletEmitter_CalcTrasnformInfo", 41, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_4A30E0C);
  qword_82F99F8 = result;
  return result;
}
