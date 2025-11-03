// ===== case731-ChampionResObject @ 01725820 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case731-ChampionResObject


void case731_ChampionResObject(undefined8 param_1)

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
  func_0x0197aab0(&uStack_40,&"ChampionResObject",&uStack_50,0x736d101);
  uVar3 = func_0x0197a0a0(&uStack_40,&"defaultUnlock",&UNK_0197a288,0,&UNK_0197a290,0);
  uVar3 = func_0x0197a0a0(uVar3,&"shared",&UNK_0197a298,0,&UNK_0197a2a0,0);
  uVar3 = func_0x0197a0a0(uVar3,&"aiSelactable",&UNK_0197a2a8,0,&UNK_0197a2b0,0);
  uVar3 = func_0x0197a0a0(uVar3,&"disableLiteFlowCut",&UNK_0197a2b8,0,&UNK_0197a2c0,0);
  uVar3 = func_0x0197a0a0(uVar3,&"bVariantAttackAssistEx",&UNK_0197a2c8,0,&UNK_0197a2d0,0);
  uVar3 = func_0x0197a2d8(uVar3,&"resourceRegenF",&UNK_0197a4c0,0,&UNK_0197a4c8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"turningSpeedF",&UNK_0197a4d0,0,&UNK_0197a4d8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"collisionBoxRadiusF",&UNK_0197a4e0,0,&UNK_0197a4e8,0);
  uVar3 = func_0x0197a4f0(uVar3,&"skillLevelUpRule",&UNK_0197a6d8,0,&UNK_0197a6e0,0);
  uVar3 = func_0x0197a2d8(uVar3,&"vfxScalingF",&UNK_0197a6e8,0,&UNK_0197a6f0,0);
  uVar3 = func_0x0197a4f0(uVar3,&"unitScaling",&UNK_0197a6f8,0,&UNK_0197a700,0);
  uVar3 = func_0x0197a4f0(uVar3,&"gamePointMultiple",&UNK_0197a708,0,&UNK_0197a710,0);
  uVar3 = func_0x0197a2d8(uVar3,&"resourceMaxValueF",&UNK_0197a718,0,&UNK_0197a720,0);
  uVar3 = func_0x0197a2d8(uVar3,&"bodySizeF",&UNK_0197a728,0,&UNK_0197a730,0);
  uVar3 = func_0x0197a738(uVar3,&"vfxOffset",&UNK_0197a920,0,&UNK_0197a934,0);
  uVar3 = func_0x0197a2d8(uVar3,&"assistUseDuration",&UNK_0197a950,0,&UNK_0197a958,0);
  uVar3 = func_0x0197a4f0(uVar3,&"attackType",&UNK_0197a960,0,&UNK_0197a968,0);
  uVar3 = func_0x0197a4f0(uVar3,&"championType",&UNK_0197a970,0,&UNK_0197a978,0);
  uVar3 = func_0x0197a4f0(uVar3,&"resourceType",&UNK_0197a980,0,&UNK_0197a988,0);
  uVar3 = func_0x0197a4f0(uVar3,&"championFlag",&UNK_0197a990,0,&UNK_0197a998,0);
  uVar3 = func_0x0197a2d8(uVar3,&"rgeChangeAvailabilitySyncE",&UNK_0197a9a0,0,&UNK_0197a9a8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"ySyncE",&UNK_0197a9b0,0,&UNK_0197a9b8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"matchModleShieldingDoneReduced",&UNK_0197a9c0,0,&UNK_0197a9c8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"nForgeChangeAvailabilitySyncE",&UNK_0197a9d0,0,&UNK_0197a9d8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"percentageBeDamageFix",&UNK_0197a9e0,0,&UNK_0197a9e8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"aSync35IFlowActionForgeGetCurrentLayerSyncE",&UNK_0197a9f0,0,&UNK_0197a9f8,0);
  uVar3 = func_0x0197a2d8(uVar3,&"tionForgeGetCurrentLayerSyncE",&UNK_0197aa00,0,&UNK_0197aa08,0);
  uVar3 = func_0x0197a2d8(uVar3,&"rSyncE",&UNK_0197aa10,0,&UNK_0197aa18,0);
  uVar3 = func_0x0197a2d8(uVar3,&"Logic34FlowActionForgeGetCurrentLayerSyncE",&UNK_0197aa20,0,&UNK_0197aa28,0);
  uVar3 = func_0x0197a2d8(uVar3,&"geGetCurrentLayerSyncE",&UNK_0197aa30,0,&UNK_0197aa38,0);
  uVar3 = func_0x0197a2d8(uVar3,&"E",&UNK_0197aa40,0,&UNK_0197aa48,0);
  uVar3 = func_0x0197a2d8(uVar3,&"lowActionForgeGetEquipmentSavingSyncE",&UNK_0197aa50,0,&UNK_0197aa58,0);
  uVar3 = func_0x0197a2d8(uVar3,&"mvpAddScoreValue",&UNK_0197aa60,0,&UNK_0197aa68,0);
  uVar3 = func_0x0197a2d8(uVar3,&"ffaAddScoreValue",&UNK_0197aa70,0,&UNK_0197aa78,0);
  puVar4 = (undefined8 *)func_0x0197a0a0(uVar3,&"npcCtrl",&UNK_0197aa80,0,&UNK_0197aa88,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0197aa90;
  func_0x0124ec90(*puVar4,&UNK_0197b798,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"aiFilePath");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"aiFilePath");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar4 = (undefined8 *)func_0x0197a0a0(puVar4,&"isHadDisplayScorePanelBuff",&UNK_0197aa98,0,&UNK_0197aaa0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0197aaa8;
  func_0x0124ec90(*puVar4,&UNK_0197b8bc,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"displayScorePanelBuff");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"displayScorePanelBuff");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
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

