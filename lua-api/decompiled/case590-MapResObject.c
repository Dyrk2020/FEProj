// ===== case590-MapResObject @ 01704b58 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case590-MapResObject


void case590_MapResObject(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
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
  func_0x018ebc70(&uStack_40,&"MapResObject",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_40,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018eb5f8;
  func_0x0124ec90(uStack_40,&UNK_018ec034,1);
  func_0x0124c0c0(uStack_40,0xffffffff);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"anchorCfg");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"anchorCfg");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_40,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018eb600;
  func_0x0124ec90(uStack_40,&UNK_018ec158,1);
  func_0x0124c0c0(uStack_40,0xffffffff);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"mapConfigAssets");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"mapConfigAssets");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_40,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018eb608;
  func_0x0124ec90(uStack_40,&UNK_018ec27c,1);
  func_0x0124c0c0(uStack_40,0xffffffff);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"layerSceneResList");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"layerSceneResList");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x018eb610(&uStack_40,&"isLoadWhiteModel",&UNK_018eb7f8,0,&UNK_018eb800,0);
  uVar4 = func_0x018eb610(uVar4,&"isTileBasedMap",&UNK_018eb808,0,&UNK_018eb810,0);
  uVar4 = func_0x018eb610(uVar4,&"isRealTimeFow",&UNK_018eb818,0,&UNK_018eb820,0);
  uVar4 = func_0x018eb828(uVar4,&"maxRealTimeRadius",&UNK_018eba10,0,&UNK_018eba18,0);
  uVar4 = func_0x018eb610(uVar4,&"limitedView",&UNK_018eba20,0,&UNK_018eba28,0);
  uVar4 = func_0x018eba30(uVar4,&"innerRadius",&UNK_018ebc18,0,&UNK_018ebc20,0);
  puVar3 = (undefined8 *)func_0x018eba30(uVar4,&"sectorAngle",&UNK_018ebc28,0,&UNK_018ebc30,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_018ebc38;
  func_0x0124ec90(*puVar3,&UNK_018eca2c,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"radiusFixInfos");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"radiusFixInfos");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_018ebc40;
  func_0x0124ec90(*puVar3,&UNK_018ecb50,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"tileConfig");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"tileConfig");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_018ebc48;
  func_0x0124ec90(*puVar3,&UNK_018ecc74,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"infoPointData");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"infoPointData");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x018eba30(puVar3,&"fowGridSizeForRealTime",&UNK_018ebc50,0,&UNK_018ebc58,0);
  puVar3 = (undefined8 *)func_0x018eba30(uVar4,&"fowExtendDistance",&UNK_018ebc60,0,&UNK_018ebc68,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  func_0x0124c4d0(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

