// ===== case823-ActorBuff @ 0173841c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case823-ActorBuff


void case823_ActorBuff(undefined8 param_1)

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
  func_0x019cd0c8(&uStack_40,&"ActorBuff",&uStack_50,0x736d101);
  uVar3 = func_0x019cc0d0(&uStack_40,&"idx",&UNK_019cc2b8,0,&UNK_019cc2c0,0);
  uVar3 = func_0x019cc2c8(uVar3,&"isEffectStart",&UNK_019cc4b0,0,&UNK_019cc4b8,0);
  uVar3 = func_0x019cc2c8(uVar3,&"triggerHitEvent",&UNK_019cc4d4,0,&UNK_019cc4dc,0);
  uVar3 = func_0x019cc2c8(uVar3,&"isStopUpdate",&UNK_019cc4e4,0,&UNK_019cc4ec,0);
  uVar3 = func_0x019cc2c8(uVar3,&"isPassiveEffect",&UNK_019cc4f4,0,&UNK_019cc4fc,0);
  uVar3 = func_0x019cc504(uVar3,&"objId",&UNK_019cc6ec,0,&UNK_019cc6f4,0);
  uVar3 = func_0x019cc504(uVar3,&"refCount",&UNK_019cc710,0,&UNK_019cc718,0);
  uVar3 = func_0x019cc0d0(uVar3,&"effectNum",&UNK_019cc734,0,&UNK_019cc73c,0);
  uVar3 = func_0x019cc0d0(uVar3,&"maxEffectNum",&UNK_019cc744,0,&UNK_019cc74c,0);
  uVar3 = func_0x019cc0d0(uVar3,&"maxStack",&UNK_019cc754,0,&UNK_019cc75c,0);
  uVar3 = func_0x019cc0d0(uVar3,&"resId",&UNK_019cc778,0,&UNK_019cc780,0);
  uVar3 = func_0x019cc0d0(uVar3,&"tagResId",&UNK_019cc79c,0,&UNK_019cc7a4,0);
  uVar3 = func_0x019cc0d0(uVar3,&"level",&UNK_019cc7c0,0,&UNK_019cc7c8,0);
  uVar3 = func_0x019cc7e4(uVar3,&"lifeTimeBase",&UNK_019cc9cc,0,&UNK_019cc9d4,0);
  uVar3 = func_0x019cc7e4(uVar3,&"cdTime",&UNK_019cc9dc,0,&UNK_019cc9e4,0);
  uVar3 = func_0x019cc7e4(uVar3,&"elapsedTimeLastChg",&UNK_019cca44,0,&UNK_019cca4c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"startTime",&UNK_019ccaac,0,&UNK_019ccab4,0);
  uVar3 = func_0x019cc7e4(uVar3,&"delayDeltaTime",&UNK_019ccb14,0,&UNK_019ccb1c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"intervalDeltaTime",&UNK_019ccb24,0,&UNK_019ccb2c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"effectInterval",&UNK_019ccb34,0,&UNK_019ccb3c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"elapsedTimeChgTime",&UNK_019ccb44,0,&UNK_019ccb4c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"lifeTime",&UNK_019ccbac,0,&UNK_019ccbb4,0);
  uVar3 = func_0x019cc7e4(uVar3,&"effectDelayTime",&UNK_019ccc14,0,&UNK_019ccc1c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"autoStackTime",&UNK_019ccc7c,0,&UNK_019ccc84,0);
  uVar3 = func_0x019cc0d0(uVar3,&"autoStackStep",&UNK_019ccc8c,0,&UNK_019ccc94,0);
  uVar3 = func_0x019cc7e4(uVar3,&"stackReduceTime",&UNK_019ccc9c,0,&UNK_019ccca4,0);
  uVar3 = func_0x019cc0d0(uVar3,&"stackReduceStep",&UNK_019cccac,0,&UNK_019cccb4,0);
  puVar4 = (undefined8 *)func_0x019cc7e4(uVar3,&"lastStackTime",&UNK_019cccbc,0,&UNK_019cccc4,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ccd24;
  func_0x0124ec90(*puVar4,&UNK_019cef28,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"flow");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"flow");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ccd2c;
  func_0x0124ec90(*puVar4,&UNK_019cf04c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"llResObject");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"llResObject");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar4 = (undefined8 *)func_0x019cc2c8(puVar4,&"bIgnorePlayFlow",&UNK_019ccd34,0,&UNK_019ccd3c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ccd44;
  func_0x0124ec90(*puVar4,&UNK_019cf170,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"triggerMagicField");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"triggerMagicField");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ccd4c;
  func_0x0124ec90(*puVar4,&UNK_019cf294,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"fectSyncE");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"fectSyncE");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ccd54;
  func_0x0124ec90(*puVar4,&UNK_019cf3b8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skillUseObj");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skillUseObj");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019cc2c8(puVar4,&"SLHeroPool",&UNK_019ccd5c,0,&UNK_019ccd64,0);
  uVar3 = func_0x019cc2c8(uVar3,&"pportType",&UNK_019ccd80,0,&UNK_019ccd88,0);
  uVar3 = func_0x019cc2c8(uVar3,&"calWithAuxAttacker",&UNK_019ccd90,0,&UNK_019ccd98,0);
  uVar3 = func_0x019cc2c8(uVar3,&"dispatchDmgWithAuxAttacker",&UNK_019ccdb4,0,&UNK_019ccdbc,0);
  uVar3 = func_0x019cc2c8(uVar3,&"ct",&UNK_019ccdc4,0,&UNK_019ccdcc,0);
  uVar3 = func_0x019cc2c8(uVar3,&"AIEffectConfig",&UNK_019ccdd4,0,&UNK_019ccddc,0);
  uVar3 = func_0x019cc0d0(uVar3,&"fectID",&UNK_019ccde4,0,&UNK_019ccdec,0);
  uVar3 = func_0x019cc0d0(uVar3,&"APRatio1",&UNK_019ccdf4,0,&UNK_019ccdfc,0);
  uVar3 = func_0x019cc2c8(uVar3,&"actor1",&UNK_019cce04,0,&UNK_019cce0c,0);
  uVar3 = func_0x019cc0d0(uVar3,&"io1",&UNK_019cce14,0,&UNK_019cce1c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"fsRemain",&UNK_019cce24,0,&UNK_019cce2c,0);
  uVar3 = func_0x019cc7e4(uVar3,&"flowSpeed",&UNK_019cce34,0,&UNK_019cce3c,0);
  uVar3 = func_0x019cc2c8(uVar3,&"reRatio2",&UNK_019cce9c,0,&UNK_019ccea4,0);
  uVar3 = func_0x019cceac(uVar3,&"gResObject",&UNK_019cd094,0,0,0);
  uVar3 = func_0x019cceac(uVar3,&"ctConfigList",&UNK_019cd09c,0,0,0);
  puVar4 = (undefined8 *)func_0x019cc2c8(uVar3,&"seAttrResObject",&UNK_019cd0a4,0,&UNK_019cd0ac,0);
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

