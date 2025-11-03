// ===== case367-DcMedalData @ 016d5114 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case367-DcMedalData


void case367_DcMedalData(undefined8 param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x0182b0f0(&uStack_30,&"DcMedalData",&uStack_40,0x736d101);
  uVar2 = func_0x0182a828(&uStack_30,&"killNoVisionCount",&UNK_0182aa10,0,&UNK_0182aa18,0);
  uVar2 = func_0x0182a828(uVar2,&"killLongRangeCount",&UNK_0182aa20,0,&UNK_0182aa28,0);
  uVar2 = func_0x0182a828(uVar2,&"assistKillTopLaneCount",&UNK_0182aa30,0,&UNK_0182aa38,0);
  uVar2 = func_0x0182a828(uVar2,&"assistKillMidLaneCount",&UNK_0182aa40,0,&UNK_0182aa48,0);
  uVar2 = func_0x0182a828(uVar2,&"assistKillBotLaneCount",&UNK_0182aa50,0,&UNK_0182aa58,0);
  uVar2 = func_0x0182a828(uVar2,&"jungleKillEnemyCampInSelfZone",&UNK_0182aa60,0,&UNK_0182aa68,0);
  uVar2 = func_0x0182a828(uVar2,&"killWithElderDragonBuffCount",&UNK_0182aa70,0,&UNK_0182aa78,0);
  uVar2 = func_0x0182a828(uVar2,&"towerDestroyWithBaronBuffCount",&UNK_0182aa80,0,&UNK_0182aa88,0);
  uVar2 = func_0x0182a828(uVar2,&"destroyNexusWithin10sCount",&UNK_0182aa90,0,&UNK_0182aa98,0);
  uVar2 = func_0x0182a828(uVar2,&"killSnowballTargetWithin5sCount",&UNK_0182aaa0,0,&UNK_0182aaa8,0);
  uVar2 = func_0x0182a828(uVar2,&"killCoreRoleCount",&UNK_0182aab0,0,&UNK_0182aab8,0);
  uVar2 = func_0x0182a828(uVar2,&"assistKillCoreRoleCount",&UNK_0182aac0,0,&UNK_0182aac8,0);
  uVar2 = func_0x0182a828(uVar2,&"killTopLaneWithin6MinCount",&UNK_0182aad0,0,&UNK_0182aad8,0);
  uVar2 = func_0x0182a828(uVar2,&"killMidLaneWithin6MinCount",&UNK_0182aae0,0,&UNK_0182aae8,0);
  uVar2 = func_0x0182a828(uVar2,&"killBotLaneWithin6MinCount",&UNK_0182aaf0,0,&UNK_0182aaf8,0);
  uVar2 = func_0x0182a828(uVar2,&"killWithin7MinCount",&UNK_0182ab00,0,&UNK_0182ab08,0);
  uVar2 = func_0x0182a828(uVar2,&"killAfterScryBloomWithin30sCount",&UNK_0182ab10,0,&UNK_0182ab18,0);
  uVar2 = func_0x0182a828(uVar2,&"counterKillUnderTowerCount",&UNK_0182ab20,0,&UNK_0182ab28,0);
  uVar2 = func_0x0182a828(uVar2,&"diveTowerKillCount",&UNK_0182ab30,0,&UNK_0182ab38,0);
  uVar2 = func_0x0182a828(uVar2,&"stealEpicMonsterCount",&UNK_0182ab40,0,&UNK_0182ab48,0);
  uVar2 = func_0x0182a828(uVar2,&"lethalCCCount",&UNK_0182ab50,0,&UNK_0182ab58,0);
  uVar2 = func_0x0182a828(uVar2,&"jungleKillInEnemyZoneCount",&UNK_0182ab60,0,&UNK_0182ab68,0);
  uVar2 = func_0x0182a828(uVar2,&"dravenKillWith150AdorationCount",&UNK_0182ab70,0,&UNK_0182ab78,0);
  uVar2 = func_0x0182a828(uVar2,&"enemyDravenMaxAdoration",&UNK_0182ab80,0,&UNK_0182ab88,0);
  uVar2 = func_0x0182a828(uVar2,&"rumbleOverheatKillCount",&UNK_0182ab90,0,&UNK_0182ab98,0);
  uVar2 = func_0x0182a828(uVar2,&"tristanaMaxSimulKnockback",&UNK_0182aba0,0,&UNK_0182aba8,0);
  uVar2 = func_0x0182a828(uVar2,&"poppyStopDashCount",&UNK_0182abb0,0,&UNK_0182abb8,0);
  uVar2 = func_0x0182a828(uVar2,&"teemoShroomKillCount",&UNK_0182abc0,0,&UNK_0182abc8,0);
  uVar2 = func_0x0182a828(uVar2,&"veigarEStunCount",&UNK_0182abd0,0,&UNK_0182abd8,0);
  uVar2 = func_0x0182a828(uVar2,&"corkiMissileKillCount",&UNK_0182abe0,0,&UNK_0182abe8,0);
  uVar2 = func_0x0182a828(uVar2,&"luluPolymorphCount",&UNK_0182abf0,0,&UNK_0182abf8,0);
  uVar2 = func_0x0182a828(uVar2,&"ziggsUltKillCount",&UNK_0182ac00,0,&UNK_0182ac08,0);
  uVar2 = func_0x0182a828(uVar2,&"fizzUltKillCount",&UNK_0182ac10,0,&UNK_0182ac18,0);
  uVar2 = func_0x0182a828(uVar2,&"amumuRTargetCount",&UNK_0182ac20,0,&UNK_0182ac28,0);
  uVar2 = func_0x0182a828(uVar2,&"poppyRKnockbackCount",&UNK_0182ac30,0,&UNK_0182ac38,0);
  uVar2 = func_0x0182a828(uVar2,&"vexMaxSimulFearTargets",&UNK_0182ac40,0,&UNK_0182ac48,0);
  uVar2 = func_0x0182a828(uVar2,&"heimerdingerStunCount",&UNK_0182ac50,0,&UNK_0182ac58,0);
  uVar2 = func_0x0182a828(uVar2,&"assistKillTeemoCount",&UNK_0182ac60,0,&UNK_0182ac68,0);
  uVar2 = func_0x0182a828(uVar2,&"mundoPassiveRootCleanseCount",&UNK_0182ac70,0,&UNK_0182ac78,0);
  uVar2 = func_0x0182a828(uVar2,&"consumeEnemyHoneyFruitCount",&UNK_0182ac80,0,&UNK_0182ac88,0);
  uVar2 = func_0x0182ac90(uVar2,&"ownLaneFirstTowerMaxSurviveTime",&UNK_0182ae78,0,&UNK_0182ae80,0);
  uVar2 = func_0x0182ae88(uVar2,&"nexusOnlyRemaining",&UNK_0182b070,0,&UNK_0182b078,0);
  uVar2 = func_0x0182a828(uVar2,&"deathByTowerCount",&UNK_0182b080,0,&UNK_0182b088,0);
  uVar2 = func_0x0182ae88(uVar2,&"consumeAllLanePlates",&UNK_0182b090,0,&UNK_0182b098,0);
  uVar2 = func_0x0182a828(uVar2,&"ownLanePlatesLostCount",&UNK_0182b0a0,0,&UNK_0182b0a8,0);
  uVar2 = func_0x0182a828(uVar2,&"survive3MinAfterHeraldHitTower",&UNK_0182b0b0,0,&UNK_0182b0b8,0);
  uVar2 = func_0x0182a828(uVar2,&"bounty1000NoDeathStreak",&UNK_0182b0c0,0,&UNK_0182b0c8,0);
  uVar2 = func_0x0182a828(uVar2,&"heraldHitInhibTowerCount",&UNK_0182b0d0,0,&UNK_0182b0d8,0);
  puVar3 = (undefined8 *)func_0x0182ae88(uVar2,&"winWithIntactTowers",&UNK_0182b0e0,0,&UNK_0182b0e8,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  func_0x0124c4d0(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

