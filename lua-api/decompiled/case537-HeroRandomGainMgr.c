// ===== case537-HeroRandomGainMgr @ 016fa13c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case537-HeroRandomGainMgr


void case537_HeroRandomGainMgr(undefined8 param_1)

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
  func_0x018b69cc(&uStack_40,&"HeroRandomGainMgr",&uStack_50,0x736d101);
  uVar3 = func_0x018b47d0(&uStack_40,&"RANDOM_GAIN_COUNT",&UNK_018b49b8,0,&UNK_018b49c0,0);
  puVar4 = (undefined8 *)func_0x018b47d0(uVar3,&"DEFAULT_WEIGHT",&UNK_018b4a50,0,&UNK_018b4a58,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_018b4a60;
  func_0x0124ec90(*puVar4,&UNK_018b6fb0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"actor");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"actor");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x018b4a68(puVar4,&"selectCardPoolSwitch",&UNK_018b4c50,0,&UNK_018b4c58,0);
  uVar3 = func_0x018b4cf0(uVar3,&"gainQualityDic",&UNK_018b4ed8,0,0,0);
  uVar3 = func_0x018b4cf0(uVar3,&"preRandomDic",&UNK_018b4ee0,0,0,0);
  uVar3 = func_0x018b47d0(uVar3,&"curQualityType",&UNK_018b4ee8,0,&UNK_018b4ef0,0);
  uVar3 = func_0x018b47d0(uVar3,&"gainListGenericCount",&UNK_018b4f88,0,&UNK_018b4f90,0);
  uVar3 = func_0x018b47d0(uVar3,&"gainListFavoriteCount",&UNK_018b5028,0,&UNK_018b5030,0);
  uVar3 = func_0x018b47d0(uVar3,&"gainListNormalCount",&UNK_018b50c8,0,&UNK_018b50d0,0);
  uVar3 = func_0x018b47d0(uVar3,&"gainListRecommendCount",&UNK_018b5168,0,&UNK_018b5170,0);
  uVar3 = func_0x018b5208(uVar3,&"iExcludeTag",&UNK_018b53f0,0,&UNK_018b53f8,0);
  uVar3 = func_0x018b5208(uVar3,&"iIncludeTag",&UNK_018b5400,0,&UNK_018b5408,0);
  uVar3 = func_0x018b47d0(uVar3,&"refreshCount",&UNK_018b54a0,0,&UNK_018b54a8,0);
  uVar3 = func_0x018b47d0(uVar3,&"bonusRefreshCount",&UNK_018b5540,0,&UNK_018b5548,0);
  uVar3 = func_0x018b47d0(uVar3,&"maxRefreshCount",&UNK_018b55e0,0,&UNK_018b55e8,0);
  uVar3 = func_0x018b4a68(uVar3,&"isGainReady",&UNK_018b5680,0,&UNK_018b5688,0);
  uVar3 = func_0x018b47d0(uVar3,&"curRound",&UNK_018b5720,0,&UNK_018b5728,0);
  uVar3 = func_0x018b47d0(uVar3,&"curStartRandomRound",&UNK_018b57c0,0,&UNK_018b57c8,0);
  uVar3 = func_0x018b47d0(uVar3,&"lastSelectGainRound",&UNK_018b57d0,0,&UNK_018b57d8,0);
  uVar3 = func_0x018b47d0(uVar3,&"curVersionTag",&UNK_018b5870,0,&UNK_018b5878,0);
  uVar3 = func_0x018b47d0(uVar3,&"gainMode",&UNK_018b5894,0,&UNK_018b589c,0);
  uVar3 = func_0x018b58b8(uVar3,&"rate_met",&UNK_018b5aa0,0,&UNK_018b5aa8,0);
  uVar3 = func_0x018b58b8(uVar3,&"rate_manualRefresh",&UNK_018b5ab0,0,&UNK_018b5ab8,0);
  uVar3 = func_0x018b4a68(uVar3,&"isInDiscoveryStatus",&UNK_018b5ac0,0,&UNK_018b5ac8,0);
  uVar3 = func_0x018b58b8(uVar3,&"showSwordSelectTime",&UNK_018b5b60,0,&UNK_018b5b68,0);
  uVar3 = func_0x018b47d0(uVar3,&"infoTag1",&UNK_018b5c00,0,&UNK_018b5c08,0);
  uVar3 = func_0x018b47d0(uVar3,&"infoTag2",&UNK_018b5c24,0,&UNK_018b5c2c,0);
  uVar3 = func_0x018b47d0(uVar3,&"attackChargeSkillId",&UNK_018b5c48,0,&UNK_018b5c50,0);
  uVar3 = func_0x018b47d0(uVar3,&"attackChargeOperId",&UNK_018b5c6c,0,&UNK_018b5c74,0);
  uVar3 = func_0x018b4a68(uVar3,&"forbidManualAdd",&UNK_018b5c90,0,&UNK_018b5c98,0);
  uVar3 = func_0x018b47d0(uVar3,&"maxEnhanceLevel",&UNK_018b5cb4,0,&UNK_018b5cbc,0);
  uVar3 = func_0x018b47d0(uVar3,&"curEnhanceCard",&UNK_018b5cd8,0,&UNK_018b5ce0,0);
  uVar3 = func_0x018b47d0(uVar3,&"curEnhanceLevel",&UNK_018b5cfc,0,&UNK_018b5d04,0);
  uVar3 = func_0x018b47d0(uVar3,&"curRoundEnhanceNum",&UNK_018b5d20,0,&UNK_018b5d28,0);
  uVar3 = func_0x018b47d0(uVar3,&"curUpgradeRateRate",&UNK_018b5d44,0,&UNK_018b5d4c,0);
  uVar3 = func_0x018b4a68(uVar3,&"isGmSetUpgradeRate",&UNK_018b5de4,0,&UNK_018b5dec,0);
  uVar3 = func_0x018b4a68(uVar3,&"showUpgradeCardBtn",&UNK_018b5df4,0,&UNK_018b5dfc,0);
  uVar3 = func_0x018b47d0(uVar3,&"maxUpgradeCardNum",&UNK_018b5e94,0,&UNK_018b5e9c,0);
  uVar3 = func_0x018b47d0(uVar3,&"lastReRandomId",&UNK_018b5f34,0,&UNK_018b5f3c,0);
  uVar3 = func_0x018b47d0(uVar3,&"curCardId",&UNK_018b5fd4,0,&UNK_018b5fdc,0);
  uVar3 = func_0x018b4a68(uVar3,&"showGainPoolResType",&UNK_018b5fe4,0,&UNK_018b5fec,0);
  uVar3 = func_0x018b4a68(uVar3,&"debugLog",&UNK_018b6084,0,&UNK_018b608c,0);
  uVar3 = func_0x018b4a68(uVar3,&"isOpenGainLockMode",&UNK_018b6094,0,&UNK_018b609c,0);
  uVar3 = func_0x018b4a68(uVar3,&"enableDOM",&UNK_018b6134,0,&UNK_018b613c,0);
  uVar3 = func_0x018b4a68(uVar3,&"enableDOMFinal",&UNK_018b61d4,0,&UNK_018b61dc,0);
  uVar3 = func_0x018b47d0(uVar3,&"ultraGmState",&UNK_018b6274,0,&UNK_018b627c,0);
  uVar3 = func_0x018b47d0(uVar3,&"frontCardID",&UNK_018b6314,0,&UNK_018b631c,0);
  uVar3 = func_0x018b4a68(uVar3,&"isClearingAllGain",&UNK_018b63b4,0,&UNK_018b63bc,0);
  uVar3 = func_0x018b47d0(uVar3,&"extraRefreshCount",&UNK_018b63c4,0,&UNK_018b63cc,0);
  uVar3 = func_0x018b4a68(uVar3,&"needShowFlySword",&UNK_018b63e8,0,&UNK_018b63f0,0);
  uVar3 = func_0x018b4a68(uVar3,&"hasSelectFlySword",&UNK_018b6488,0,&UNK_018b6490,0);
  uVar3 = func_0x018b47d0(uVar3,&"LastSelectFlySwordIndex",&UNK_018b6528,0,&UNK_018b6530,0);
  uVar3 = func_0x018b47d0(uVar3,&"gmSymbiosisOrMutationGainID",&UNK_018b65c8,0,&UNK_018b65d0,0);
  uVar3 = func_0x018b4a68(uVar3,&"receivePixiuReward",&UNK_018b65ec,0,&UNK_018b65f4,0);
  uVar3 = func_0x018b47d0(uVar3,&"pixiuRefreshedCount",&UNK_018b668c,0,&UNK_018b6694,0);
  uVar3 = func_0x018b4a68(uVar3,&"isCollectPixiuReward",&UNK_018b672c,0,&UNK_018b6734,0);
  uVar3 = func_0x018b47d0(uVar3,&"l",&UNK_018b67cc,0,&UNK_018b67d4,0);
  uVar3 = func_0x018b47d0(uVar3,&"ine8DataSync26ICustomVarInfoPolylineSyncE",&UNK_018b686c,0,&UNK_018b6874,0);
  uVar3 = func_0x018b4a68(uVar3,&"CustomVarInfoPolylineSyncE",&UNK_018b687c,0,&UNK_018b6884,0);
  uVar3 = func_0x018b4a68(uVar3,&"ylineSyncE",&UNK_018b688c,0,&UNK_018b6894,0);
  puVar4 = (undefined8 *)func_0x018b47d0(uVar3,&"cardFaceType",&UNK_018b692c,0,&UNK_018b6934,0);
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

