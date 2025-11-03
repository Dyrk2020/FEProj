// ===== case690-BattlePlayer @ 0171c65c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case690-BattlePlayer


void case690_BattlePlayer(undefined8 param_1)

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
  func_0x019523a4(&uStack_40,&"BattlePlayer",&uStack_50,0x736d101);
  uVar3 = func_0x01951140(&uStack_40,&"idx",&UNK_01951328,0,&UNK_01951330,0);
  uVar3 = func_0x01951338(uVar3,&"groupId",&UNK_01951520,0,&UNK_01951528,0);
  uVar3 = func_0x01951338(uVar3,&"aiTag",&UNK_01951530,0,&UNK_01951538,0);
  uVar3 = func_0x01951338(uVar3,&"isOffline",&UNK_01951554,0,&UNK_0195155c,0);
  uVar3 = func_0x01951338(uVar3,&"isFastForwarding",&UNK_01951578,0,&UNK_01951580,0);
  uVar3 = func_0x01951338(uVar3,&"notAutoIncMoney",&UNK_0195159c,0,&UNK_019515a4,0);
  uVar3 = func_0x01951338(uVar3,&"notAutoIncExp",&UNK_019515c0,0,&UNK_019515c8,0);
  uVar3 = func_0x01951338(uVar3,&"wait2liveNeedGc",&UNK_019515e4,0,&UNK_019515ec,0);
  uVar3 = func_0x01951338(uVar3,&"isHeroBorned",&UNK_019515f4,0,&UNK_019515fc,0);
  uVar3 = func_0x01951338(uVar3,&"isWait2Live",&UNK_01951604,0,&UNK_0195160c,0);
  uVar3 = func_0x01951338(uVar3,&"isWaitDestroy",&UNK_01951628,0,&UNK_01951630,0);
  uVar3 = func_0x01951338(uVar3,&"isCheckReviveTime",&UNK_01951638,0,&UNK_01951640,0);
  uVar3 = func_0x01951140(uVar3,&"heroID",&UNK_01951648,0,&UNK_01951650,0);
  uVar3 = func_0x01951140(uVar3,&"skinID",&UNK_0195166c,0,&UNK_01951674,0);
  uVar3 = func_0x01951140(uVar3,&"timeToReborn",&UNK_01951690,0,&UNK_01951698,0);
  uVar3 = func_0x019516b4(uVar3,&"roleId",&UNK_0195189c,0,&UNK_019518a4,0);
  uVar3 = func_0x0195193c(uVar3,&"shortRoleId",&UNK_01951b24,0,&UNK_01951b2c,0);
  uVar3 = func_0x01951b34(uVar3,&"totalCollectMoney",&UNK_01951d1c,0,&UNK_01951d24,0);
  uVar3 = func_0x01951b34(uVar3,&"money",&UNK_01951d84,0,&UNK_01951d8c,0);
  uVar3 = func_0x01951b34(uVar3,&"credit",&UNK_01951dec,0,&UNK_01951df4,0);
  uVar3 = func_0x01951b34(uVar3,&"targetReviveTime",&UNK_01951e54,0,&UNK_01951e5c,0);
  uVar3 = func_0x01951b34(uVar3,&"lastDiedTime",&UNK_01951e64,0,&UNK_01951e6c,0);
  uVar3 = func_0x01951b34(uVar3,&"reviveTime",&UNK_01951ecc,0,&UNK_01951ed4,0);
  puVar4 = (undefined8 *)func_0x01951f34(uVar3,&"hero",&UNK_0195211c,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01952124;
  func_0x0124ec90(*puVar4,&UNK_019547e8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"team");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"team");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01951338(puVar4,&"isReplaceHeroHeadIcon",&UNK_0195212c,0,&UNK_01952138,0);
  puVar4 = (undefined8 *)func_0x01951b34(uVar3,&"recvInputTime",&UNK_01952158,0,&UNK_01952160,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01952200;
  func_0x0124ec90(*puVar4,&UNK_01954a8c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"extraHeroInfos");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"extraHeroInfos");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01951f34(puVar4,&"originHero",&UNK_0195220c,0,0,0);
  uVar3 = func_0x01951338(uVar3,&"isUsingPreRoundHero",&UNK_01952214,0,&UNK_01952220,0);
  uVar3 = func_0x01951140(uVar3,&"heroCounter",&UNK_01952240,0,&UNK_01952248,0);
  uVar3 = func_0x01951338(uVar3,&"enableAutoBuyEquip",&UNK_01952250,0,&UNK_0195225c,0);
  uVar3 = func_0x01951338(uVar3,&"isAIPlayer",&UNK_0195227c,0,&UNK_01952288,0);
  uVar3 = func_0x01951b34(uVar3,&"lastRequestRecommendEquipTime",&UNK_01952294,0,&UNK_0195229c,0);
  uVar3 = func_0x01951140(uVar3,&"rebornSpecialType",&UNK_01952300,0,&UNK_01952308,0);
  uVar3 = func_0x01951338(uVar3,&"ignoreStatistics",&UNK_01952310,0,&UNK_0195231c,0);
  uVar3 = func_0x01951338(uVar3,&"ignoreSkillSearch",&UNK_0195233c,0,&UNK_01952348,0);
  uVar3 = func_0x01951338(uVar3,&"ignoreUISearch",&UNK_01952368,0,&UNK_01952374,0);
  puVar4 = (undefined8 *)func_0x01951b34(uVar3,&"farmTotalCollectMoney",&UNK_01952394,0,&UNK_0195239c,0);
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

