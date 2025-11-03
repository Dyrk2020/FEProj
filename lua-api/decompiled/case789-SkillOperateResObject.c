// ===== case789-SkillOperateResObject @ 01731af8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case789-SkillOperateResObject


void case789_SkillOperateResObject(undefined8 param_1)

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
  func_0x019afdac(&uStack_40,&"SkillOperateResObject",&uStack_50,0x736d101);
  uVar3 = func_0x019af754(&uStack_40,&"iControlPatternTemplateID0",&UNK_019af93c,0,&UNK_019af944,0);
  uVar3 = func_0x019af754(uVar3,&"iControlPatternTemplateID1",&UNK_019af94c,0,&UNK_019af954,0);
  uVar3 = func_0x019af754(uVar3,&"iUXPatternID",&UNK_019af95c,0,&UNK_019af964,0);
  uVar3 = func_0x019af754(uVar3,&"iUXCameraID",&UNK_019af96c,0,&UNK_019af974,0);
  uVar3 = func_0x019af754(uVar3,&"iSkillType",&UNK_019af97c,0,&UNK_019af984,0);
  uVar3 = func_0x019af754(uVar3,&"iCanAutoAttack",&UNK_019af98c,0,&UNK_019af994,0);
  uVar3 = func_0x019af754(uVar3,&"iInterruptFollow",&UNK_019af99c,0,&UNK_019af9a4,0);
  uVar3 = func_0x019af754(uVar3,&"iCanQuickCastOnNoTarget",&UNK_019af9ac,0,&UNK_019af9b4,0);
  uVar3 = func_0x019af754(uVar3,&"iNoForwardChangeBeforeCast",&UNK_019af9bc,0,&UNK_019af9c4,0);
  uVar3 = func_0x019af754(uVar3,&"iCancelDisable",&UNK_019af9cc,0,&UNK_019af9d4,0);
  uVar3 = func_0x019af754(uVar3,&"iInQueueLifeSpan",&UNK_019af9dc,0,&UNK_019af9e4,0);
  uVar3 = func_0x019af754(uVar3,&"iCooldownBufferLifespan",&UNK_019af9ec,0,&UNK_019af9f4,0);
  uVar3 = func_0x019af754(uVar3,&"iButtonTemplateID1",&UNK_019af9fc,0,&UNK_019afa04,0);
  puVar4 = (undefined8 *)func_0x019af754(uVar3,&"iFPTemplateID1",&UNK_019afa0c,0,&UNK_019afa14,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019afa1c;
  func_0x0124ec90(*puVar4,&UNK_019b0390,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"buffFilter");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"buffFilter");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019afa24;
  func_0x0124ec90(*puVar4,&UNK_019b04b4,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"buffTypeList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"buffTypeList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019afa2c;
  func_0x0124ec90(*puVar4,&UNK_019b05d8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"summonMonster");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"summonMonster");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019af754(puVar4,&"iMaxBufferRange",&UNK_019afa34,0,&UNK_019afa3c,0);
  uVar3 = func_0x019af754(uVar3,&"iSkillPrioritySearchRange",&UNK_019afa44,0,&UNK_019afa4c,0);
  uVar3 = func_0x019af754(uVar3,&"iAllowInVisibleTarget",&UNK_019afa54,0,&UNK_019afa5c,0);
  uVar3 = func_0x019af754(uVar3,&"iDoNotSyncTarget",&UNK_019afa64,0,&UNK_019afa6c,0);
  uVar3 = func_0x019af754(uVar3,&"iEnalbeFPOutOfRangeCancel",&UNK_019afa74,0,&UNK_019afa7c,0);
  uVar3 = func_0x019af754(uVar3,&"iEnableJoystickWhenCanNotCast",&UNK_019afa84,0,&UNK_019afa8c,0);
  uVar3 = func_0x019af754(uVar3,&"iDisableTips",&UNK_019afa94,0,&UNK_019afa9c,0);
  uVar3 = func_0x019af754(uVar3,&"iTargetPositionCircleRadius",&UNK_019afaa4,0,&UNK_019afaac,0);
  uVar3 = func_0x019af754(uVar3,&"iReadyQueueTargetFollowDistance",&UNK_019afab4,0,&UNK_019afabc,0);
  uVar3 = func_0x019af754(uVar3,&"combatType",&UNK_019afac4,0,&UNK_019afacc,0);
  uVar3 = func_0x019afad4(uVar3,&"bChargeSkillIgnoreAbility",&UNK_019afcbc,0,&UNK_019afcc4,0);
  uVar3 = func_0x019af754(uVar3,&"farTargetType",&UNK_019afccc,0,&UNK_019afcd4,0);
  uVar3 = func_0x019af754(uVar3,&"forceTargetType",&UNK_019afcdc,0,&UNK_019afce4,0);
  uVar3 = func_0x019af754(uVar3,&"controlActorSelectorType",&UNK_019afcec,0,&UNK_019afcf4,0);
  uVar3 = func_0x019afad4(uVar3,&"bIgnoreTargetTooClose",&UNK_019afcfc,0,&UNK_019afd04,0);
  uVar3 = func_0x019af754(uVar3,&"skillForwardType",&UNK_019afd0c,0,&UNK_019afd14,0);
  uVar3 = func_0x019afad4(uVar3,&"bMoveJoystickCastSkill",&UNK_019afd1c,0,&UNK_019afd24,0);
  uVar3 = func_0x019af754(uVar3,&"buttonCastSkillType",&UNK_019afd2c,0,&UNK_019afd34,0);
  uVar3 = func_0x019afad4(uVar3,&"bIsCastHidingTapSkill",&UNK_019afd3c,0,&UNK_019afd44,0);
  uVar3 = func_0x019afad4(uVar3,&"bIsForceContainsSoilder",&UNK_019afd4c,0,&UNK_019afd54,0);
  uVar3 = func_0x019afad4(uVar3,&"bIsCancelActionIgnoreAutoAttack",&UNK_019afd5c,0,&UNK_019afd64,0);
  uVar3 = func_0x019afad4(uVar3,&"bIsDirectionalNormalSkill",&UNK_019afd6c,0,&UNK_019afd74,0);
  uVar3 = func_0x019afad4(uVar3,&"bTapCastRefreshPos",&UNK_019afd7c,0,&UNK_019afd84,0);
  uVar3 = func_0x019af754(uVar3,&"queueUID",&UNK_019afd8c,0,&UNK_019afd94,0);
  puVar4 = (undefined8 *)func_0x019afad4(uVar3,&"isOpenSelectSelf",&UNK_019afd9c,0,&UNK_019afda4,0);
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

