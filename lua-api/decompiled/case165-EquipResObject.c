// ===== case165-EquipResObject @ 016a8690 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case165-EquipResObject


void case165_EquipResObject(undefined8 param_1)

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
  func_0x017a98fc(&uStack_40,&"EquipResObject",&uStack_50,0x736d101);
  uVar3 = func_0x017a900c(&uStack_40,&"isInShelf",&UNK_017a91f4,0,&UNK_017a91fc,0);
  uVar3 = func_0x017a900c(uVar3,&"disable",&UNK_017a9204,0,&UNK_017a920c,0);
  uVar3 = func_0x017a900c(uVar3,&"isUpCompoundEquip",&UNK_017a9214,0,&UNK_017a921c,0);
  uVar3 = func_0x017a9224(uVar3,&"exchangePubishCD",&UNK_017a940c,0,&UNK_017a9414,0);
  uVar3 = func_0x017a9224(uVar3,&"armorPierce",&UNK_017a941c,0,&UNK_017a9424,0);
  uVar3 = func_0x017a9224(uVar3,&"price",&UNK_017a942c,0,&UNK_017a9434,0);
  uVar3 = func_0x017a9224(uVar3,&"hp",&UNK_017a943c,0,&UNK_017a9444,0);
  uVar3 = func_0x017a9224(uVar3,&"groupId",&UNK_017a944c,0,&UNK_017a9454,0);
  uVar3 = func_0x017a9224(uVar3,&"hpRecoverRate",&UNK_017a945c,0,&UNK_017a9464,0);
  uVar3 = func_0x017a9224(uVar3,&"ad",&UNK_017a946c,0,&UNK_017a9474,0);
  uVar3 = func_0x017a9224(uVar3,&"armor",&UNK_017a947c,0,&UNK_017a9484,0);
  uVar3 = func_0x017a9224(uVar3,&"criRate",&UNK_017a948c,0,&UNK_017a9494,0);
  uVar3 = func_0x017a9224(uVar3,&"criDamage",&UNK_017a949c,0,&UNK_017a94a4,0);
  uVar3 = func_0x017a9224(uVar3,&"hpRecover",&UNK_017a94ac,0,&UNK_017a94b4,0);
  uVar3 = func_0x017a9224(uVar3,&"attackSpeedRate",&UNK_017a94bc,0,&UNK_017a94c4,0);
  uVar3 = func_0x017a9224(uVar3,&"armorPierceRate",&UNK_017a94cc,0,&UNK_017a94d4,0);
  uVar3 = func_0x017a9224(uVar3,&"ap",&UNK_017a94dc,0,&UNK_017a94e4,0);
  uVar3 = func_0x017a9224(uVar3,&"magicStealRate",&UNK_017a94ec,0,&UNK_017a94f4,0);
  uVar3 = func_0x017a9224(uVar3,&"attackStealRate",&UNK_017a94fc,0,&UNK_017a9504,0);
  uVar3 = func_0x017a9224(uVar3,&"moveSpeedRate",&UNK_017a950c,0,&UNK_017a9514,0);
  uVar3 = func_0x017a9224(uVar3,&"moveSpeed",&UNK_017a951c,0,&UNK_017a9524,0);
  uVar3 = func_0x017a9224(uVar3,&"cdReduction",&UNK_017a952c,0,&UNK_017a9534,0);
  uVar3 = func_0x017a9224(uVar3,&"cdHaste",&UNK_017a953c,0,&UNK_017a9544,0);
  uVar3 = func_0x017a9224(uVar3,&"magicPierceRate",&UNK_017a954c,0,&UNK_017a9554,0);
  uVar3 = func_0x017a9224(uVar3,&"mp",&UNK_017a955c,0,&UNK_017a9564,0);
  uVar3 = func_0x017a9224(uVar3,&"magicPierce",&UNK_017a956c,0,&UNK_017a9574,0);
  uVar3 = func_0x017a9224(uVar3,&"magicResistance",&UNK_017a957c,0,&UNK_017a9584,0);
  uVar3 = func_0x017a9224(uVar3,&"tenacityRate",&UNK_017a958c,0,&UNK_017a9594,0);
  uVar3 = func_0x017a9224(uVar3,&"healShieldRate",&UNK_017a959c,0,&UNK_017a95a4,0);
  uVar3 = func_0x017a9224(uVar3,&"mpRecover",&UNK_017a95ac,0,&UNK_017a95b4,0);
  uVar3 = func_0x017a9224(uVar3,&"adaptive",&UNK_017a95bc,0,&UNK_017a95c4,0);
  uVar3 = func_0x017a9224(uVar3,&"disableHeroAttactType",&UNK_017a95cc,0,&UNK_017a95d4,0);
  uVar3 = func_0x017a9224(uVar3,&"equipmentType",&UNK_017a95dc,0,&UNK_017a95e4,0);
  uVar3 = func_0x017a9224(uVar3,&"eTypes",&UNK_017a95ec,0,&UNK_017a95f4,0);
  puVar4 = (undefined8 *)func_0x017a900c(uVar3,&"isFlowControlPurchasePermissions",&UNK_017a95fc,0,&UNK_017a9604,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_017a960c;
  func_0x0124ec90(*puVar4,&UNK_017aa100,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"inFlowLimitPurchaseTips");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"inFlowLimitPurchaseTips");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar4 = (undefined8 *)func_0x017a9224(puVar4,&"level",&UNK_017a9614,0,&UNK_017a961c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_017a9624;
  func_0x0124ec90(*puVar4,&UNK_017aa224,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"upgradeEquip");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"upgradeEquip");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x017a962c(puVar4,&"cdBuff",&UNK_017a9814,0,0,0);
  uVar3 = func_0x017a962c(uVar3,&"layerBuff",&UNK_017a981c,0,0,0);
  uVar3 = func_0x017a900c(uVar3,&"isSupport",&UNK_017a9824,0,&UNK_017a982c,0);
  uVar3 = func_0x017a900c(uVar3,&"isEnhanced",&UNK_017a9834,0,&UNK_017a983c,0);
  uVar3 = func_0x017a900c(uVar3,&"isJungle",&UNK_017a9844,0,&UNK_017a984c,0);
  uVar3 = func_0x017a9224(uVar3,&"purchaseCD",&UNK_017a9854,0,&UNK_017a985c,0);
  uVar3 = func_0x017a900c(uVar3,&"isToEquipSlot",&UNK_017a9864,0,&UNK_017a986c,0);
  uVar3 = func_0x017a900c(uVar3,&"isEnableRepeatPurchase",&UNK_017a9874,0,&UNK_017a987c,0);
  uVar3 = func_0x017a9224(uVar3,&"maxRepeatPurchaseCount",&UNK_017a9884,0,&UNK_017a988c,0);
  uVar3 = func_0x017a900c(uVar3,&"isRainbow",&UNK_017a9894,0,&UNK_017a989c,0);
  uVar3 = func_0x017a900c(uVar3,&"isGainEquip",&UNK_017a98a4,0,&UNK_017a98ac,0);
  uVar3 = func_0x017a900c(uVar3,&"isForgeEquip",&UNK_017a98b4,0,&UNK_017a98bc,0);
  uVar3 = func_0x017a9224(uVar3,&"forgeDisplayPriority",&UNK_017a98c4,0,&UNK_017a98cc,0);
  uVar3 = func_0x017a9224(uVar3,&"equipmentForgeHeroTagType",&UNK_017a98d4,0,&UNK_017a98dc,0);
  puVar4 = (undefined8 *)func_0x017a900c(uVar3,&"isConflictWithActiveEquip",&UNK_017a98e4,0,&UNK_017a98ec,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_017a98f4;
  func_0x0124ec90(*puVar4,&UNK_017aa5bc,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"staticDataList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"staticDataList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
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

