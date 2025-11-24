// registrar 0x12cd1e4 (std_hash_caller=True) entries=2
__int64 sub_12CD1E4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F68D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F68D0, &unk_7223630);
  v0 = sub_1B13498("FlowActionForceSetActorFogPos_OnBeforeFowChanged", 48, 0, 0);
  v1 = sub_1B13498("FlowActionForceSetActorFogPos_OnBeforeFowChanged", 48, 0, 0);
  qword_82F68D8 = sub_42F2580(v0 ^ HIWORD(v1), sub_49944E0);
  v2 = sub_1B13498("FlowActionForceSetActorFogPos_OnAfterFowChanged", 47, 0, 0);
  v3 = sub_1B13498("FlowActionForceSetActorFogPos_OnAfterFowChanged", 47, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_49944F4);
  qword_82F68E0 = result;
  return result;
}
