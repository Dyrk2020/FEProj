// ===== case484-FixNavigation @ 016f0c60 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case484-FixNavigation


void case484_FixNavigation(undefined8 param_1)

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
  func_0x018831bc(&uStack_40,&"FixNavigation",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x01882d74(&uStack_40,&"boundAabb",&UNK_01882f5c,0,&UNK_01882f70,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_01882f94;
  func_0x0124ec90(*puVar3,&UNK_01883810,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"obstaclePolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"obstaclePolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_01882f9c;
  func_0x0124ec90(*puVar3,&UNK_01883934,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"grassPolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"grassPolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_01882fa4;
  func_0x0124ec90(*puVar3,&UNK_01883a58,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"icePolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"icePolygons");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar3 = (undefined8 *)func_0x01882fac(puVar3,&"indexMapSize",&UNK_01883194,0,&UNK_0188319c,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018831a4;
  func_0x0124ec90(*puVar3,&UNK_01883d9c,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"navPathForVisi");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"navPathForVisi");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018831ac;
  func_0x0124ec90(*puVar3,&UNK_01883ec0,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"astarForVisi");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"astarForVisi");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018831b4;
  func_0x0124ec90(*puVar3,&UNK_01883fe4,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"map");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"map");
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

