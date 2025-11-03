// ===== case37-FEBattleContext @ 0169284c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case37-FEBattleContext


void case37_FEBattleContext(undefined8 param_1)

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
  func_0x0176358c(&uStack_40,&"FEBattleContext",&uStack_50,0x736d101);
  uVar3 = func_0x01762a50(&uStack_40,&"roomInfoSerilizeUsedLength",&UNK_01762c38,0,&UNK_01762c44,0);
  uVar3 = func_0x01762c50(uVar3,&"isLogicThreadEnabled",&UNK_01762e38,0,&UNK_01762e44,0);
  uVar3 = func_0x01762c50(uVar3,&"useDataSyncObject",&UNK_01762e50,0,&UNK_01762e5c,0);
  uVar3 = func_0x01762c50(uVar3,&"useLogicNetwork",&UNK_01762e68,0,&UNK_01762e74,0);
  uVar3 = func_0x01762c50(uVar3,&"isEnableFrameDump",&UNK_01762e80,0,&UNK_01762e8c,0);
  uVar3 = func_0x01762c50(uVar3,&"isReEnterRoom",&UNK_01762e98,0,&UNK_01762ea4,0);
  uVar3 = func_0x01762c50(uVar3,&"isMemoryLogOpen",&UNK_01762eb0,0,&UNK_01762ebc,0);
  uVar3 = func_0x01762a50(uVar3,&"visiFocusHeroId",&UNK_01762ec8,0,&UNK_01762ed4,0);
  uVar3 = func_0x01762a50(uVar3,&"session",&UNK_01762ee0,0,&UNK_01762eec,0);
  uVar3 = func_0x01762a50(uVar3,&"inBattleTutorialID",&UNK_01762ef8,0,&UNK_01762f04,0);
  uVar3 = func_0x01762f10(uVar3,&"visiFocusRoleId",&UNK_017630f8,0,&UNK_01763104,0);
  uVar3 = func_0x01762f10(uVar3,&"myGuid",&UNK_01763110,0,&UNK_0176311c,0);
  puVar4 = (undefined8 *)func_0x01762a50(uVar3,&"frameRateType",&UNK_01763128,0,&UNK_01763134,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01763140;
  func_0x0124ec90(*puVar4,&UNK_01763fb0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"roomInfo");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"roomInfo");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01762a50(puVar4,&"visiFocusCamp",&UNK_0176314c,0,&UNK_01763158,0);
  uVar3 = func_0x01762a50(uVar3,&"visiMyCamp",&UNK_01763164,0,&UNK_01763170,0);
  uVar3 = func_0x01762f10(uVar3,&"agentGid",&UNK_0176317c,0,&UNK_01763188,0);
  uVar3 = func_0x01763194(uVar3,&"memoryRecoveryMode",&UNK_0176337c,0,&UNK_01763388,0);
  uVar3 = func_0x01763194(uVar3,&"localMemoryRecoveryType",&UNK_01763394,0,&UNK_017633a0,0);
  uVar3 = func_0x01762c50(uVar3,&"repalyMemoryRecovery",&UNK_017633ac,0,&UNK_017633b8,0);
  uVar3 = func_0x01762c50(uVar3,&"isDisableLiteFowCut",&UNK_017633c4,0,&UNK_017633d0,0);
  uVar3 = func_0x01762a50(uVar3,&"tutorialExtraHeroUsedLength",&UNK_017633dc,0,&UNK_017633e8,0);
  uVar3 = func_0x01762c50(uVar3,&"isForceOffMemoryRecovery",&UNK_017633f4,0,&UNK_01763400,0);
  uVar3 = func_0x01762c50(uVar3,&"isExpandFEMsgQueueBuff",&UNK_0176340c,0,&UNK_01763418,0);
  uVar3 = func_0x01762a50(uVar3,&"FEMsgQueueBuffSize",&UNK_01763424,0,&UNK_01763430,0);
  uVar3 = func_0x01762c50(uVar3,&"skillNonUpdateParam",&UNK_0176343c,0,&UNK_01763448,0);
  uVar3 = func_0x01762c50(uVar3,&"isOfflineBattle",&UNK_01763454,0,&UNK_01763460,0);
  uVar3 = func_0x01762c50(uVar3,&"forceOpenMemLog",&UNK_0176346c,0,&UNK_01763478,0);
  uVar3 = func_0x01762c50(uVar3,&"isLowMemoryDevice",&UNK_01763484,0,&UNK_01763490,0);
  uVar3 = func_0x01762c50(uVar3,&"releaseTDBMemOnLMDevice",&UNK_0176349c,0,&UNK_017634a8,0);
  uVar3 = func_0x01762c50(uVar3,&"releaseFrameMemOnLMDevice",&UNK_017634b4,0,&UNK_017634c0,0);
  uVar3 = func_0x01762c50(uVar3,&"enableMemoryStatTag",&UNK_017634cc,0,&UNK_017634d8,0);
  uVar3 = func_0x01762c50(uVar3,&"reserveAllFrameMemory",&UNK_017634e4,0,&UNK_017634f0,0);
  uVar3 = func_0x01762c50(uVar3,&"enableFEMemoryMmap",&UNK_017634fc,0,&UNK_01763508,0);
  uVar3 = func_0x01762a50(uVar3,&"useACK",&UNK_01763514,0,&UNK_01763520,0);
  uVar3 = func_0x01762a50(uVar3,&"expectSec",&UNK_0176352c,0,&UNK_01763538,0);
  uVar3 = func_0x01762a50(uVar3,&"missIntervalShort",&UNK_01763544,0,&UNK_01763550,0);
  uVar3 = func_0x01762a50(uVar3,&"missIntervalMiddle",&UNK_0176355c,0,&UNK_01763568,0);
  puVar4 = (undefined8 *)func_0x01762a50(uVar3,&"missIntervalLong",&UNK_01763574,0,&UNK_01763580,0);
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

