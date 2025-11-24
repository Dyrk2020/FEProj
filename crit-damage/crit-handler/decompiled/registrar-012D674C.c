// registrar 0x12d674c (std_hash_caller=True) entries=2
__int64 sub_12D674C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FD610);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FD610, &unk_7223630);
  v0 = sub_1B13498("FlowActionBeImmuneBuffTrigger_OnBeImmuneBuff", 44, 0, 0);
  v1 = sub_1B13498("FlowActionBeImmuneBuffTrigger_OnBeImmuneBuff", 44, 0, 0);
  qword_82FD618 = sub_42F2580(v0 ^ HIWORD(v1), sub_4ABEFD8);
  v2 = sub_1B13498("FlowActionBeImmuneBuffTrigger_OnBeImmuneSpellShield", 51, 0, 0);
  v3 = sub_1B13498("FlowActionBeImmuneBuffTrigger_OnBeImmuneSpellShield", 51, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4ABEFF0);
  qword_82FD620 = result;
  return result;
}
