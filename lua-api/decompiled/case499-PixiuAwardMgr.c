// ===== case499-PixiuAwardMgr @ 016f3e60 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case499-PixiuAwardMgr


void case499_PixiuAwardMgr(undefined8 param_1)

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
  func_0x01890c5c(&uStack_40,&"PixiuAwardMgr",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_40,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018906b4;
  func_0x0124ec90(uStack_40,&UNK_01891020,1);
  func_0x0124c0c0(uStack_40,0xffffffff);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"lastBetOnWinner");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"lastBetOnWinner");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x018906bc(&uStack_40,&"onPathSelect",&UNK_018908a4,0,&UNK_018908ac,0);
  uVar4 = func_0x018906bc(uVar4,&"onBet",&UNK_0189093c,0,&UNK_01890944,0);
  puVar3 = (undefined8 *)func_0x018909d4(uVar4,&"pairIndex",&UNK_01890bbc,0,&UNK_01890bc4,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01890c54;
  func_0x0124ec90(*puVar3,&UNK_01891584,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"pixiuStatInfoDic");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = *puVar3;
  func_0x0124a650(uVar4,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"pixiuStatInfoDic");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
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

