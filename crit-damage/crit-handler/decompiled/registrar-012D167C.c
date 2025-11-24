// registrar 0x12d167c (std_hash_caller=True) entries=2
__int64 sub_12D167C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F9F50);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F9F50, &unk_7223630);
  v0 = sub_1B13498("FlowActionBonePlating_OnBeforeCalDamageHandler", 46, 0, 0);
  v1 = sub_1B13498("FlowActionBonePlating_OnBeforeCalDamageHandler", 46, 0, 0);
  qword_82F9F58 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A3DD40);
  v2 = sub_1B13498("FlowActionBonePlating_OnAfterCalDamageHandler", 45, 0, 0);
  v3 = sub_1B13498("FlowActionBonePlating_OnAfterCalDamageHandler", 45, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4A3DD58);
  qword_82F9F60 = result;
  return result;
}
