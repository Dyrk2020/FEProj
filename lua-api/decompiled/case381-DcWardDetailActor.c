// ===== case381-DcWardDetailActor @ 016d8030 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case381-DcWardDetailActor


void case381_DcWardDetailActor(undefined8 param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x018369d0(&uStack_30,&"DcWardDetailActor",&uStack_40,0x736d101);
  uVar2 = func_0x01836370(&uStack_30,&"objId",&UNK_01836558,0,&UNK_01836560,0);
  uVar2 = func_0x01836370(uVar2,&"createBattleTime",&UNK_01836568,0,&UNK_01836570,0);
  uVar2 = func_0x01836370(uVar2,&"destroyBattleTime",&UNK_01836578,0,&UNK_01836580,0);
  uVar2 = func_0x01836370(uVar2,&"dieReason",&UNK_01836588,0,&UNK_01836590,0);
  uVar2 = func_0x01836370(uVar2,&"wardType",&UNK_01836598,0,&UNK_018365a0,0);
  uVar2 = func_0x018365a8(uVar2,&"wardPosition",&UNK_01836790,0,&UNK_018367a4,0);
  uVar2 = func_0x018367c0(uVar2,&"heroList",&UNK_018369a8,0,0,0);
  uVar2 = func_0x018367c0(uVar2,&"monsterList",&UNK_018369b0,0,0,0);
  uVar2 = func_0x018367c0(uVar2,&"wardList",&UNK_018369b8,0,0,0);
  uVar2 = func_0x018367c0(uVar2,&"soliderList",&UNK_018369c0,0,0,0);
  puVar3 = (undefined8 *)func_0x018367c0(uVar2,&"tempList",&UNK_018369c8,0,0,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  func_0x0124c4d0(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

