// ===== case476-MatchBattleModeResObject @ 016ef1bc =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case476-MatchBattleModeResObject


void case476_MatchBattleModeResObject(undefined8 param_1)

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
  func_0x0187d840(&uStack_30,&"MatchBattleModeResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0187d220(&uStack_30,&"iBattleMode",&UNK_0187d408,0,&UNK_0187d410,0);
  uVar2 = func_0x0187d220(uVar2,&"iGamePlayMode",&UNK_0187d418,0,&UNK_0187d420,0);
  uVar2 = func_0x0187d220(uVar2,&"ePlayMode",&UNK_0187d428,0,&UNK_0187d430,0);
  uVar2 = func_0x0187d220(uVar2,&"eMatchType",&UNK_0187d438,0,&UNK_0187d440,0);
  uVar2 = func_0x0187d220(uVar2,&"iAIDifficulty",&UNK_0187d448,0,&UNK_0187d450,0);
  uVar2 = func_0x0187d220(uVar2,&"iIsHeroAchi",&UNK_0187d458,0,&UNK_0187d460,0);
  uVar2 = func_0x0187d468(uVar2,&"isNegativeScFlag",&UNK_0187d650,0,&UNK_0187d658,0);
  uVar2 = func_0x0187d220(uVar2,&"iBornFlowDelay",&UNK_0187d660,0,&UNK_0187d668,0);
  uVar2 = func_0x0187d468(uVar2,&"isRecordMoments",&UNK_0187d670,0,&UNK_0187d678,0);
  uVar2 = func_0x0187d468(uVar2,&"enableRecordHeroAchievement",&UNK_0187d680,0,&UNK_0187d688,0);
  uVar2 = func_0x0187d468(uVar2,&"isHeroAssisAwardNoShare",&UNK_0187d690,0,&UNK_0187d698,0);
  uVar2 = func_0x0187d468(uVar2,&"isCanQuitGameInAllAI",&UNK_0187d6a0,0,&UNK_0187d6a8,0);
  uVar2 = func_0x0187d468(uVar2,&"isMVPCalUseAllPro",&UNK_0187d6b0,0,&UNK_0187d6b8,0);
  uVar2 = func_0x0187d220(uVar2,&"iMvpScoreModeID",&UNK_0187d6c0,0,&UNK_0187d6c8,0);
  uVar2 = func_0x0187d220(uVar2,&"afkConfigID",&UNK_0187d6d0,0,&UNK_0187d6d8,0);
  uVar2 = func_0x0187d468(uVar2,&"isHangupManagedFlag",&UNK_0187d6e0,0,&UNK_0187d6e8,0);
  uVar2 = func_0x0187d468(uVar2,&"isHangupVoteFlag",&UNK_0187d6f0,0,&UNK_0187d6f8,0);
  uVar2 = func_0x0187d220(uVar2,&"hangupProcessType",&UNK_0187d700,0,&UNK_0187d708,0);
  uVar2 = func_0x0187d220(uVar2,&"iSurrenderOpenTime",&UNK_0187d710,0,&UNK_0187d718,0);
  uVar2 = func_0x0187d220(uVar2,&"iSurrenderAllPassFinishTime",&UNK_0187d720,0,&UNK_0187d728,0);
  uVar2 = func_0x0187d220(uVar2,&"iSurrenderTime",&UNK_0187d730,0,&UNK_0187d738,0);
  uVar2 = func_0x0187d220(uVar2,&"iSurrenderCD",&UNK_0187d740,0,&UNK_0187d748,0);
  uVar2 = func_0x0187d220(uVar2,&"iHangUpApprovePercent",&UNK_0187d750,0,&UNK_0187d758,0);
  uVar2 = func_0x0187d220(uVar2,&"iHangUpVoteTime",&UNK_0187d760,0,&UNK_0187d768,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeHangupTime",&UNK_0187d770,0,&UNK_0187d778,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeCheckTime",&UNK_0187d780,0,&UNK_0187d788,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeContinueTime",&UNK_0187d790,0,&UNK_0187d798,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeVotingTime",&UNK_0187d7a0,0,&UNK_0187d7a8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeTipsTime",&UNK_0187d7b0,0,&UNK_0187d7b8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeApprovePercent",&UNK_0187d7c0,0,&UNK_0187d7c8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeTeammateRank",&UNK_0187d7d0,0,&UNK_0187d7d8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeCountGreaterThanRank",&UNK_0187d7e0,0,&UNK_0187d7e8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeCountLessThanRank",&UNK_0187d7f0,0,&UNK_0187d7f8,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeChampGrade",&UNK_0187d800,0,&UNK_0187d808,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeCountGreaterThanChampGrade",&UNK_0187d810,0,&UNK_0187d818,0);
  uVar2 = func_0x0187d220(uVar2,&"remakeCountLessThanChampGrade",&UNK_0187d820,0,&UNK_0187d828,0);
  puVar3 = (undefined8 *)func_0x0187d468(uVar2,&"isPracticeModeDriver",&UNK_0187d830,0,&UNK_0187d838,0);
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

