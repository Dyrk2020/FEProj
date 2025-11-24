// registrar 0x1160ad0 (std_hash_caller=True) entries=4
__int64 sub_1160AD0()
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

  sub_55D64B4(&unk_82C9D90);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9D90, &unk_7223630);
  v0 = sub_1B13498("ActorComponentHatred_OnReborn", 29, 0, 0);
  v1 = sub_1B13498("ActorComponentHatred_OnReborn", 29, 0, 0);
  qword_82C9D98 = sub_42F2580(v0 ^ HIWORD(v1), sub_1FE4FF0);
  v2 = sub_1B13498("ActorComponentHatred_OnApplyBuff", 32, 0, 0);
  v3 = sub_1B13498("ActorComponentHatred_OnApplyBuff", 32, 0, 0);
  qword_82C9DA0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FE501C);
  v4 = sub_1B13498("ActorComponentHatred_OnHurt", 27, 0, 0);
  v5 = sub_1B13498("ActorComponentHatred_OnHurt", 27, 0, 0);
  qword_82C9DA8 = sub_42F2580(v4 ^ HIWORD(v5), sub_1FE5034);
  v6 = sub_1B13498("ActorComponentHatred_OnImmuneBuff", 33, 0, 0);
  v7 = sub_1B13498("ActorComponentHatred_OnImmuneBuff", 33, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_1FE504C);
  qword_82C9DB0 = result;
  return result;
}
