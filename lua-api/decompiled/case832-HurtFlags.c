// ===== case832-HurtFlags @ 0173ac2c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case832-HurtFlags


void case832_HurtFlags(undefined8 param_1)

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
  func_0x019d73fc(&uStack_40,&"HurtFlags",&uStack_50,0x736d101);
  uVar3 = func_0x019d605c(&uStack_40,&"useSkillPreCrit",&UNK_019d6244,0,&UNK_019d624c,0);
  uVar3 = func_0x019d605c(uVar3,&"ignoreHurtFlash",&UNK_019d6254,0,&UNK_019d625c,0);
  uVar3 = func_0x019d6264(uVar3,&"hurtFlashIndex",&UNK_019d644c,0,&UNK_019d6454,0);
  uVar3 = func_0x019d605c(uVar3,&"showInMiniMap",&UNK_019d645c,0,&UNK_019d6464,0);
  uVar3 = func_0x019d605c(uVar3,&"showSkinAudio",&UNK_019d646c,0,&UNK_019d6474,0);
  uVar3 = func_0x019d605c(uVar3,&"audioDisMod",&UNK_019d647c,0,&UNK_019d6484,0);
  uVar3 = func_0x019d605c(uVar3,&"isForceShowVfx",&UNK_019d648c,0,&UNK_019d6494,0);
  uVar3 = func_0x019d605c(uVar3,&"showInFog",&UNK_019d649c,0,&UNK_019d64a4,0);
  uVar3 = func_0x019d605c(uVar3,&"hitOnEdge",&UNK_019d64ac,0,&UNK_019d64b4,0);
  uVar3 = func_0x019d605c(uVar3,&"attachParent",&UNK_019d64bc,0,&UNK_019d64c4,0);
  uVar3 = func_0x019d605c(uVar3,&"applyAttackEffect",&UNK_019d64cc,0,&UNK_019d64d4,0);
  uVar3 = func_0x019d605c(uVar3,&"isHurtSourceSetCaller",&UNK_019d64dc,0,&UNK_019d64e4,0);
  uVar3 = func_0x019d605c(uVar3,&"ignoreParentRotation",&UNK_019d64ec,0,&UNK_019d64f4,0);
  uVar3 = func_0x019d605c(uVar3,&"isSecondaryVfx",&UNK_019d64fc,0,&UNK_019d6504,0);
  uVar3 = func_0x019d650c(uVar3,&"secondaryVfxAlpha",&UNK_019d66f4,0,&UNK_019d66fc,0);
  uVar3 = func_0x019d605c(uVar3,&"getCampEffect",&UNK_019d6704,0,&UNK_019d670c,0);
  uVar3 = func_0x019d650c(uVar3,&"lifeTime",&UNK_019d6714,0,&UNK_019d671c,0);
  uVar3 = func_0x019d6724(uVar3,&"eventName",&UNK_019d690c,0,0,0);
  uVar3 = func_0x019d6724(uVar3,&"critEventName",&UNK_019d6914,0,0,0);
  uVar3 = func_0x019d605c(uVar3,&"audioKeepAlive",&UNK_019d691c,0,&UNK_019d6924,0);
  uVar3 = func_0x019d605c(uVar3,&"isAudioSwitchMaterial",&UNK_019d692c,0,&UNK_019d6934,0);
  uVar3 = func_0x019d693c(uVar3,&"audioPlayTarget",&UNK_019d6b24,0,&UNK_019d6b2c,0);
  puVar4 = (undefined8 *)func_0x019d6b34(uVar3,&"audioPlayTargetActor",&UNK_019d6d1c,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019d6d24;
  func_0x0124ec90(*puVar4,&UNK_019d8528,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"audioList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"audioList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019d6d2c(puVar4,&"chromaLuminanceMul",&UNK_019d6f14,0,&UNK_019d6f1c,0);
  puVar4 = (undefined8 *)func_0x019d6724(uVar3,&"miniMapVfxPath",&UNK_019d6f24,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019d6f2c;
  func_0x0124ec90(*puVar4,&UNK_019d8898,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"extraFlyTextList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"extraFlyTextList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019d693c(puVar4,&"faceType",&UNK_019d6f34,0,&UNK_019d6f3c,0);
  uVar3 = func_0x019d605c(uVar3,&"useSpecialTowerBuff",&UNK_019d6f44,0,&UNK_019d6f4c,0);
  uVar3 = func_0x019d6b34(uVar3,&"auxAttacker",&UNK_019d6f54,0,0,0);
  uVar3 = func_0x019d605c(uVar3,&"calWithAuxAttacker",&UNK_019d6f5c,0,&UNK_019d6f64,0);
  uVar3 = func_0x019d605c(uVar3,&"dispatchDmgWithAuxAttacker",&UNK_019d6f6c,0,&UNK_019d6f74,0);
  uVar3 = func_0x019d605c(uVar3,&"useExecuteSoldierRule",&UNK_019d6f7c,0,&UNK_019d6f84,0);
  uVar3 = func_0x019d6724(uVar3,&"flowName",&UNK_019d6f8c,0,0,0);
  puVar4 = (undefined8 *)func_0x019d693c(uVar3,&"actionId",&UNK_019d6f94,0,&UNK_019d6f9c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019d6fa4;
  func_0x0124ec90(*puVar4,&UNK_019d89bc,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skinSrc");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skinSrc");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019d605c(puVar4,&"hurtTypeIndex",&UNK_019d6fac,0,&UNK_019d6fb4,0);
  uVar3 = func_0x019d6fbc(uVar3,&"skinSrcPrefabReplaceObjId",&UNK_019d71a4,0,&UNK_019d71ac,0);
  uVar3 = func_0x019d71b4(uVar3,&"damageCenter",&UNK_019d739c,0,&UNK_019d73b0,0);
  uVar3 = func_0x019d605c(uVar3,&"beBlockedFlag",&UNK_019d73cc,0,&UNK_019d73d4,0);
  uVar3 = func_0x019d605c(uVar3,&"isMultiHurt",&UNK_019d73dc,0,&UNK_019d73e4,0);
  puVar4 = (undefined8 *)func_0x019d605c(uVar3,&"useParentAttackHandler",&UNK_019d73ec,0,&UNK_019d73f4,0);
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

