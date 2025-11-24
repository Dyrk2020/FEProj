// registrar 0x1160278 (std_hash_caller=True) entries=2
__int64 sub_1160278()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9100);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9100, &unk_7223630);
  v0 = sub_1B13498("ActorComponentKillAssist_OnBeforeDieHandler", 43, 0, 0);
  v1 = sub_1B13498("ActorComponentKillAssist_OnBeforeDieHandler", 43, 0, 0);
  qword_82C9108 = sub_42F2580(v0 ^ HIWORD(v1), sub_1F9964C);
  v2 = sub_1B13498("ActorComponentKillAssist_OnActorApplyBuff", 41, 0, 0);
  v3 = sub_1B13498("ActorComponentKillAssist_OnActorApplyBuff", 41, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1F99664);
  qword_82C9110 = result;
  return result;
}
