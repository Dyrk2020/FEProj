// ===== case245-GainResObject @ 016b5ce4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case245-GainResObject


void case245_GainResObject(undefined8 param_1)

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
  func_0x017d3aa4(&uStack_40,&"GainResObject",&uStack_50,0x736d101);
  uVar3 = func_0x017d316c(&uStack_40,&"iAbilityGroupTag",&UNK_017d3354,0,&UNK_017d335c,0);
  uVar3 = func_0x017d3364(uVar3,&"iHexAramSeriesTag",&UNK_017d354c,0,&UNK_017d3554,0);
  uVar3 = func_0x017d3364(uVar3,&"iIncludeTag",&UNK_017d355c,0,&UNK_017d3564,0);
  uVar3 = func_0x017d3364(uVar3,&"iExcludeTag",&UNK_017d356c,0,&UNK_017d3574,0);
  uVar3 = func_0x017d3364(uVar3,&"iIncludeTagSelected",&UNK_017d357c,0,&UNK_017d3584,0);
  uVar3 = func_0x017d3364(uVar3,&"iExcludeTagSelected",&UNK_017d358c,0,&UNK_017d3594,0);
  uVar3 = func_0x017d3364(uVar3,&"iIncludeTagRemove",&UNK_017d359c,0,&UNK_017d35a4,0);
  uVar3 = func_0x017d3364(uVar3,&"iExcludeTagRemove",&UNK_017d35ac,0,&UNK_017d35b4,0);
  uVar3 = func_0x017d3364(uVar3,&"iIncludeCareerTag",&UNK_017d35bc,0,&UNK_017d35c4,0);
  uVar3 = func_0x017d3364(uVar3,&"iExcludeCareerTag",&UNK_017d35cc,0,&UNK_017d35d4,0);
  uVar3 = func_0x017d35dc(uVar3,&"isDiscovery",&UNK_017d37c4,0,&UNK_017d37cc,0);
  uVar3 = func_0x017d316c(uVar3,&"excludeGroupId",&UNK_017d37d4,0,&UNK_017d37dc,0);
  uVar3 = func_0x017d35dc(uVar3,&"onlyForBeDiscovered",&UNK_017d37e4,0,&UNK_017d37ec,0);
  uVar3 = func_0x017d35dc(uVar3,&"isUpgradeCard",&UNK_017d37f4,0,&UNK_017d37fc,0);
  uVar3 = func_0x017d35dc(uVar3,&"allowEnhancement",&UNK_017d3804,0,&UNK_017d380c,0);
  uVar3 = func_0x017d316c(uVar3,&"limitRound",&UNK_017d3814,0,&UNK_017d381c,0);
  uVar3 = func_0x017d316c(uVar3,&"MaxlimitRound",&UNK_017d3824,0,&UNK_017d382c,0);
  uVar3 = func_0x017d35dc(uVar3,&"enabled",&UNK_017d3834,0,&UNK_017d383c,0);
  uVar3 = func_0x017d35dc(uVar3,&"locked",&UNK_017d3844,0,&UNK_017d384c,0);
  uVar3 = func_0x017d316c(uVar3,&"iHexAramVersionsTag",&UNK_017d3854,0,&UNK_017d385c,0);
  uVar3 = func_0x017d35dc(uVar3,&"disableInShow",&UNK_017d3864,0,&UNK_017d386c,0);
  uVar3 = func_0x017d316c(uVar3,&"quality",&UNK_017d3874,0,&UNK_017d387c,0);
  uVar3 = func_0x017d316c(uVar3,&"maxRandomNum",&UNK_017d3884,0,&UNK_017d388c,0);
  uVar3 = func_0x017d3894(uVar3,&"randomWeight",&UNK_017d3a7c,0,&UNK_017d3a84,0);
  puVar4 = (undefined8 *)func_0x017d35dc(uVar3,&"repeatTake",&UNK_017d3a8c,0,&UNK_017d3a94,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_017d3a9c;
  func_0x0124ec90(*puVar4,&UNK_017d4714,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"layerBuff");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"layerBuff");
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

