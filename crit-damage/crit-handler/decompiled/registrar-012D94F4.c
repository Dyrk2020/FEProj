// registrar 0x12d94f4 (std_hash_caller=True) entries=1
__int64 sub_12D94F4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FEE40);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FEE40, &unk_7223630);
  v0 = sub_1B13498("FlowActionSkillCastSuccessTrigger_OnSkillCastSuccess", 52, 0, 0);
  v1 = sub_1B13498("FlowActionSkillCastSuccessTrigger_OnSkillCastSuccess", 52, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AE7878);
  qword_82FEE48 = result;
  return result;
}
