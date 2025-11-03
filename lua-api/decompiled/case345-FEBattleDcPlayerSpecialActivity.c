// ===== case345-FEBattleDcPlayerSpecialActivity @ 016d0128 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case345-FEBattleDcPlayerSpecialActivity


void case345_FEBattleDcPlayerSpecialActivity(undefined8 param_1)

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
  func_0x018168b4(&uStack_30,&"FEBattleDcPlayerSpecialActivity",&uStack_40,0x736d101);
  uVar2 = func_0x01816434(&uStack_30,&"redSpeedTask",&UNK_0181661c,0,&UNK_01816624,0);
  uVar2 = func_0x01816434(uVar2,&"redWinWithoutEquipTask",&UNK_0181662c,0,&UNK_01816634,0);
  uVar2 = func_0x01816434(uVar2,&"redEnterSprinTask",&UNK_0181663c,0,&UNK_01816644,0);
  uVar2 = func_0x01816434(uVar2,&"redStayInGrassTask",&UNK_0181664c,0,&UNK_01816654,0);
  uVar2 = func_0x01816434(uVar2,&"redPentakillTask",&UNK_0181665c,0,&UNK_01816664,0);
  uVar2 = func_0x01816434(uVar2,&"blueSpeedTask",&UNK_0181666c,0,&UNK_01816674,0);
  uVar2 = func_0x01816434(uVar2,&"blueWinWithoutEquipTask",&UNK_0181667c,0,&UNK_01816684,0);
  uVar2 = func_0x01816434(uVar2,&"blueEnterSprinTask",&UNK_0181668c,0,&UNK_01816694,0);
  uVar2 = func_0x01816434(uVar2,&"blueStayInGrassTask",&UNK_0181669c,0,&UNK_018166a4,0);
  uVar2 = func_0x01816434(uVar2,&"bluePentakillTask",&UNK_018166ac,0,&UNK_018166b4,0);
  uVar2 = func_0x018166bc(uVar2,&"redEnterInGrassTimeList",&UNK_018168a4,0,0,0);
  puVar3 = (undefined8 *)func_0x018166bc(uVar2,&"blueEnterInGrassTimeList",&UNK_018168ac,0,0,0);
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

