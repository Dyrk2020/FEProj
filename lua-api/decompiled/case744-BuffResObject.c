// ===== case744-BuffResObject @ 0172787c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case744-BuffResObject


void case744_BuffResObject(undefined8 param_1)

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
  func_0x01983270(&uStack_40,&"BuffResObject",&uStack_50,0x736d101);
  uVar3 = func_0x01982730(&uStack_40,&"maxLevel",&UNK_01982918,0,&UNK_01982920,0);
  uVar3 = func_0x01982928(uVar3,&"removeUponFakeDeath",&UNK_01982b10,0,&UNK_01982b18,0);
  uVar3 = func_0x01982928(uVar3,&"notRemoveUponDeath",&UNK_01982b20,0,&UNK_01982b28,0);
  uVar3 = func_0x01982928(uVar3,&"notRemoveAniWhenFakeDeath",&UNK_01982b30,0,&UNK_01982b38,0);
  uVar3 = func_0x01982928(uVar3,&"keepUponDeadToZombie",&UNK_01982b40,0,&UNK_01982b48,0);
  uVar3 = func_0x01982928(uVar3,&"isTerrainWallDisplay",&UNK_01982b50,0,&UNK_01982b58,0);
  uVar3 = func_0x01982928(uVar3,&"hideHudProgressBar",&UNK_01982b60,0,&UNK_01982b68,0);
  uVar3 = func_0x01982b70(uVar3,&"markStyle",&UNK_01982d58,0,&UNK_01982d60,0);
  uVar3 = func_0x01982b70(uVar3,&"displayPriority",&UNK_01982d68,0,&UNK_01982d70,0);
  uVar3 = func_0x01982b70(uVar3,&"uiHeadBarType",&UNK_01982d78,0,&UNK_01982d80,0);
  uVar3 = func_0x01982b70(uVar3,&"filter",&UNK_01982d88,0,&UNK_01982d90,0);
  uVar3 = func_0x01982b70(uVar3,&"ownerSkill",&UNK_01982d98,0,&UNK_01982da0,0);
  uVar3 = func_0x01982b70(uVar3,&"groupPriority",&UNK_01982da8,0,&UNK_01982db0,0);
  uVar3 = func_0x01982b70(uVar3,&"groupID",&UNK_01982db8,0,&UNK_01982dc0,0);
  uVar3 = func_0x01982dc8(uVar3,&"autoStackTimeF",&UNK_01982fb0,0,&UNK_01982fb8,0);
  uVar3 = func_0x01982b70(uVar3,&"autoStackStep",&UNK_01982fc0,0,&UNK_01982fc8,0);
  uVar3 = func_0x01982b70(uVar3,&"stackCount",&UNK_01982fd0,0,&UNK_01982fd8,0);
  uVar3 = func_0x01982dc8(uVar3,&"stackReduceTimeF",&UNK_01982fe0,0,&UNK_01982fe8,0);
  uVar3 = func_0x01982b70(uVar3,&"stackReduceStep",&UNK_01982ff0,0,&UNK_01982ff8,0);
  uVar3 = func_0x01982928(uVar3,&"isSpecialParseDesc",&UNK_01983000,0,&UNK_01983008,0);
  puVar4 = (undefined8 *)func_0x01982b70(uVar3,&"hudTextPriority",&UNK_01983010,0,&UNK_01983018,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01983020;
  func_0x0124ec90(*puVar4,&UNK_01983f0c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skillVarAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skillVarAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01982928(puVar4,&"ignoreTenacity",&UNK_01983028,0,&UNK_01983030,0);
  uVar3 = func_0x01982928(uVar3,&"ignoreKnockTenacity",&UNK_01983038,0,&UNK_01983040,0);
  uVar3 = func_0x01982928(uVar3,&"PEN_OR_CLOSE_BATTLE_SHOP_TO_VISIE",&UNK_01983048,0,&UNK_01983050,0);
  uVar3 = func_0x01982928(uVar3,&"removeWhenGiverDie",&UNK_01983058,0,&UNK_01983060,0);
  uVar3 = func_0x01982b70(uVar3,&"displayType",&UNK_01983068,0,&UNK_01983070,0);
  uVar3 = func_0x01982b70(uVar3,&"buffType",&UNK_01983078,0,&UNK_01983080,0);
  uVar3 = func_0x01982b70(uVar3,&"roundChangeRemoveType",&UNK_01983088,0,&UNK_01983090,0);
  uVar3 = func_0x01982b70(uVar3,&"buffOptTypeWhenRide",&UNK_01983098,0,&UNK_019830a0,0);
  uVar3 = func_0x01982928(uVar3,&"needCloneBuff",&UNK_019830a8,0,&UNK_019830b0,0);
  uVar3 = func_0x01982b70(uVar3,&"stackType",&UNK_019830b8,0,&UNK_019830c0,0);
  uVar3 = func_0x01982928(uVar3,&"endOfTheDelay",&UNK_019830c8,0,&UNK_019830d0,0);
  uVar3 = func_0x01982b70(uVar3,&"buffInjuryInterval",&UNK_019830d8,0,&UNK_019830e0,0);
  uVar3 = func_0x01982b70(uVar3,&"mergeType",&UNK_019830e8,0,&UNK_019830f0,0);
  uVar3 = func_0x01982928(uVar3,&"isUniqueSkillGuid",&UNK_019830f8,0,&UNK_01983100,0);
  uVar3 = func_0x01982928(uVar3,&"possessionTransfer",&UNK_01983108,0,&UNK_01983110,0);
  uVar3 = func_0x01982b70(uVar3,&"possessionFinishRemoveType",&UNK_01983118,0,&UNK_01983120,0);
  uVar3 = func_0x01982b70(uVar3,&"flyTextVisibility",&UNK_01983128,0,&UNK_01983130,0);
  uVar3 = func_0x01982b70(uVar3,&"enterFightType",&UNK_01983138,0,&UNK_01983140,0);
  uVar3 = func_0x01982928(uVar3,&"isRedBorder",&UNK_01983148,0,&UNK_01983150,0);
  uVar3 = func_0x01982928(uVar3,&"isUseFlyTextCurve",&UNK_01983158,0,&UNK_01983160,0);
  uVar3 = func_0x01982928(uVar3,&"isPassive",&UNK_01983168,0,&UNK_01983170,0);
  uVar3 = func_0x01982928(uVar3,&"isCdBuff",&UNK_01983178,0,&UNK_01983180,0);
  uVar3 = func_0x01982928(uVar3,&"isHexCdBuff",&UNK_01983188,0,&UNK_01983190,0);
  uVar3 = func_0x01982928(uVar3,&"isAINeddBuff",&UNK_01983198,0,&UNK_019831a0,0);
  uVar3 = func_0x01982928(uVar3,&"passiveMoveCanAffectFlowSpeed",&UNK_019831a8,0,&UNK_019831b0,0);
  uVar3 = func_0x01982b70(uVar3,&"assistKillFlag",&UNK_019831b8,0,&UNK_019831c0,0);
  uVar3 = func_0x01982dc8(uVar3,&"executePercent",&UNK_019831c8,0,&UNK_019831d0,0);
  puVar4 = (undefined8 *)func_0x01982dc8(uVar3,&"executeDisplayPercent",&UNK_019831d8,0,&UNK_019831e0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019831e8;
  func_0x0124ec90(*puVar4,&UNK_01984030,1);
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
  uVar3 = func_0x01982b70(puVar4,&"inEquip",&UNK_019831f0,0,&UNK_019831f8,0);
  uVar3 = func_0x01982b70(uVar3,&"ICK_PRE_ORDER_EQUIP_TO_VISIE",&UNK_01983200,0,&UNK_01983208,0);
  uVar3 = func_0x01982928(uVar3,&"geAddEquipmentSavingSyncE",&UNK_01983210,0,&UNK_01983218,0);
  uVar3 = func_0x01982928(uVar3,&"IE",&UNK_01983220,0,&UNK_01983228,0);
  uVar3 = func_0x01982928(uVar3,&"pe",&UNK_01983230,0,&UNK_01983238,0);
  uVar3 = func_0x01982928(uVar3,&"vingSyncE",&UNK_01983240,0,&UNK_01983248,0);
  uVar3 = func_0x01982b70(uVar3,&"veEquip",&UNK_01983250,0,&UNK_01983258,0);
  puVar4 = (undefined8 *)func_0x01982928(uVar3,&"ignoreCollectCtrlTime",&UNK_01983260,0,&UNK_01983268,0);
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

