// ===== case644-HangUpMgr_HangUpInfo @ 01713e54 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case644-HangUpMgr_HangUpInfo


void case644_HangUpMgr_HangUpInfo(undefined8 param_1)

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
  func_0x01921300(&uStack_30,&"HangUpMgr_HangUpInfo",&uStack_40,0x736d101);
  uVar2 = func_0x019204a8(&uStack_30,&"isHangupHintProcessed",&UNK_01920690,0,&UNK_01920698,0);
  uVar2 = func_0x019204a8(uVar2,&"isHangupBroadcastEnterProcessed",&UNK_019206a0,0,&UNK_019206a8,0);
  uVar2 = func_0x019204a8(uVar2,&"isHangupBroadcastQuitProcessed",&UNK_019206b0,0,&UNK_019206b8,0);
  uVar2 = func_0x019206c0(uVar2,&"eHangupRuleValue",&UNK_019208a8,0,&UNK_019208b0,0);
  uVar2 = func_0x019208cc(uVar2,&"oldCurHangupTime",&UNK_01920ab4,0,&UNK_01920abc,0);
  uVar2 = func_0x019208cc(uVar2,&"newCurHangupTime",&UNK_01920b1c,0,&UNK_01920b24,0);
  uVar2 = func_0x019208cc(uVar2,&"oldTotalHangupTime",&UNK_01920b84,0,&UNK_01920b8c,0);
  uVar2 = func_0x019208cc(uVar2,&"newTotalHangupTime",&UNK_01920bec,0,&UNK_01920bf4,0);
  uVar2 = func_0x019208cc(uVar2,&"totalHangupTime",&UNK_01920c54,0,&UNK_01920c5c,0);
  uVar2 = func_0x019208cc(uVar2,&"continuousHangupTime",&UNK_01920cbc,0,&UNK_01920cc4,0);
  uVar2 = func_0x019208cc(uVar2,&"AFKOfflineBuffTime",&UNK_01920d24,0,&UNK_01920d2c,0);
  uVar2 = func_0x019206c0(uVar2,&"voteState",&UNK_01920d8c,0,&UNK_01920d94,0);
  uVar2 = func_0x019206c0(uVar2,&"newHangupEnterInfoIndex",&UNK_01920d9c,0,&UNK_01920da4,0);
  uVar2 = func_0x019206c0(uVar2,&"recordNewAFKTimeListIndex",&UNK_01920dc0,0,&UNK_01920dc8,0);
  uVar2 = func_0x019204a8(uVar2,&"isRemakeHangUp",&UNK_01920de4,0,&UNK_01920dec,0);
  uVar2 = func_0x019204a8(uVar2,&"isAiManaging",&UNK_01920e08,0,&UNK_01920e10,0);
  uVar2 = func_0x019204a8(uVar2,&"isNoOperating",&UNK_01920e2c,0,&UNK_01920e34,0);
  uVar2 = func_0x019204a8(uVar2,&"lastOfflineState",&UNK_01920ec4,0,&UNK_01920ecc,0);
  uVar2 = func_0x019208cc(uVar2,&"curNoInputTime",&UNK_01920f5c,0,&UNK_01920f64,0);
  uVar2 = func_0x019204a8(uVar2,&"isAiManageRecallProcessed",&UNK_01920fc4,0,&UNK_01920fcc,0);
  uVar2 = func_0x019204a8(uVar2,&"isAiManageVoteProcessed",&UNK_01920fd4,0,&UNK_01920fdc,0);
  uVar2 = func_0x019206c0(uVar2,&"aiManageProcessType",&UNK_01920fe4,0,&UNK_01920fec,0);
  uVar2 = func_0x019206c0(uVar2,&"aiManageVoteProcessType",&UNK_01921008,0,&UNK_01921010,0);
  uVar2 = func_0x019206c0(uVar2,&"triggerAIManageTimes",&UNK_01921018,0,&UNK_01921020,0);
  uVar2 = func_0x019208cc(uVar2,&"offlineTime",&UNK_0192103c,0,&UNK_01921044,0);
  uVar2 = func_0x019208cc(uVar2,&"aiControlTime",&UNK_0192104c,0,&UNK_01921054,0);
  uVar2 = func_0x019208cc(uVar2,&"noOperationHangupTime",&UNK_0192105c,0,&UNK_01921064,0);
  uVar2 = func_0x019204a8(uVar2,&"cherryPunishFlag",&UNK_0192106c,0,&UNK_01921074,0);
  uVar2 = func_0x019208cc(uVar2,&"cherryCurRoundAliveTime",&UNK_0192107c,0,&UNK_01921084,0);
  uVar2 = func_0x019204a8(uVar2,&"kickOffFlag",&UNK_0192108c,0,&UNK_01921094,0);
  uVar2 = func_0x019204a8(uVar2,&"haveRemakeTips",&UNK_0192109c,0,&UNK_019210a4,0);
  uVar2 = func_0x019210ac(uVar2,&"hangUpManagePlayer",&UNK_01921294,0,&UNK_0192129c,0);
  uVar2 = func_0x019204a8(uVar2,&"isMuteTakeOver",&UNK_019212b8,0,&UNK_019212c0,0);
  puVar3 = (undefined8 *)func_0x019206c0(uVar2,&"muteTakeOverTag",&UNK_019212dc,0,&UNK_019212e4,0);
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

