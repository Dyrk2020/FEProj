// ===== case475-GamePlayConfigResObject @ 016ee03c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case475-GamePlayConfigResObject


void case475_GamePlayConfigResObject(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 *puVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x0187c08c(&uStack_40,&"GamePlayConfigResObject",&uStack_50,0x736d101);
  uVar3 = func_0x0187b310(&uStack_40,&"levelRuleType",&UNK_0187b4f8,0,&UNK_0187b500,0);
  uVar3 = func_0x0187b310(uVar3,&"battleLineNumType",&UNK_0187b508,0,&UNK_0187b510,0);
  uVar3 = func_0x0187b310(uVar3,&"equipPurchaseRuleType",&UNK_0187b518,0,&UNK_0187b520,0);
  puVar4 = (undefined8 *)func_0x0187b310(uVar3,&"equipCDRuleType",&UNK_0187b528,0,&UNK_0187b530,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0187b538;
  func_0x0124ec90(*puVar4,&UNK_0187c670,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"monsterThemeSkinAssetObj");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"monsterThemeSkinAssetObj");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0187b310(puVar4,&"iBattleShopKey",&UNK_0187b540,0,&UNK_0187b548,0);
  uVar3 = func_0x0187b310(uVar3,&"iEquipShopKey",&UNK_0187b550,0,&UNK_0187b558,0);
  uVar3 = func_0x0187b310(uVar3,&"iMaxCountDownTime",&UNK_0187b560,0,&UNK_0187b568,0);
  uVar3 = func_0x0187b310(uVar3,&"iRestrictMiniMapRange",&UNK_0187b570,0,&UNK_0187b578,0);
  uVar3 = func_0x0187b310(uVar3,&"eUseMode",&UNK_0187b580,0,&UNK_0187b588,0);
  uVar3 = func_0x0187b310(uVar3,&"iEquipSlotsCapacityA",&UNK_0187b590,0,&UNK_0187b598,0);
  uVar3 = func_0x0187b310(uVar3,&"iEquipSlotsCapacityB",&UNK_0187b5a0,0,&UNK_0187b5a8,0);
  uVar3 = func_0x0187b5b0(uVar3,&"bodyScaleMin",&UNK_0187b798,0,&UNK_0187b7a0,0);
  uVar3 = func_0x0187b5b0(uVar3,&"bodyScaleMax",&UNK_0187b7a8,0,&UNK_0187b7b0,0);
  puVar4 = (undefined8 *)func_0x0187b310(uVar3,&"mapType",&UNK_0187b7b8,0,&UNK_0187b7c0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0187b7c8;
  func_0x0124ec90(*puVar4,&UNK_0187c9e0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"mapAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"mapAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0187b7d0(puVar4,&"mapGridSize",&UNK_0187b9b8,0,&UNK_0187b9c4,0);
  uVar3 = func_0x0187b310(uVar3,&"mapCols",&UNK_0187b9cc,0,&UNK_0187b9d4,0);
  uVar3 = func_0x0187b310(uVar3,&"mapRows",&UNK_0187b9dc,0,&UNK_0187b9e4,0);
  uVar3 = func_0x0187b310(uVar3,&"iHeroLevel",&UNK_0187b9ec,0,&UNK_0187b9f4,0);
  uVar3 = func_0x0187b310(uVar3,&"iMaxMoney",&UNK_0187b9fc,0,&UNK_0187ba04,0);
  uVar3 = func_0x0187b310(uVar3,&"iBornMoney",&UNK_0187ba0c,0,&UNK_0187ba14,0);
  uVar3 = func_0x0187b310(uVar3,&"iBattleBeginTime",&UNK_0187ba1c,0,&UNK_0187ba24,0);
  uVar3 = func_0x0187b310(uVar3,&"iExpMoneyReviseKey",&UNK_0187ba2c,0,&UNK_0187ba34,0);
  uVar3 = func_0x0187b310(uVar3,&"iMonsterGrowthKey",&UNK_0187ba3c,0,&UNK_0187ba44,0);
  uVar3 = func_0x0187b310(uVar3,&"iRhythmKey",&UNK_0187ba4c,0,&UNK_0187ba54,0);
  uVar3 = func_0x0187b310(uVar3,&"iHeroLvExpKey",&UNK_0187ba5c,0,&UNK_0187ba64,0);
  uVar3 = func_0x0187b310(uVar3,&"iHeroAttrLevelKey",&UNK_0187ba6c,0,&UNK_0187ba74,0);
  uVar3 = func_0x0187b310(uVar3,&"iHeroBaseAttrKey",&UNK_0187ba7c,0,&UNK_0187ba84,0);
  uVar3 = func_0x0187b310(uVar3,&"iDeadSkillCDSpeed",&UNK_0187ba8c,0,&UNK_0187ba94,0);
  uVar3 = func_0x0187b310(uVar3,&"iSummonerSpellInitCD",&UNK_0187ba9c,0,&UNK_0187baa4,0);
  uVar3 = func_0x0187baac(uVar3,&"averageKillMoney",&UNK_0187bc94,0,&UNK_0187bc9c,0);
  uVar3 = func_0x0187b310(uVar3,&"iCampNum",&UNK_0187bca4,0,&UNK_0187bcac,0);
  uVar3 = func_0x0187b310(uVar3,&"iCampPlayerNum",&UNK_0187bcb4,0,&UNK_0187bcbc,0);
  uVar3 = func_0x0187b310(uVar3,&"saleEquipMoneyRate",&UNK_0187bcc4,0,&UNK_0187bccc,0);
  uVar3 = func_0x0187b310(uVar3,&"iEquipExchangePubishCD",&UNK_0187bcd4,0,&UNK_0187bcdc,0);
  uVar3 = func_0x0187b310(uVar3,&"iMaxLevel",&UNK_0187bce4,0,&UNK_0187bcec,0);
  uVar3 = func_0x0187b310(uVar3,&"treatFlyTextMin",&UNK_0187bcf4,0,&UNK_0187bcfc,0);
  uVar3 = func_0x0187b5b0(uVar3,&"mpRecoverInterval",&UNK_0187bd04,0,&UNK_0187bd0c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableHeroMaxReviveTime",&UNK_0187bd14,0,&UNK_0187bd1c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"heroMaxReviveTime",&UNK_0187bd24,0,&UNK_0187bd2c,0);
  uVar3 = func_0x0187baac(uVar3,&"overrideFightDuration",&UNK_0187bd34,0,&UNK_0187bd3c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"fightDuration",&UNK_0187bd44,0,&UNK_0187bd4c,0);
  uVar3 = func_0x0187b310(uVar3,&"t3ActiveEquipBagSize",&UNK_0187bd54,0,&UNK_0187bd5c,0);
  uVar3 = func_0x0187b310(uVar3,&"battleModeConfigType",&UNK_0187bd64,0,&UNK_0187bd6c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"commonCDFix",&UNK_0187bd74,0,&UNK_0187bd7c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"summonerCDFix",&UNK_0187bd84,0,&UNK_0187bd8c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"commonTreatMyselfFix",&UNK_0187bd94,0,&UNK_0187bd9c,0);
  uVar3 = func_0x0187b5b0(uVar3,&"commonTreatOtherFix",&UNK_0187bda4,0,&UNK_0187bdac,0);
  uVar3 = func_0x0187b5b0(uVar3,&"aoeDamageFixForSoldier",&UNK_0187bdb4,0,&UNK_0187bdbc,0);
  uVar3 = func_0x0187b5b0(uVar3,&"commonRemoteHeroDmgFix",&UNK_0187bdc4,0,&UNK_0187bdcc,0);
  uVar3 = func_0x0187baac(uVar3,&"enableValueModifyQueue",&UNK_0187bdd4,0,&UNK_0187bddc,0);
  uVar3 = func_0x0187baac(uVar3,&"enableTrait",&UNK_0187bde4,0,&UNK_0187bdec,0);
  uVar3 = func_0x0187baac(uVar3,&"enableGain",&UNK_0187bdf4,0,&UNK_0187bdfc,0);
  uVar3 = func_0x0187b310(uVar3,&"defaultGainVersion",&UNK_0187be04,0,&UNK_0187be0c,0);
  uVar3 = func_0x0187b310(uVar3,&"customGainId",&UNK_0187be14,0,&UNK_0187be1c,0);
  uVar3 = func_0x0187baac(uVar3,&"gainRule6A",&UNK_0187be24,0,&UNK_0187be2c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableFreeSkill",&UNK_0187be34,0,&UNK_0187be3c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableVirtualSkill",&UNK_0187be44,0,&UNK_0187be4c,0);
  uVar3 = func_0x0187baac(uVar3,&"null",&UNK_0187be54,0,&UNK_0187be5c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableSkillStrengthen",&UNK_0187be64,0,&UNK_0187be6c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableTalent",&UNK_0187be74,0,&UNK_0187be7c,0);
  uVar3 = func_0x0187baac(uVar3,&"enabledEvacuateShop",&UNK_0187be84,0,&UNK_0187be8c,0);
  uVar3 = func_0x0187b310(uVar3,&"hexGainReferType",&UNK_0187be94,0,&UNK_0187be9c,0);
  uVar3 = func_0x0187b310(uVar3,&"ngfReferId",&UNK_0187bea4,0,&UNK_0187beac,0);
  uVar3 = func_0x0187b5b0(uVar3,&"weightRate_met",&UNK_0187beb4,0,&UNK_0187bebc,0);
  uVar3 = func_0x0187b5b0(uVar3,&"weightRate_manualRefresh",&UNK_0187bec4,0,&UNK_0187becc,0);
  uVar3 = func_0x0187baac(uVar3,&"loadGainUseIdCfg",&UNK_0187bed4,0,&UNK_0187bedc,0);
  uVar3 = func_0x0187baac(uVar3,&"multiCampMode",&UNK_0187bee4,0,&UNK_0187beec,0);
  uVar3 = func_0x0187baac(uVar3,&"ataSync14ISubBattleSyncE",&UNK_0187bef4,0,&UNK_0187befc,0);
  uVar3 = func_0x0187baac(uVar3,&"attleSyncE",&UNK_0187bf04,0,&UNK_0187bf0c,0);
  uVar3 = func_0x0187baac(uVar3,&"subBattleMode",&UNK_0187bf14,0,&UNK_0187bf1c,0);
  uVar3 = func_0x0187baac(uVar3,&"ine5Logic9SubBattleE",&UNK_0187bf24,0,&UNK_0187bf2c,0);
  uVar3 = func_0x0187baac(uVar3,&"SubBattleE",&UNK_0187bf34,0,&UNK_0187bf3c,0);
  uVar3 = func_0x0187baac(uVar3,&"openRuneDetail",&UNK_0187bf44,0,&UNK_0187bf4c,0);
  uVar3 = func_0x0187baac(uVar3,&"customFinishMode",&UNK_0187bf54,0,&UNK_0187bf5c,0);
  uVar3 = func_0x0187baac(uVar3,&"ttleCherrySyncE",&UNK_0187bf64,0,&UNK_0187bf6c,0);
  uVar3 = func_0x0187baac(uVar3,&"rySyncE",&UNK_0187bf74,0,&UNK_0187bf7c,0);
  uVar3 = func_0x0187baac(uVar3,&"Logic15SubBattleCherryE",&UNK_0187bf84,0,&UNK_0187bf8c,0);
  uVar3 = func_0x0187baac(uVar3,&"ryE",&UNK_0187bf94,0,&UNK_0187bf9c,0);
  uVar3 = func_0x0187baac(uVar3,&"enableSpellBookRandomFreeSkill",&UNK_0187bfa4,0,&UNK_0187bfac,0);
  uVar3 = func_0x0187baac(uVar3,&"_CHERRY_ROUND_CHANGEE",&UNK_0187bfb4,0,&UNK_0187bfbc,0);
  uVar3 = func_0x0187baac(uVar3,&"D_CHANGEE",&UNK_0187bfc4,0,&UNK_0187bfcc,0);
  uVar3 = func_0x0187baac(uVar3,&"ngine5Logic31LgcMsg_EVENT_CHERRY_GAME_FINISHE",&UNK_0187bfd4,0,&UNK_0187bfdc,0);
  uVar3 = func_0x0187baac(uVar3,&"enableHexPath",&UNK_0187bfe4,0,&UNK_0187bfec,0);
  uVar3 = func_0x0187baac(uVar3,&"CHERRY_GAME_FINISHE",&UNK_0187bff4,0,&UNK_0187bffc,0);
  uVar3 = func_0x0187baac(uVar3,&"enableDeckChampionDeckWeight",&UNK_0187c004,0,&UNK_0187c00c,0);
  puVar4 = (undefined8 *)func_0x0187baac(uVar3,&"enableChampionGainExclude",&UNK_0187c014,0,&UNK_0187c01c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0187c024;
  func_0x0124ec90(*puVar4,&UNK_0187d0fc,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"forgeConfig");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"forgeConfig");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0187b310(puVar4,&"AIBraveChoiceProbability",&UNK_0187c02c,0,&UNK_0187c034,0);
  uVar3 = func_0x0187baac(uVar3,&"passiveMoveCanAffectFlowSpeed",&UNK_0187c03c,0,&UNK_0187c044,0);
  uVar3 = func_0x0187baac(uVar3,&"ic20GamePlayComponentMgrE",&UNK_0187c04c,0,&UNK_0187c054,0);
  uVar3 = func_0x0187baac(uVar3,&"MgrE",&UNK_0187c05c,0,&UNK_0187c064,0);
  uVar3 = func_0x0187baac(uVar3,&"isForceInitSkillSlotStrengthen",&UNK_0187c06c,0,&UNK_0187c074,0);
  puVar4 = (undefined8 *)func_0x0187baac(uVar3,&"enableNewKillAward",&UNK_0187c07c,0,&UNK_0187c084,0);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  func_0x0124c4d0(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

