// ===== case466-ForgeConfigResObject @ 016eceb8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case466-ForgeConfigResObject


void case466_ForgeConfigResObject(undefined8 param_1)

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
  func_0x01876780(&uStack_30,&"ForgeConfigResObject",&uStack_40,0x736d101);
  uVar2 = func_0x01876468(&uStack_30,&"startupStock",&UNK_01876650,0,&UNK_01876658,0);
  uVar2 = func_0x01876468(uVar2,&"stockInTime",&UNK_01876660,0,&UNK_01876668,0);
  uVar2 = func_0x01876468(uVar2,&"stockInNumPerRound",&UNK_01876670,0,&UNK_01876678,0);
  uVar2 = func_0x01876468(uVar2,&"maximunStock",&UNK_01876680,0,&UNK_01876688,0);
  uVar2 = func_0x01876468(uVar2,&"cost",&UNK_01876690,0,&UNK_01876698,0);
  uVar2 = func_0x01876468(uVar2,&"nonBraveChoiceCostChange",&UNK_018766a0,0,&UNK_018766a8,0);
  uVar2 = func_0x01876468(uVar2,&"coreBoostRateMin",&UNK_018766b0,0,&UNK_018766b8,0);
  uVar2 = func_0x01876468(uVar2,&"coreBoostRateMax",&UNK_018766c0,0,&UNK_018766c8,0);
  uVar2 = func_0x01876468(uVar2,&"recommendMinimunWeightAttribute",&UNK_018766d0,0,&UNK_018766d8,0);
  uVar2 = func_0x01876468(uVar2,&"recommendMinimunWeightEquipment",&UNK_018766e0,0,&UNK_018766e8,0);
  uVar2 = func_0x01876468(uVar2,&"originRegenerateRate1",&UNK_018766f0,0,&UNK_018766f8,0);
  uVar2 = func_0x01876468(uVar2,&"originRegenerateRate2",&UNK_01876700,0,&UNK_01876708,0);
  uVar2 = func_0x01876468(uVar2,&"maxOriginRegenerateRateNum",&UNK_01876710,0,&UNK_01876718,0);
  uVar2 = func_0x01876468(uVar2,&"braveChoiceExtraMoney",&UNK_01876720,0,&UNK_01876728,0);
  uVar2 = func_0x01876468(uVar2,&"braveChoiceExtraOrigin",&UNK_01876730,0,&UNK_01876738,0);
  uVar2 = func_0x01876468(uVar2,&"braveChoiceCouponCount",&UNK_01876740,0,&UNK_01876748,0);
  uVar2 = func_0x01876468(uVar2,&"braveChoiceCouponPrice",&UNK_01876750,0,&UNK_01876758,0);
  uVar2 = func_0x01876468(uVar2,&"randomPickHeroGiftOrigin",&UNK_01876760,0,&UNK_01876768,0);
  puVar3 = (undefined8 *)func_0x01876468(uVar2,&"useSolution",&UNK_01876770,0,&UNK_01876778,0);
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

