// ===== case805-SkillResObject @ 017342d0 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case805-SkillResObject


void case805_SkillResObject(undefined8 param_1)

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
  func_0x019bbae8(&uStack_40,&"SkillResObject",&uStack_50,0x736d101);
  uVar3 = func_0x019bb0b0(&uStack_40,&"isDotSkill",&UNK_019bb298,0,&UNK_019bb2a0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"resetPassiveEffectWhenRide",&UNK_019bb2a8,0,&UNK_019bb2b0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isIgnoreGoldBody",&UNK_019bb2b8,0,&UNK_019bb2c0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isCanUseInGoldBody",&UNK_019bb2c8,0,&UNK_019bb2d0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isCanUseInCannon",&UNK_019bb2d8,0,&UNK_019bb2e0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isCanBreakHide",&UNK_019bb2e8,0,&UNK_019bb2f0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"canExistWhenCharge",&UNK_019bb2f8,0,&UNK_019bb300,0);
  uVar3 = func_0x019bb0b0(uVar3,&"forceCallForHelp",&UNK_019bb308,0,&UNK_019bb310,0);
  uVar3 = func_0x019bb0b0(uVar3,&"ignoreTargetPosWhenUseSkill",&UNK_019bb318,0,&UNK_019bb320,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isSmoothRotate",&UNK_019bb328,0,&UNK_019bb330,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isCanUseWhileDead",&UNK_019bb338,0,&UNK_019bb340,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isForbidWhileZombie",&UNK_019bb348,0,&UNK_019bb350,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isIgnoreAniStateChange",&UNK_019bb358,0,&UNK_019bb360,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isBulletSkill",&UNK_019bb368,0,&UNK_019bb370,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isRushSkill",&UNK_019bb378,0,&UNK_019bb380,0);
  uVar3 = func_0x019bb0b0(uVar3,&"useRushCdHaste",&UNK_019bb388,0,&UNK_019bb390,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isAutoChangeReplaceSkill",&UNK_019bb398,0,&UNK_019bb3a0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isAoeSkill",&UNK_019bb3a8,0,&UNK_019bb3b0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isAttackSkill",&UNK_019bb3b8,0,&UNK_019bb3c0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isNormalAttackEffect",&UNK_019bb3c8,0,&UNK_019bb3d0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"ignoreCDReduce",&UNK_019bb3d8,0,&UNK_019bb3e0,0);
  uVar3 = func_0x019bb3e8(uVar3,&"cdGroup",&UNK_019bb5d0,0,&UNK_019bb5d8,0);
  uVar3 = func_0x019bb5e0(uVar3,&"cdLockingProtectTime",&UNK_019bb7c8,0,&UNK_019bb7d0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"assistUseSkill",&UNK_019bb7d8,0,&UNK_019bb7e0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"empowerAttack",&UNK_019bb7e8,0,&UNK_019bb7f0,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isAutoUseEmpowerAttack",&UNK_019bb7f8,0,&UNK_019bb800,0);
  uVar3 = func_0x019bb3e8(uVar3,&"assistKillFlag",&UNK_019bb808,0,&UNK_019bb810,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isGetCasterRealm",&UNK_019bb818,0,&UNK_019bb820,0);
  uVar3 = func_0x019bb0b0(uVar3,&"isForbidInRealm",&UNK_019bb828,0,&UNK_019bb830,0);
  uVar3 = func_0x019bb0b0(uVar3,&"IgnoreSkillCDInHeadBarLine",&UNK_019bb838,0,&UNK_019bb840,0);
  uVar3 = func_0x019bb0b0(uVar3,&"useSkillLevelInitVarWhenNoLearn",&UNK_019bb848,0,&UNK_019bb850,0);
  uVar3 = func_0x019bb3e8(uVar3,&"functionType",&UNK_019bb858,0,&UNK_019bb860,0);
  uVar3 = func_0x019bb3e8(uVar3,&"skillType",&UNK_019bb868,0,&UNK_019bb870,0);
  uVar3 = func_0x019bb3e8(uVar3,&"aiMark",&UNK_019bb878,0,&UNK_019bb880,0);
  uVar3 = func_0x019bb888(uVar3,&"maxLevel",&UNK_019bba70,0,&UNK_019bba78,0);
  uVar3 = func_0x019bb3e8(uVar3,&"normalAttackType",&UNK_019bba80,0,&UNK_019bba88,0);
  uVar3 = func_0x019bb5e0(uVar3,&"delayDeleteTime",&UNK_019bba90,0,&UNK_019bba98,0);
  puVar4 = (undefined8 *)func_0x019bb3e8(uVar3,&"usbSkillFlag",&UNK_019bbaa0,0,&UNK_019bbaa8,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019bbab0;
  func_0x0124ec90(*puVar4,&UNK_019bc784,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"compAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"compAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019bb3e8(puVar4,&"skillActorEventDispatchMask",&UNK_019bbab8,0,&UNK_019bbac0,0);
  uVar3 = func_0x019bb3e8(uVar3,&"sylasStealType",&UNK_019bbac8,0,&UNK_019bbad0,0);
  puVar4 = (undefined8 *)func_0x019bb0b0(uVar3,&"canConsistBackHome",&UNK_019bbad8,0,&UNK_019bbae0,0);
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

