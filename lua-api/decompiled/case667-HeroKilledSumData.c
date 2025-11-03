// ===== case667-HeroKilledSumData @ 01717800 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case667-HeroKilledSumData


void case667_HeroKilledSumData(undefined8 param_1)

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
  func_0x01939d44(&uStack_30,&"HeroKilledSumData",&uStack_40,0x736d101);
  uVar2 = func_0x01939574(&uStack_30,&"fightAddExp",&UNK_0193975c,0,&UNK_01939764,0);
  uVar2 = func_0x01939574(uVar2,&"fightAddMoney",&UNK_019397f4,0,&UNK_019397fc,0);
  uVar2 = func_0x01939574(uVar2,&"fightControlEnemyDuration",&UNK_0193988c,0,&UNK_01939894,0);
  uVar2 = func_0x01939574(uVar2,&"fightBeControlledDuration",&UNK_01939924,0,&UNK_0193992c,0);
  uVar2 = func_0x01939574(uVar2,&"fightDuration",&UNK_019399bc,0,&UNK_019399c4,0);
  uVar2 = func_0x01939a54(uVar2,&"fightExtraStatSnapshotValid",&UNK_01939c3c,0,&UNK_01939c44,0);
  uVar2 = func_0x01939574(uVar2,&"fightStartTotalExp",&UNK_01939cd4,0,&UNK_01939cdc,0);
  uVar2 = func_0x01939574(uVar2,&"fightStartMoneyForShow",&UNK_01939ce4,0,&UNK_01939cec,0);
  uVar2 = func_0x01939574(uVar2,&"fightStartApplyControlBuffDuration",&UNK_01939cf4,0,&UNK_01939cfc,0);
  uVar2 = func_0x01939574(uVar2,&"fightStartBeControlledDuration",&UNK_01939d04,0,&UNK_01939d0c,0);
  uVar2 = func_0x01939574(uVar2,&"fightStartTime",&UNK_01939d14,0,&UNK_01939d1c,0);
  uVar2 = func_0x01939574(uVar2,&"fightTotalBeControlledDuration",&UNK_01939d24,0,&UNK_01939d2c,0);
  puVar3 = (undefined8 *)func_0x01939574(uVar2,&"fightTotalControlledDuration",&UNK_01939d34,0,&UNK_01939d3c,0);
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

