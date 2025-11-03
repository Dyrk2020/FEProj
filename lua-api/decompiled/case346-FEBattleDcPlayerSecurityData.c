// ===== case346-FEBattleDcPlayerSecurityData @ 016d0410 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case346-FEBattleDcPlayerSecurityData


void case346_FEBattleDcPlayerSecurityData(undefined8 param_1)

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
  func_0x0181772c(&uStack_40,&"FEBattleDcPlayerSecurityData",&uStack_50,0x736d101);
  uVar3 = func_0x0181710c(&uStack_40,&"playerSecurityDataDic",&UNK_018172f4,0,0,0);
  uVar3 = func_0x0181710c(uVar3,&"recordDataWhenDieDic",&UNK_018172fc,0,0,0);
  uVar3 = func_0x01817304(uVar3,&"curIndex",&UNK_018174ec,0,&UNK_018174f4,0);
  uVar3 = func_0x01817304(uVar3,&"totalRecordCount",&UNK_018174fc,0,&UNK_01817504,0);
  uVar3 = func_0x01817304(uVar3,&"lastRecordCount",&UNK_0181750c,0,&UNK_01817514,0);
  uVar3 = func_0x0181751c(uVar3,&"blueResourcesInfoList",&UNK_01817704,0,0,0);
  uVar3 = func_0x0181751c(uVar3,&"redResourcesInfoList",&UNK_0181770c,0,0,0);
  uVar3 = func_0x0181751c(uVar3,&"blueKillTowerList",&UNK_01817714,0,0,0);
  puVar4 = (undefined8 *)func_0x0181751c(uVar3,&"redKillTowerList",&UNK_0181771c,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01817724;
  func_0x0124ec90(*puVar4,&UNK_018181f8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"playerBuffInfoDic");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"playerBuffInfoDic");
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

