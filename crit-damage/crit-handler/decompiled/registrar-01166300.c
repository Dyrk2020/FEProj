// registrar 0x1166300 (std_hash_caller=True) entries=6
__int64 sub_1166300()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  int v8; // w21
  unsigned int v9; // w0
  int v10; // w21
  unsigned int v11; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CFF20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CFF20, &unk_7223630);
  v0 = sub_1B13498("HeroComponentKillAssist_OnBeforeDieHandler", 42, 0, 0);
  v1 = sub_1B13498("HeroComponentKillAssist_OnBeforeDieHandler", 42, 0, 0);
  sub_42F2580(v0 ^ HIWORD(v1), &loc_223C538);
  v2 = sub_1B13498("HeroComponentKillAssist_OnActorApplyBuff", 40, 0, 0);
  v3 = sub_1B13498("HeroComponentKillAssist_OnActorApplyBuff", 40, 0, 0);
  sub_42F2580(v2 ^ HIWORD(v3), sub_223C558);
  v4 = sub_1B13498("HeroComponentKillAssist_OnActorRemoveBuff", 41, 0, 0);
  v5 = sub_1B13498("HeroComponentKillAssist_OnActorRemoveBuff", 41, 0, 0);
  qword_82CFF28 = sub_42F2580(v4 ^ HIWORD(v5), sub_223C580);
  v6 = sub_1B13498("HeroComponentKillAssist_OnBeHitSpellShield", 42, 0, 0);
  v7 = sub_1B13498("HeroComponentKillAssist_OnBeHitSpellShield", 42, 0, 0);
  qword_82CFF30 = sub_42F2580(v6 ^ HIWORD(v7), sub_223C598);
  v8 = sub_1B13498("HeroComponentKillAssist_OnStrategicPointStateChange", 51, 0, 0);
  v9 = sub_1B13498("HeroComponentKillAssist_OnStrategicPointStateChange", 51, 0, 0);
  qword_82CFF38 = sub_42F2580(v8 ^ HIWORD(v9), sub_223C5B0);
  v10 = sub_1B13498("HeroComponentKillAssist_OnCollectBuffElapsedTime", 48, 0, 0);
  v11 = sub_1B13498("HeroComponentKillAssist_OnCollectBuffElapsedTime", 48, 0, 0);
  result = sub_42F2580(v10 ^ HIWORD(v11), sub_223C668);
  qword_82CFF40 = result;
  return result;
}
