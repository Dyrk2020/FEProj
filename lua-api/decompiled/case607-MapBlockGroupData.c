// ===== case607-MapBlockGroupData @ 017091e4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case607-MapBlockGroupData


void case607_MapBlockGroupData(undefined8 param_1)

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
  func_0x018f7c4c(&uStack_40,&"MapBlockGroupData",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x018f784c(&uStack_40,&"obstacleConfigID",&UNK_018f7a34,0,&UNK_018f7a3c,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018f7a44;
  func_0x0124ec90(*puVar3,&UNK_018f8230,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"minimapPath");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"minimapPath");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018f7a4c;
  func_0x0124ec90(*puVar3,&UNK_018f8354,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"blockPoints");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"blockPoints");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar3 = (undefined8 *)func_0x018f7a54(puVar3,&"vlDestroyAsset",&UNK_018f7c3c,0,&UNK_018f7c44,0);
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

