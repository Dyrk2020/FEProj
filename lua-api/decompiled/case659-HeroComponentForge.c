// ===== case659-HeroComponentForge @ 01716188 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case659-HeroComponentForge


void case659_HeroComponentForge(undefined8 param_1)

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
  func_0x0192fbb8(&uStack_40,&"HeroComponentForge",&uStack_50,0x736d101);
  uVar3 = func_0x0192f39c(&uStack_40,&"nextStockInTime",&UNK_0192f584,0,&UNK_0192f58c,0);
  uVar3 = func_0x0192f5ec(uVar3,&"stockInTime",&UNK_0192f7d4,0,&UNK_0192f7dc,0);
  puVar4 = (undefined8 *)func_0x0192f5ec(uVar3,&"stockInNumPerRound",&UNK_0192f7f8,0,&UNK_0192f800,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0192f81c;
  func_0x0124ec90(*puVar4,&UNK_0193084c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"dodgeFilter");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"dodgeFilter");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0192f5ec(puVar4,&"residueUpRateTimes",&UNK_0192f824,0,&UNK_0192f82c,0);
  uVar3 = func_0x0192f5ec(uVar3,&"sRankBoostTriggerTimes",&UNK_0192f848,0,&UNK_0192f850,0);
  uVar3 = func_0x0192f39c(uVar3,&"totalForgeCost",&UNK_0192f86c,0,&UNK_0192f874,0);
  uVar3 = func_0x0192f5ec(uVar3,&"singleCardNum",&UNK_0192f8d4,0,&UNK_0192f8dc,0);
  uVar3 = func_0x0192f5ec(uVar3,&"lightCardNum",&UNK_0192f8f8,0,&UNK_0192f900,0);
  uVar3 = func_0x0192f5ec(uVar3,&"darkCardNum",&UNK_0192f91c,0,&UNK_0192f924,0);
  uVar3 = func_0x0192f5ec(uVar3,&"equipCardNum",&UNK_0192f940,0,&UNK_0192f948,0);
  uVar3 = func_0x0192f5ec(uVar3,&"coreCardNum",&UNK_0192f964,0,&UNK_0192f96c,0);
  uVar3 = func_0x0192f5ec(uVar3,&"functionCardNum",&UNK_0192f988,0,&UNK_0192f990,0);
  puVar4 = (undefined8 *)func_0x0192f9ac(uVar3,&"forceForgeCoreTriggered",&UNK_0192fb94,0,&UNK_0192fb9c,0);
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

