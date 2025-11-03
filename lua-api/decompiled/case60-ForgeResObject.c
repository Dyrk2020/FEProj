// ===== case60-ForgeResObject @ 01695fe0 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case60-ForgeResObject


void case60_ForgeResObject(undefined8 param_1)

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
  func_0x017721a8(&uStack_40,&"ForgeResObject",&uStack_50,0x736d101);
  uVar3 = func_0x017718b8(&uStack_40,&"maximumLayer",&UNK_01771aa0,0,&UNK_01771aa8,0);
  uVar3 = func_0x017718b8(uVar3,&"singleAttrWeightCap",&UNK_01771ab0,0,&UNK_01771ab8,0);
  uVar3 = func_0x017718b8(uVar3,&"singleAttrWeightAdd",&UNK_01771ac0,0,&UNK_01771ac8,0);
  uVar3 = func_0x017718b8(uVar3,&"singleAttrWeightReduce",&UNK_01771ad0,0,&UNK_01771ad8,0);
  uVar3 = func_0x017718b8(uVar3,&"lightAttrWeightCap",&UNK_01771ae0,0,&UNK_01771ae8,0);
  uVar3 = func_0x017718b8(uVar3,&"lightAttrWeightAdd",&UNK_01771af0,0,&UNK_01771af8,0);
  uVar3 = func_0x017718b8(uVar3,&"lightAttrWeightReduce",&UNK_01771b00,0,&UNK_01771b08,0);
  uVar3 = func_0x017718b8(uVar3,&"darkAttrWeightCap",&UNK_01771b10,0,&UNK_01771b18,0);
  uVar3 = func_0x017718b8(uVar3,&"darkAttrWeightAdd",&UNK_01771b20,0,&UNK_01771b28,0);
  uVar3 = func_0x017718b8(uVar3,&"darkAttrWeightReduce",&UNK_01771b30,0,&UNK_01771b38,0);
  uVar3 = func_0x017718b8(uVar3,&"attackSpeedLimitUpBase",&UNK_01771b40,0,&UNK_01771b48,0);
  puVar4 = (undefined8 *)func_0x017718b8(uVar3,&"attackSpeedLimitUpAdd",&UNK_01771b50,0,&UNK_01771b58,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01771b60;
  func_0x0124ec90(*puVar4,&UNK_0177278c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"dodgeFilterAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"dodgeFilterAsset");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x017718b8(puVar4,&"specialRateBaseLayer",&UNK_01771b68,0,&UNK_01771b70,0);
  uVar3 = func_0x017718b8(uVar3,&"specialRateStartLayer",&UNK_01771b78,0,&UNK_01771b80,0);
  uVar3 = func_0x017718b8(uVar3,&"specialRateS",&UNK_01771b88,0,&UNK_01771b90,0);
  uVar3 = func_0x01771b98(uVar3,&"forgeCoreDownWeightByEquipRate",&UNK_01771d80,0,&UNK_01771d88,0);
  uVar3 = func_0x017718b8(uVar3,&"equipmentEarlyAddWeightMaxLayer",&UNK_01771d90,0,&UNK_01771d98,0);
  uVar3 = func_0x01771b98(uVar3,&"heroLevelMultiply",&UNK_01771da0,0,&UNK_01771da8,0);
  uVar3 = func_0x01771b98(uVar3,&"assistBaseValue",&UNK_01771db0,0,&UNK_01771db8,0);
  uVar3 = func_0x01771b98(uVar3,&"deadHeroEconomyBase",&UNK_01771dc0,0,&UNK_01771dc8,0);
  uVar3 = func_0x01771b98(uVar3,&"deadHeroEconomyMultiply",&UNK_01771dd0,0,&UNK_01771dd8,0);
  uVar3 = func_0x01771b98(uVar3,&"pressureMultiplyMin",&UNK_01771de0,0,&UNK_01771de8,0);
  uVar3 = func_0x01771b98(uVar3,&"pressureMultiplyMax",&UNK_01771df0,0,&UNK_01771df8,0);
  uVar3 = func_0x017718b8(uVar3,&"replaceExpMoneyReviseKey",&UNK_01771e00,0,&UNK_01771e08,0);
  uVar3 = func_0x017718b8(uVar3,&"boostSRankStartLayer",&UNK_01771e10,0,&UNK_01771e18,0);
  uVar3 = func_0x017718b8(uVar3,&"boostSRankWeightStep",&UNK_01771e20,0,&UNK_01771e28,0);
  uVar3 = func_0x017718b8(uVar3,&"boostSRankMaximumWeight",&UNK_01771e30,0,&UNK_01771e38,0);
  uVar3 = func_0x017718b8(uVar3,&"boostSRankEndCondition",&UNK_01771e40,0,&UNK_01771e48,0);
  uVar3 = func_0x017718b8(uVar3,&"boostSRankCooldown",&UNK_01771e50,0,&UNK_01771e58,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankEquipWeightMul",&UNK_01771e60,0,&UNK_01771e68,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankEquipWeightMulStep",&UNK_01771e70,0,&UNK_01771e78,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankCoreCardWeightMul",&UNK_01771e80,0,&UNK_01771e88,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankCoreCardWeightMulStep",&UNK_01771e90,0,&UNK_01771e98,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankForgeCoreWeightMul",&UNK_01771ea0,0,&UNK_01771ea8,0);
  uVar3 = func_0x01771b98(uVar3,&"boostSRankForgeCoreWeightMulStep",&UNK_01771eb0,0,&UNK_01771eb8,0);
  uVar3 = func_0x017718b8(uVar3,&"solutionType",&UNK_01771ec0,0,&UNK_01771ec8,0);
  uVar3 = func_0x017718b8(uVar3,&"rankRandomRule",&UNK_01771ed0,0,&UNK_01771ed8,0);
  uVar3 = func_0x017718b8(uVar3,&"forgeCoreMinimumLayer",&UNK_01771ee0,0,&UNK_01771ee8,0);
  uVar3 = func_0x017718b8(uVar3,&"forceCoreMinimumLayer",&UNK_01771ef0,0,&UNK_01771ef8,0);
  uVar3 = func_0x017718b8(uVar3,&"forgeCoreAddWeightPerLayer",&UNK_01771f00,0,&UNK_01771f08,0);
  uVar3 = func_0x017718b8(uVar3,&"forgeCoreForceLayer",&UNK_01771f10,0,&UNK_01771f18,0);
  uVar3 = func_0x017718b8(uVar3,&"earlyLayer",&UNK_01771f20,0,&UNK_01771f28,0);
  uVar3 = func_0x017718b8(uVar3,&"lockPlayStyleLayer",&UNK_01771f30,0,&UNK_01771f38,0);
  uVar3 = func_0x017718b8(uVar3,&"coreCardExtraWeightLayer",&UNK_01771f40,0,&UNK_01771f48,0);
  uVar3 = func_0x017718b8(uVar3,&"coreCardExtraWeight",&UNK_01771f50,0,&UNK_01771f58,0);
  uVar3 = func_0x01771f60(uVar3,&"showAttributeRange",&UNK_01772148,0,&UNK_01772150,0);
  uVar3 = func_0x017718b8(uVar3,&"advanceReduceS",&UNK_01772158,0,&UNK_01772160,0);
  uVar3 = func_0x017718b8(uVar3,&"advanceReduceA",&UNK_01772168,0,&UNK_01772170,0);
  uVar3 = func_0x017718b8(uVar3,&"advanceReduceB",&UNK_01772178,0,&UNK_01772180,0);
  uVar3 = func_0x017718b8(uVar3,&"advanceReduceMinimum",&UNK_01772188,0,&UNK_01772190,0);
  puVar4 = (undefined8 *)func_0x017718b8(uVar3,&"moveReducedToRank",&UNK_01772198,0,&UNK_017721a0,0);
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

