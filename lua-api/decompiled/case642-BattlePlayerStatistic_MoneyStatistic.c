// ===== case642-BattlePlayerStatistic_MoneyStatistic @ 017135e0 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case642-BattlePlayerStatistic_MoneyStatistic


void case642_BattlePlayerStatistic_MoneyStatistic(undefined8 param_1)

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
  func_0x0191d324(&uStack_30,&"BattlePlayerStatistic_MoneyStatistic",&uStack_40,0x736d101);
  uVar2 = func_0x0191c40c(&uStack_30,&"fromAll",&UNK_0191c5f4,0,&UNK_0191c5fc,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromKill",&UNK_0191c65c,0,&UNK_0191c664,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromAssist",&UNK_0191c6c4,0,&UNK_0191c6cc,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromSoliderKill",&UNK_0191c72c,0,&UNK_0191c734,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromSoliderShare",&UNK_0191c794,0,&UNK_0191c79c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromGrow",&UNK_0191c7fc,0,&UNK_0191c804,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromTower",&UNK_0191c864,0,&UNK_0191c86c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromNormalMonster",&UNK_0191c8cc,0,&UNK_0191c8d4,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromLargeMonster",&UNK_0191c934,0,&UNK_0191c93c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromMyMonster",&UNK_0191c99c,0,&UNK_0191c9a4,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromEnemyMonster",&UNK_0191ca04,0,&UNK_0191ca0c,0);
  uVar2 = func_0x0191c40c(uVar2,&"farmPhaseFromEnemyMonster",&UNK_0191ca6c,0,&UNK_0191ca74,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromEpicMonster",&UNK_0191cad4,0,&UNK_0191cadc,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromOther",&UNK_0191cb3c,0,&UNK_0191cb44,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromShare",&UNK_0191cba4,0,&UNK_0191cbac,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromStrategicPoint",&UNK_0191cc0c,0,&UNK_0191cc14,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromBigDragon",&UNK_0191cc74,0,&UNK_0191cc7c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromSmallDragon",&UNK_0191ccdc,0,&UNK_0191cce4,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromRiftHerald",&UNK_0191cd44,0,&UNK_0191cd4c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromExtraLowestGoldAward",&UNK_0191cdac,0,&UNK_0191cdb4,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromTowerPlate",&UNK_0191ce14,0,&UNK_0191ce1c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromTowerPlateCount",&UNK_0191ce7c,0,&UNK_0191ce84,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromGhost",&UNK_0191cee4,0,&UNK_0191ceec,0);
  uVar2 = func_0x0191c40c(uVar2,&"supportEquip_Normal",&UNK_0191cef4,0,&UNK_0191cefc,0);
  uVar2 = func_0x0191c40c(uVar2,&"supportEquip_Task",&UNK_0191cf5c,0,&UNK_0191cf64,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromHexRex",&UNK_0191cfc4,0,&UNK_0191cfcc,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromHexBaron",&UNK_0191d02c,0,&UNK_0191d034,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromHexCannon",&UNK_0191d094,0,&UNK_0191d09c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromHexPoro",&UNK_0191d0fc,0,&UNK_0191d104,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromHexBox",&UNK_0191d164,0,&UNK_0191d16c,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromMushroom",&UNK_0191d1cc,0,&UNK_0191d1d4,0);
  uVar2 = func_0x0191c40c(uVar2,&"fromSystem",&UNK_0191d234,0,&UNK_0191d23c,0);
  uVar2 = func_0x0191c40c(uVar2,&"apartFromSP",&UNK_0191d29c,0,&UNK_0191d2a4,0);
  uVar2 = func_0x0191c40c(uVar2,&"earnSoliderMoneySampleData",&UNK_0191d304,0,&UNK_0191d30c,0);
  puVar3 = (undefined8 *)func_0x0191c40c(uVar2,&"getMoneySpeedInSampleInternal",&UNK_0191d314,0,&UNK_0191d31c,0);
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

