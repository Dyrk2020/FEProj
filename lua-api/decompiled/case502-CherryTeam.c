// ===== case502-CherryTeam @ 016f472c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case502-CherryTeam


void case502_CherryTeam(undefined8 param_1)

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
  func_0x01893fd0(&uStack_30,&"CherryTeam",&uStack_40,0x736d101);
  uVar2 = func_0x0189366c(&uStack_30,&"id",&UNK_01893854,0,&UNK_0189385c,0);
  uVar2 = func_0x0189366c(uVar2,&"curHp",&UNK_01893878,0,&UNK_01893880,0);
  uVar2 = func_0x0189389c(uVar2,&"isLoss",&UNK_01893a84,0,&UNK_01893a8c,0);
  uVar2 = func_0x01893aa8(uVar2,&"lossFixTime",&UNK_01893c90,0,&UNK_01893c98,0);
  uVar2 = func_0x0189366c(uVar2,&"camp",&UNK_01893cf8,0,&UNK_01893d00,0);
  uVar2 = func_0x0189389c(uVar2,&"isSettlement",&UNK_01893d1c,0,&UNK_01893d24,0);
  uVar2 = func_0x0189366c(uVar2,&"maxWinStreak",&UNK_01893d40,0,&UNK_01893d48,0);
  uVar2 = func_0x0189366c(uVar2,&"curWinStreak",&UNK_01893d64,0,&UNK_01893d6c,0);
  uVar2 = func_0x0189366c(uVar2,&"curLossStreak",&UNK_01893dfc,0,&UNK_01893e04,0);
  uVar2 = func_0x0189366c(uVar2,&"maxLossStreak",&UNK_01893e94,0,&UNK_01893e9c,0);
  uVar2 = func_0x0189366c(uVar2,&"iTrapGroupNum",&UNK_01893f2c,0,&UNK_01893f34,0);
  uVar2 = func_0x0189366c(uVar2,&"iTransGroupNum",&UNK_01893f3c,0,&UNK_01893f44,0);
  uVar2 = func_0x0189366c(uVar2,&"iSummonedGroupNum",&UNK_01893f4c,0,&UNK_01893f54,0);
  uVar2 = func_0x0189389c(uVar2,&"isSurrender",&UNK_01893f5c,0,&UNK_01893f64,0);
  uVar2 = func_0x01893aa8(uVar2,&"surrenderTime",&UNK_01893f80,0,&UNK_01893f88,0);
  uVar2 = func_0x0189366c(uVar2,&"endRound",&UNK_01893f90,0,&UNK_01893f98,0);
  uVar2 = func_0x0189366c(uVar2,&"rank",&UNK_01893fa0,0,&UNK_01893fa8,0);
  uVar2 = func_0x0189366c(uVar2,&"noDeadWinRoundNum",&UNK_01893fb0,0,&UNK_01893fb8,0);
  puVar3 = (undefined8 *)func_0x0189366c(uVar2,&"deadWinRoundNum",&UNK_01893fc0,0,&UNK_01893fc8,0);
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

