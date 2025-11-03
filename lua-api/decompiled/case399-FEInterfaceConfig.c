// ===== case399-FEInterfaceConfig @ 016df6e8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case399_FEInterfaceConfig


void case399_FEInterfaceConfig(undefined8 param_1)

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
  func_0x01848e8c(&uStack_30,&"FEInterfaceConfig",&uStack_40,0x736d101);
  uVar2 = func_0x0184817c(&uStack_30,&"isRiotLogEnabled",&UNK_01848364,0,&UNK_0184836c,0);
  uVar2 = func_0x0184817c(uVar2,&"isVisiAssetsPrepared",&UNK_01848374,0,&UNK_0184837c,0);
  uVar2 = func_0x0184817c(uVar2,&"isLogicAssetPrepared",&UNK_01848384,0,&UNK_0184838c,0);
  uVar2 = func_0x0184817c(uVar2,&"logicUseStringCache",&UNK_01848394,0,&UNK_0184839c,0);
  uVar2 = func_0x0184817c(uVar2,&"useStringCacheMode",&UNK_018483a4,0,&UNK_018483ac,0);
  uVar2 = func_0x0184817c(uVar2,&"enableSpecialLog",&UNK_018483b4,0,&UNK_018483bc,0);
  uVar2 = func_0x0184817c(uVar2,&"enableUseBinaryJson",&UNK_018483c4,0,&UNK_018483cc,0);
  uVar2 = func_0x0184817c(uVar2,&"isAssetConfigsReady",&UNK_018483d4,0,&UNK_018483dc,0);
  uVar2 = func_0x0184817c(uVar2,&"hasException",&UNK_018483e4,0,&UNK_018483ec,0);
  uVar2 = func_0x0184817c(uVar2,&"isSkillEditorMode",&UNK_018483f4,0,&UNK_018483fc,0);
  uVar2 = func_0x0184817c(uVar2,&"isSkillEditorOpenMemReccover",&UNK_01848404,0,&UNK_0184840c,0);
  uVar2 = func_0x0184817c(uVar2,&"gmEnableBuildingRefresh",&UNK_01848414,0,&UNK_0184841c,0);
  uVar2 = func_0x0184817c(uVar2,&"gmDisableCDLockingProtect",&UNK_01848424,0,&UNK_0184842c,0);
  uVar2 = func_0x0184817c(uVar2,&"gmEnbleFELoadCfgFailed",&UNK_01848434,0,&UNK_0184843c,0);
  uVar2 = func_0x01848444(uVar2,&"gmOpenMultiCamp",&UNK_0184862c,0,&UNK_01848634,0);
  uVar2 = func_0x0184817c(uVar2,&"useLogicNetwork",&UNK_0184863c,0,&UNK_01848644,0);
  uVar2 = func_0x0184817c(uVar2,&"isLogicThreadEnabled",&UNK_0184864c,0,&UNK_01848654,0);
  uVar2 = func_0x0184817c(uVar2,&"useDataSyncObject",&UNK_0184865c,0,&UNK_01848664,0);
  uVar2 = func_0x0184817c(uVar2,&"isTargetSelectionDebugEnabled",&UNK_0184866c,0,&UNK_01848674,0);
  uVar2 = func_0x0184817c(uVar2,&"isIgnoreActionTargetRefreshPos",&UNK_0184867c,0,&UNK_01848684,0);
  uVar2 = func_0x0184817c(uVar2,&"isTestingFlowToggle",&UNK_0184868c,0,&UNK_01848694,0);
  uVar2 = func_0x0184817c(uVar2,&"enableFrameDump",&UNK_0184869c,0,&UNK_018486a4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableFullDump",&UNK_018486ac,0,&UNK_018486b4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableZeroDump",&UNK_018486bc,0,&UNK_018486c4,0);
  uVar2 = func_0x0184817c(uVar2,&"useQuickStartBattle",&UNK_018486cc,0,&UNK_018486d4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableFogCut",&UNK_018486dc,0,&UNK_018486e4,0);
  uVar2 = func_0x018486ec(uVar2,&"visiFocusRoleId",&UNK_018488d4,0,&UNK_018488dc,0);
  uVar2 = func_0x018488e4(uVar2,&"logicPersistentDataPathDir",&UNK_01848acc,0,&UNK_01848ad4,0);
  uVar2 = func_0x018488e4(uVar2,&"logicPersistentDataResPathDir",&UNK_01848adc,0,&UNK_01848ae4,0);
  uVar2 = func_0x018488e4(uVar2,&"logFileDir",&UNK_01848aec,0,&UNK_01848af4,0);
  uVar2 = func_0x018488e4(uVar2,&"rootDir",&UNK_01848afc,0,&UNK_01848b04,0);
  uVar2 = func_0x018488e4(uVar2,&"logicResRootDir",&UNK_01848b0c,0,&UNK_01848b14,0);
  uVar2 = func_0x018488e4(uVar2,&"visiResRootDir",&UNK_01848b1c,0,&UNK_01848b24,0);
  uVar2 = func_0x018488e4(uVar2,&"logicResPufferRootDir",&UNK_01848b2c,0,&UNK_01848b34,0);
  uVar2 = func_0x018488e4(uVar2,&"visiResPufferRootDir",&UNK_01848b3c,0,&UNK_01848b44,0);
  uVar2 = func_0x01848444(uVar2,&"roundEndReason",&UNK_01848b4c,0,&UNK_01848b54,0);
  uVar2 = func_0x01848444(uVar2,&"chRemakeCamp",&UNK_01848b5c,0,&UNK_01848b64,0);
  uVar2 = func_0x018486ec(uVar2,&"chRemakeTeamId",&UNK_01848b6c,0,&UNK_01848b74,0);
  uVar2 = func_0x01848444(uVar2,&"winCamp",&UNK_01848b7c,0,&UNK_01848b84,0);
  uVar2 = func_0x01848444(uVar2,&"runtimeEnvType",&UNK_01848b8c,0,&UNK_01848b94,0);
  uVar2 = func_0x0184817c(uVar2,&"openAddtiveEncrypt",&UNK_01848b9c,0,&UNK_01848ba4,0);
  uVar2 = func_0x0184817c(uVar2,&"openAddtiveHash",&UNK_01848bac,0,&UNK_01848bb4,0);
  uVar2 = func_0x01848444(uVar2,&"curFEContext",&UNK_01848bbc,0,&UNK_01848bc4,0);
  uVar2 = func_0x018488e4(uVar2,&"svrInfo",&UNK_01848bcc,0,&UNK_01848bd4,0);
  uVar2 = func_0x018488e4(uVar2,&"effectiveVersion",&UNK_01848bdc,0,&UNK_01848be4,0);
  uVar2 = func_0x018488e4(uVar2,&"logicAppVersion",&UNK_01848bec,0,&UNK_01848bf4,0);
  uVar2 = func_0x018488e4(uVar2,&"logicResVersion",&UNK_01848bfc,0,&UNK_01848c04,0);
  uVar2 = func_0x018488e4(uVar2,&"emulatorName",&UNK_01848c0c,0,&UNK_01848c14,0);
  uVar2 = func_0x0184817c(uVar2,&"isOldResVersionMode",&UNK_01848c1c,0,&UNK_01848c24,0);
  uVar2 = func_0x0184817c(uVar2,&"isWaitingReleaseOldRes",&UNK_01848c2c,0,&UNK_01848c34,0);
  uVar2 = func_0x01848444(uVar2,&"logicResLoadMode",&UNK_01848c3c,0,&UNK_01848c44,0);
  uVar2 = func_0x018486ec(uVar2,&"pageHoneyPotPtr",&UNK_01848c4c,0,&UNK_01848c54,0);
  uVar2 = func_0x01848444(uVar2,&"honeyPotInsertBattleType",&UNK_01848c5c,0,&UNK_01848c64,0);
  uVar2 = func_0x0184817c(uVar2,&"honeyPotClearFlag",&UNK_01848c6c,0,&UNK_01848c74,0);
  uVar2 = func_0x01848444(uVar2,&"InsertHoneyPotPtrTeam",&UNK_01848c7c,0,&UNK_01848c84,0);
  uVar2 = func_0x01848444(uVar2,&"mobileGrade",&UNK_01848c8c,0,&UNK_01848c94,0);
  uVar2 = func_0x01848444(uVar2,&"vpnInfo",&UNK_01848c9c,0,&UNK_01848ca4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableTDBAllocInfo",&UNK_01848cac,0,&UNK_01848cb4,0);
  uVar2 = func_0x01848444(uVar2,&"serviceMode",&UNK_01848cbc,0,&UNK_01848cc4,0);
  uVar2 = func_0x0184817c(uVar2,&"forceAiSystem",&UNK_01848ccc,0,&UNK_01848cd4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableAiService",&UNK_01848cdc,0,&UNK_01848ce4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableGameStateMonitor",&UNK_01848cec,0,&UNK_01848cf4,0);
  uVar2 = func_0x0184817c(uVar2,&"useNcnnForJungle",&UNK_01848cfc,0,&UNK_01848d04,0);
  uVar2 = func_0x0184817c(uVar2,&"slTrain",&UNK_01848d0c,0,&UNK_01848d14,0);
  uVar2 = func_0x0184817c(uVar2,&"enableGameSafeMonitor",&UNK_01848d1c,0,&UNK_01848d24,0);
  uVar2 = func_0x0184817c(uVar2,&"enableGameActionMonitor",&UNK_01848d2c,0,&UNK_01848d34,0);
  uVar2 = func_0x0184817c(uVar2,&"enableGameArtistMonitor",&UNK_01848d3c,0,&UNK_01848d44,0);
  uVar2 = func_0x0184817c(uVar2,&"enableDeathDetectMonitor",&UNK_01848d4c,0,&UNK_01848d54,0);
  uVar2 = func_0x0184817c(uVar2,&"pc28FEBattleDcPlayerEquipOperateE",&UNK_01848d5c,0,&UNK_01848d64,0);
  uVar2 = func_0x0184817c(uVar2,&"rateE",&UNK_01848d6c,0,&UNK_01848d74,0);
  uVar2 = func_0x0184817c(uVar2,&"enableHeroAbnormalMonitor",&UNK_01848d7c,0,&UNK_01848d84,0);
  uVar2 = func_0x0184817c(uVar2,&"enableEndGameAbilityMonitor",&UNK_01848d8c,0,&UNK_01848d94,0);
  uVar2 = func_0x0184817c(uVar2,&"enableSLGameActionMonitor",&UNK_01848d9c,0,&UNK_01848da4,0);
  uVar2 = func_0x0184817c(uVar2,&"c28FEBattleDcPlayerSecurityDataE",&UNK_01848dac,0,&UNK_01848db4,0);
  uVar2 = func_0x0184817c(uVar2,&"curityDataE",&UNK_01848dbc,0,&UNK_01848dc4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableCCSGameActionMonitor",&UNK_01848dcc,0,&UNK_01848dd4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableRuntimeJsonMode",&UNK_01848ddc,0,&UNK_01848de4,0);
  uVar2 = func_0x0184817c(uVar2,&"enableDataMiningStressTest",&UNK_01848dec,0,&UNK_01848df4,0);
  uVar2 = func_0x0184817c(uVar2,&"bErrorRLPredict",&UNK_01848dfc,0,&UNK_01848e04,0);
  uVar2 = func_0x0184817c(uVar2,&"bErrorSLPredict",&UNK_01848e0c,0,&UNK_01848e14,0);
  uVar2 = func_0x0184817c(uVar2,&"bEnableFETraceLog",&UNK_01848e1c,0,&UNK_01848e24,0);
  uVar2 = func_0x0184817c(uVar2,&"isChasingFrame",&UNK_01848e2c,0,&UNK_01848e34,0);
  uVar2 = func_0x0184817c(uVar2,&"isSpeedupWithMemoryRecovery",&UNK_01848e3c,0,&UNK_01848e44,0);
  uVar2 = func_0x0184817c(uVar2,&"enableCoachAI",&UNK_01848e4c,0,&UNK_01848e54,0);
  uVar2 = func_0x0184817c(uVar2,&"enableSkillLogVerbose",&UNK_01848e5c,0,&UNK_01848e64,0);
  uVar2 = func_0x0184817c(uVar2,&"enableCherryAddMainScene",&UNK_01848e6c,0,&UNK_01848e74,0);
  puVar3 = (undefined8 *)func_0x0184817c(uVar2,&"loadBaseHeroFlag",&UNK_01848e7c,0,&UNK_01848e84,0);
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

