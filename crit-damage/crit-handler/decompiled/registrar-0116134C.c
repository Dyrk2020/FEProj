// registrar 0x116134c (std_hash_caller=True) entries=4
__int64 sub_116134C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CA4E0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CA4E0, &unk_7223630);
  v0 = sub_1B13498("ActorComponentAttribute_OnReborn", 32, 0, 0);
  v1 = sub_1B13498("ActorComponentAttribute_OnReborn", 32, 0, 0);
  qword_82CA4E8 = sub_42F2580(v0 ^ HIWORD(v1), sub_200B6C0);
  v2 = sub_1B13498("ActorComponentAttribute_OnHurtingHandler", 40, 0, 0);
  v3 = sub_1B13498("ActorComponentAttribute_OnHurtingHandler", 40, 0, 0);
  qword_82CA4F0 = sub_42F2580(v2 ^ HIWORD(v3), sub_200B6D8);
  v4 = sub_1B13498("ActorComponentAttribute_OnHurtHp", 32, 0, 0);
  v5 = sub_1B13498("ActorComponentAttribute_OnHurtHp", 32, 0, 0);
  qword_82CA4F8 = sub_42F2580(v4 ^ HIWORD(v5), sub_200B7B0);
  v6 = sub_1B13498("ActorComponentAttribute_OnUSBSkillChange", 40, 0, 0);
  v7 = sub_1B13498("ActorComponentAttribute_OnUSBSkillChange", 40, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_200B88C);
  qword_82CA500 = result;
  return result;
}
