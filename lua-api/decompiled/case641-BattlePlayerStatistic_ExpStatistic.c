// ===== case641-BattlePlayerStatistic_ExpStatistic @ 01713380 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case641-BattlePlayerStatistic_ExpStatistic


void case641_BattlePlayerStatistic_ExpStatistic(undefined8 param_1)

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
  func_0x0191a2bc(&uStack_30,&"BattlePlayerStatistic_ExpStatistic",&uStack_40,0x736d101);
  uVar2 = func_0x01918d94(&uStack_30,&"fromHero",&UNK_01918f7c,0,&UNK_01918f84,0);
  uVar2 = func_0x01918d94(uVar2,&"fromSoldier",&UNK_01918fe4,0,&UNK_01918fec,0);
  uVar2 = func_0x01918d94(uVar2,&"fromGrow",&UNK_0191a04c,0,&UNK_0191a054,0);
  uVar2 = func_0x01918d94(uVar2,&"fromTower",&UNK_0191a0b4,0,&UNK_0191a0bc,0);
  uVar2 = func_0x01918d94(uVar2,&"fromNormalMonster",&UNK_0191a11c,0,&UNK_0191a124,0);
  uVar2 = func_0x01918d94(uVar2,&"fromLargeMonster",&UNK_0191a184,0,&UNK_0191a18c,0);
  uVar2 = func_0x01918d94(uVar2,&"fromEpicMonster",&UNK_0191a1ec,0,&UNK_0191a1f4,0);
  puVar3 = (undefined8 *)func_0x01918d94(uVar2,&"fromOther",&UNK_0191a254,0,&UNK_0191a25c,0);
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

