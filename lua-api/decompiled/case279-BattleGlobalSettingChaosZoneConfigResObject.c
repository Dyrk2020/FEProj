// ===== case279-BattleGlobalSettingChaosZoneConfigResObject @ 016bae70 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case279-BattleGlobalSettingChaosZoneConfigResObject


void case279_BattleGlobalSettingChaosZoneConfigResObject(undefined8 param_1)

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
  func_0x017e82f0(&uStack_40,&"BattleGlobalSettingChaosZoneConfigResObject",&uStack_50,0x736d101);
  uVar3 = func_0x017e7e48(&uStack_40,&"reduceWeightRatio",&UNK_017e8030,0,&UNK_017e8038,0);
  uVar3 = func_0x017e7e48(uVar3,&"minReduceWeightRatio",&UNK_017e8040,0,&UNK_017e8048,0);
  uVar3 = func_0x017e8050(uVar3,&"reduceOtherQuality",&UNK_017e8238,0,&UNK_017e8240,0);
  uVar3 = func_0x017e8050(uVar3,&"reduceSameSlot",&UNK_017e8248,0,&UNK_017e8250,0);
  uVar3 = func_0x017e7e48(uVar3,&"reduceSameSlotWeightRatio",&UNK_017e8258,0,&UNK_017e8260,0);
  uVar3 = func_0x017e7e48(uVar3,&"minReduceSameSlotRatio",&UNK_017e8268,0,&UNK_017e8270,0);
  uVar3 = func_0x017e7e48(uVar3,&"whiteRecommendWeight",&UNK_017e8278,0,&UNK_017e8280,0);
  uVar3 = func_0x017e7e48(uVar3,&"blueRecommendWeight",&UNK_017e8288,0,&UNK_017e8290,0);
  uVar3 = func_0x017e7e48(uVar3,&"purpleRecommendWeight",&UNK_017e8298,0,&UNK_017e82a0,0);
  uVar3 = func_0x017e7e48(uVar3,&"uniqueRecommendWeight",&UNK_017e82a8,0,&UNK_017e82b0,0);
  puVar4 = (undefined8 *)func_0x017e7e48(uVar3,&"recommendThreshold",&UNK_017e82b8,0,&UNK_017e82c0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_017e82c8;
  func_0x0124ec90(*puVar4,&UNK_017e8b20,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"recommendMixCoeffs");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"recommendMixCoeffs");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x017e7e48(puVar4,&"averageRange",&UNK_017e82d0,0,&UNK_017e82d8,0);
  puVar4 = (undefined8 *)func_0x017e7e48(uVar3,&"maxRange",&UNK_017e82e0,0,&UNK_017e82e8,0);
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

