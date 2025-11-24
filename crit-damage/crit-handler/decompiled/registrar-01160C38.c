// registrar 0x1160c38 (std_hash_caller=True) entries=3
__int64 sub_1160C38()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9E50);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9E50, &unk_7223630);
  v0 = sub_1B13498("ActorComponentHelpMarker_OnActorApplyBuff", 41, 0, 0);
  v1 = sub_1B13498("ActorComponentHelpMarker_OnActorApplyBuff", 41, 0, 0);
  qword_82C9E58 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FE7D0C);
  v2 = sub_1B13498("ActorComponentHelpMarker_OnActorRemoveBuff", 42, 0, 0);
  v3 = sub_1B13498("ActorComponentHelpMarker_OnActorRemoveBuff", 42, 0, 0);
  qword_82C9E60 = sub_42F2580(v2 ^ HIWORD(v3), sub_1FE7DB4);
  v4 = sub_1B13498("ActorComponentHelpMarker_OnBeHealHP", 35, 0, 0);
  v5 = sub_1B13498("ActorComponentHelpMarker_OnBeHealHP", 35, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1FE7E5C);
  qword_82C9E68 = result;
  return result;
}
