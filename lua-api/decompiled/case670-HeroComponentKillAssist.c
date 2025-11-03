// ===== case670-HeroComponentKillAssist @ 01717f30 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case670-HeroComponentKillAssist


void case670_HeroComponentKillAssist(undefined8 param_1)

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
  func_0x0193d348(&uStack_40,&"HeroComponentKillAssist",&uStack_50,0x736d101);
  uVar3 = func_0x0193caac(&uStack_40,&"awardSegment",&UNK_0193cc94,0,&UNK_0193cc9c,0);
  uVar3 = func_0x0193caac(uVar3,&"awardGold",&UNK_0193ccb8,0,&UNK_0193ccc0,0);
  uVar3 = func_0x0193cd58(uVar3,&"surplusAwardGold",&UNK_0193cf40,0,&UNK_0193cf48,0);
  uVar3 = func_0x0193caac(uVar3,&"previousAwardSegment",&UNK_0193cf50,0,&UNK_0193cf58,0);
  uVar3 = func_0x0193caac(uVar3,&"awardGoldState",&UNK_0193cf74,0,&UNK_0193cf7c,0);
  uVar3 = func_0x0193cd58(uVar3,&"killAssistAwardGold",&UNK_0193cf84,0,&UNK_0193cf8c,0);
  uVar3 = func_0x0193cd58(uVar3,&"otherAwardGold",&UNK_0193cf94,0,&UNK_0193cf9c,0);
  uVar3 = func_0x0193cd58(uVar3,&"dieAwardGold",&UNK_0193cfa4,0,&UNK_0193cfac,0);
  uVar3 = func_0x0193cd58(uVar3,&"dieExtraAwardGold",&UNK_0193cfb4,0,&UNK_0193cfbc,0);
  uVar3 = func_0x0193caac(uVar3,&"curSPCamp",&UNK_0193cfc4,0,&UNK_0193cfcc,0);
  uVar3 = func_0x0193caac(uVar3,&"realAwardGold",&UNK_0193cfd4,0,&UNK_0193cfdc,0);
  uVar3 = func_0x0193caac(uVar3,&"lastDieLoseAwardGold",&UNK_0193cfe4,0,&UNK_0193cfec,0);
  puVar4 = (undefined8 *)func_0x0193cd58(uVar3,&"realExtraAwardGold",&UNK_0193d084,0,&UNK_0193d08c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0193d124;
  func_0x0124ec90(*puVar4,&UNK_0193ddf4,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"damageToHeroInfoList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"damageToHeroInfoList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0193caac(puVar4,&"totalSkillUse",&UNK_0193d12c,0,&UNK_0193d134,0);
  uVar3 = func_0x0193d150(uVar3,&"historyKillSnapshots",&UNK_0193d338,0,0,0);
  puVar4 = (undefined8 *)func_0x0193d150(uVar3,&"historyAssistSnapshots",&UNK_0193d340,0,0,0);
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

