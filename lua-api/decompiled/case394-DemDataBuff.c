// ===== case394-DemDataBuff @ 016ddcb8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case394-DemDataBuff


void case394_DemDataBuff(undefined8 param_1)

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
  func_0x018448d4(&uStack_40,&"DemDataBuff",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x018444c4(&uStack_40,&"haveWriteIncre",&UNK_018446ac,0,&UNK_018446b4,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018446bc;
  func_0x0124ec90(*puVar3,&UNK_01844eb8,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"objCntDic");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"objCntDic");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018446c4;
  func_0x0124ec90(*puVar3,&UNK_01844fdc,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"cfgHashDic");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"cfgHashDic");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar3 = (undefined8 *)func_0x018446cc(puVar3,&"useSize",&UNK_018448b4,0,&UNK_018448bc,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018448c4;
  func_0x0124ec90(*puVar3,&UNK_01845320,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"bw");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"bw");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_018448cc;
  func_0x0124ec90(*puVar3,&UNK_01845444,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"freelist");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"freelist");
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

