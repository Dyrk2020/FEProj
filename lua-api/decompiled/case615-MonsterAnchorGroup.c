// ===== case615-MonsterAnchorGroup @ 0170ae80 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case615-MonsterAnchorGroup


void case615_MonsterAnchorGroup(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x018fc8d8(&uStack_40,&"MonsterAnchorGroup",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_40,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018fc678;
  func_0x0124ec90(uStack_40,&UNK_018fcc9c,1);
  func_0x0124c0c0(uStack_40,0xffffffff);
  uVar5 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"anchorList");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = uStack_40;
  func_0x0124a650(uStack_40,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"anchorList");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar3 = (undefined8 *)func_0x018fc680(&uStack_40,&"lastReFreshTime",&UNK_018fc868,0,&UNK_018fc870,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018fc8d0;
  func_0x0124ec90(*puVar3,&UNK_018fd104,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"nextRefreshAnchor");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"nextRefreshAnchor");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
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

