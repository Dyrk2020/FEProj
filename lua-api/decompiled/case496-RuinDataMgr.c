// ===== case496-RuinDataMgr @ 016f36d4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case496-RuinDataMgr


void case496_RuinDataMgr(undefined8 param_1)

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
  func_0x0188dbc0(&uStack_40,&"RuinDataMgr",&uStack_50,0x736d101);
  uVar3 = func_0x0188d1c8(&uStack_40,&"curRound",&UNK_0188d3b0,0,&UNK_0188d3b8,0);
  puVar4 = (undefined8 *)func_0x0188d1c8(uVar3,&"maxRound",&UNK_0188d3d4,0,&UNK_0188d3dc,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0188d3f8;
  func_0x0124ec90(*puVar4,&UNK_0188e474,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"monsters");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"monsters");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0188d1c8(puVar4,&"monsterNum",&UNK_0188d400,0,&UNK_0188d408,0);
  uVar3 = func_0x0188d1c8(uVar3,&"monsterTotalNum",&UNK_0188d498,0,&UNK_0188d4a0,0);
  uVar3 = func_0x0188d530(uVar3,&"monsterCreatedFinish",&UNK_0188d718,0,&UNK_0188d720,0);
  uVar3 = func_0x0188d728(uVar3,&"roundTime",&UNK_0188d910,0,&UNK_0188d918,0);
  uVar3 = func_0x0188d530(uVar3,&"inBattle",&UNK_0188d978,0,&UNK_0188d980,0);
  uVar3 = func_0x0188d530(uVar3,&"isPause",&UNK_0188d988,0,&UNK_0188d990,0);
  uVar3 = func_0x0188d530(uVar3,&"isSentEndEvent",&UNK_0188d998,0,&UNK_0188d9a0,0);
  uVar3 = func_0x0188d9a8(uVar3,&"killRuinMonsterCount",&UNK_0188db90,0,&UNK_0188db98,0);
  uVar3 = func_0x0188d9a8(uVar3,&"killRuinElitesCount",&UNK_0188dba0,0,&UNK_0188dba8,0);
  puVar4 = (undefined8 *)func_0x0188d9a8(uVar3,&"killRuinBossCount",&UNK_0188dbb0,0,&UNK_0188dbb8,0);
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

