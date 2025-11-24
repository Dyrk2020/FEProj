// registrar 0x12dc7f8 (std_hash_caller=True) entries=2
__int64 sub_12DC7F8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8300A60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8300A60, &unk_7223630);
  v0 = sub_1B13498("FlowActionDodgeEffect_OnCanBehit", 32, 0, 0);
  v1 = sub_1B13498("FlowActionDodgeEffect_OnCanBehit", 32, 0, 0);
  qword_8300A68 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4B19C44);
  v2 = sub_1B13498("FlowActionDodgeEffect_OnBeforeApplyBuff", 39, 0, 0);
  v3 = sub_1B13498("FlowActionDodgeEffect_OnBeforeApplyBuff", 39, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4B19C5C);
  qword_8300A70 = result;
  return result;
}
