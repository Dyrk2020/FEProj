// registrar 0x115d94c (std_hash_caller=True) entries=23
__int64 sub_115D94C()
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
  int v12; // w21
  unsigned int v13; // w0
  int v14; // w21
  unsigned int v15; // w0
  int v16; // w21
  unsigned int v17; // w0
  int v18; // w21
  unsigned int v19; // w0
  int v20; // w21
  unsigned int v21; // w0
  int v22; // w21
  unsigned int v23; // w0
  int v24; // w21
  unsigned int v25; // w0
  int v26; // w21
  unsigned int v27; // w0
  int v28; // w21
  unsigned int v29; // w0
  int v30; // w21
  unsigned int v31; // w0
  int v32; // w21
  unsigned int v33; // w0
  int v34; // w21
  unsigned int v35; // w0
  int v36; // w21
  unsigned int v37; // w0
  int v38; // w21
  unsigned int v39; // w0
  int v40; // w21
  unsigned int v41; // w0
  int v42; // w21
  unsigned int v43; // w0
  int v44; // w21
  unsigned int v45; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C52D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C52D0, &unk_7223630);
  v0 = sub_1B13498("BattleScoringManager_OnDie", 26, 0, 0);
  v1 = sub_1B13498("BattleScoringManager_OnDie", 26, 0, 0);
  qword_82C52D8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1E4F71C);
  v2 = sub_1B13498("BattleScoringManager_OnReborn", 29, 0, 0);
  v3 = sub_1B13498("BattleScoringManager_OnReborn", 29, 0, 0);
  qword_82C52E0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1E4F730);
  v4 = sub_1B13498("BattleScoringManager_OnActorCreate", 34, 0, 0);
  v5 = sub_1B13498("BattleScoringManager_OnActorCreate", 34, 0, 0);
  qword_82C52E8 = sub_42F2580(v4 ^ HIWORD(v5), sub_1E4F844);
  v6 = sub_1B13498("BattleScoringManager_OnActorHurt", 32, 0, 0);
  v7 = sub_1B13498("BattleScoringManager_OnActorHurt", 32, 0, 0);
  qword_82C52F0 = sub_42F2580(v6 ^ HIWORD(v7), sub_1E4F858);
  v8 = sub_1B13498("BattleScoringManager_OnUpdateSurrender", 38, 0, 0);
  v9 = sub_1B13498("BattleScoringManager_OnUpdateSurrender", 38, 0, 0);
  qword_82C52F8 = sub_42F2580(v8 ^ HIWORD(v9), sub_1E4F86C);
  v10 = sub_1B13498("BattleScoringManager_OnAddHeroAchievement", 41, 0, 0);
  v11 = sub_1B13498("BattleScoringManager_OnAddHeroAchievement", 41, 0, 0);
  qword_82C5300 = sub_42F2580(v10 ^ HIWORD(v11), sub_1E4F924);
  v12 = sub_1B13498("BattleScoringManager_OnBattleShopBuy", 36, 0, 0);
  v13 = sub_1B13498("BattleScoringManager_OnBattleShopBuy", 36, 0, 0);
  qword_82C5308 = sub_42F2580(v12 ^ HIWORD(v13), sub_1E4F9A8);
  v14 = sub_1B13498("BattleScoringManager_OnUseExpression", 36, 0, 0);
  v15 = sub_1B13498("BattleScoringManager_OnUseExpression", 36, 0, 0);
  qword_82C5310 = sub_42F2580(v14 ^ HIWORD(v15), sub_1E4F9BC);
  v16 = sub_1B13498("BattleScoringManager_OnUseFastChatSignal", 40, 0, 0);
  v17 = sub_1B13498("BattleScoringManager_OnUseFastChatSignal", 40, 0, 0);
  qword_82C5318 = sub_42F2580(v16 ^ HIWORD(v17), sub_1E4FA74);
  v18 = sub_1B13498("BattleScoringManager_OnUseMiniMapSignal", 39, 0, 0);
  v19 = sub_1B13498("BattleScoringManager_OnUseMiniMapSignal", 39, 0, 0);
  qword_82C5320 = sub_42F2580(v18 ^ HIWORD(v19), sub_1E4FB58);
  v20 = sub_1B13498("BattleScoringManager_OnUseSkill", 31, 0, 0);
  v21 = sub_1B13498("BattleScoringManager_OnUseSkill", 31, 0, 0);
  qword_82C5328 = sub_42F2580(v20 ^ HIWORD(v21), sub_1E4FCB4);
  v22 = sub_1B13498("BattleScoringManager_OnActorApplyBuff", 37, 0, 0);
  v23 = sub_1B13498("BattleScoringManager_OnActorApplyBuff", 37, 0, 0);
  qword_82C5330 = sub_42F2580(v22 ^ HIWORD(v23), sub_1E4FCC8);
  v24 = sub_1B13498("BattleScoringManager_OnStackBuffChange", 38, 0, 0);
  v25 = sub_1B13498("BattleScoringManager_OnStackBuffChange", 38, 0, 0);
  qword_82C5338 = sub_42F2580(v24 ^ HIWORD(v25), sub_1E4FCE0);
  v26 = sub_1B13498("BattleScoringManager_OnActorGiveBuff", 36, 0, 0);
  v27 = sub_1B13498("BattleScoringManager_OnActorGiveBuff", 36, 0, 0);
  qword_82C5340 = sub_42F2580(v26 ^ HIWORD(v27), sub_1E4FCF4);
  v28 = sub_1B13498("BattleScoringManager_OnActorStateChange", 39, 0, 0);
  v29 = sub_1B13498("BattleScoringManager_OnActorStateChange", 39, 0, 0);
  qword_82C5348 = sub_42F2580(v28 ^ HIWORD(v29), sub_1E4FD0C);
  v30 = sub_1B13498("BattleScoringManager_OnCollectBuffElapsedTime", 45, 0, 0);
  v31 = sub_1B13498("BattleScoringManager_OnCollectBuffElapsedTime", 45, 0, 0);
  qword_82C5350 = sub_42F2580(v30 ^ HIWORD(v31), sub_1E4FD20);
  v32 = sub_1B13498("BattleScoringManager_OnCreateInteractive", 40, 0, 0);
  v33 = sub_1B13498("BattleScoringManager_OnCreateInteractive", 40, 0, 0);
  qword_82C5358 = sub_42F2580(v32 ^ HIWORD(v33), sub_1E4FD34);
  v34 = sub_1B13498("BattleScoringManager_OnStrategicPointStateChange", 48, 0, 0);
  v35 = sub_1B13498("BattleScoringManager_OnStrategicPointStateChange", 48, 0, 0);
  qword_82C5360 = sub_42F2580(v34 ^ HIWORD(v35), sub_1E4FD48);
  v36 = sub_1B13498("BattleScoringManager_OnNotifyInteractiveFistbump", 48, 0, 0);
  v37 = sub_1B13498("BattleScoringManager_OnNotifyInteractiveFistbump", 48, 0, 0);
  qword_82C5368 = sub_42F2580(v36 ^ HIWORD(v37), sub_1E4FDE4);
  v38 = sub_1B13498("BattleScoringManager_OnActorDie", 31, 0, 0);
  v39 = sub_1B13498("BattleScoringManager_OnActorDie", 31, 0, 0);
  qword_82C5370 = sub_42F2580(v38 ^ HIWORD(v39), sub_1E4FDF8);
  v40 = sub_1B13498("BattleScoringManager_OnHextechBoxGained", 39, 0, 0);
  v41 = sub_1B13498("BattleScoringManager_OnHextechBoxGained", 39, 0, 0);
  qword_82C5378 = sub_42F2580(v40 ^ HIWORD(v41), sub_1E4FED0);
  v42 = sub_1B13498("BattleScoringManager_OnHextechBoxUsed", 37, 0, 0);
  v43 = sub_1B13498("BattleScoringManager_OnHextechBoxUsed", 37, 0, 0);
  qword_82C5380 = sub_42F2580(v42 ^ HIWORD(v43), sub_1E4FFAC);
  v44 = sub_1B13498("BattleScoringManager_OnSelectUSBSkill", 37, 0, 0);
  v45 = sub_1B13498("BattleScoringManager_OnSelectUSBSkill", 37, 0, 0);
  result = sub_42F2580(v44 ^ HIWORD(v45), sub_1E50088);
  qword_82C5388 = result;
  return result;
}
