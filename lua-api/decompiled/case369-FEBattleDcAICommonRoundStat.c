// ===== case369-FEBattleDcAICommonRoundStat @ 016d5e3c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case369-FEBattleDcAICommonRoundStat


void case369_FEBattleDcAICommonRoundStat(undefined8 param_1)

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
  func_0x0182cd9c(&uStack_30,&"FEBattleDcAICommonRoundStat",&uStack_40,0x736d101);
  uVar2 = func_0x0182cb14(&uStack_30,&"teamDifficultyMax",&UNK_0182ccfc,0,&UNK_0182cd04,0);
  uVar2 = func_0x0182cb14(uVar2,&"teamDifficultyMin",&UNK_0182cd0c,0,&UNK_0182cd14,0);
  uVar2 = func_0x0182cb14(uVar2,&"individualDifficultyMin",&UNK_0182cd1c,0,&UNK_0182cd24,0);
  uVar2 = func_0x0182cb14(uVar2,&"individualDifficultyMax",&UNK_0182cd2c,0,&UNK_0182cd34,0);
  uVar2 = func_0x0182cb14(uVar2,&"teamDifficultyStart",&UNK_0182cd3c,0,&UNK_0182cd44,0);
  uVar2 = func_0x0182cb14(uVar2,&"individualDifficultyStart",&UNK_0182cd4c,0,&UNK_0182cd54,0);
  uVar2 = func_0x0182cb14(uVar2,&"isReachTeamDifficultyMax",&UNK_0182cd5c,0,&UNK_0182cd64,0);
  uVar2 = func_0x0182cb14(uVar2,&"isReachTeamDifficultyMin",&UNK_0182cd6c,0,&UNK_0182cd74,0);
  uVar2 = func_0x0182cb14(uVar2,&"isReachIndividualDifficultyMax",&UNK_0182cd7c,0,&UNK_0182cd84,0);
  puVar3 = (undefined8 *)func_0x0182cb14(uVar2,&"isReachIndividualDifficultyMin",&UNK_0182cd8c,0,&UNK_0182cd94,0);
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

