// ===== case773-BulletResObject @ 0172ed1c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case773-BulletResObject


void case773_BulletResObject(undefined8 param_1)

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
  func_0x019a259c(&uStack_30,&"BulletResObject",&uStack_40,0x736d101);
  uVar2 = func_0x019a196c(&uStack_30,&"useBulletVisionRule",&UNK_019a1b54,0,&UNK_019a1b5c,0);
  uVar2 = func_0x019a196c(uVar2,&"useShapeVision",&UNK_019a1b64,0,&UNK_019a1b6c,0);
  uVar2 = func_0x019a196c(uVar2,&"useAppearExposeVision",&UNK_019a1b74,0,&UNK_019a1b7c,0);
  uVar2 = func_0x019a196c(uVar2,&"useHitVision",&UNK_019a1b84,0,&UNK_019a1b8c,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreParry",&UNK_019a1b94,0,&UNK_019a1b9c,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreTargetRadius",&UNK_019a1ba4,0,&UNK_019a1bac,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxUseVisiHitPosition",&UNK_019a1bb4,0,&UNK_019a1bbc,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxHitEffectOnTheGround",&UNK_019a1bc4,0,&UNK_019a1bcc,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxHitUseBulletTowards",&UNK_019a1bd4,0,&UNK_019a1bdc,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxForceRotateToForward",&UNK_019a1be4,0,&UNK_019a1bec,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxIgnoreRotation",&UNK_019a1bf4,0,&UNK_019a1bfc,0);
  uVar2 = func_0x019a196c(uVar2,&"useSkillDistanceLimit",&UNK_019a1c04,0,&UNK_019a1c0c,0);
  uVar2 = func_0x019a196c(uVar2,&"vfxAttachParent",&UNK_019a1c14,0,&UNK_019a1c1c,0);
  uVar2 = func_0x019a196c(uVar2,&"showInFog",&UNK_019a1c24,0,&UNK_019a1c2c,0);
  uVar2 = func_0x019a196c(uVar2,&"showWithActorVisable",&UNK_019a1c34,0,&UNK_019a1c3c,0);
  uVar2 = func_0x019a196c(uVar2,&"sightIgnoreBlock",&UNK_019a1c44,0,&UNK_019a1c4c,0);
  uVar2 = func_0x019a196c(uVar2,&"hitScreenShake",&UNK_019a1c54,0,&UNK_019a1c5c,0);
  uVar2 = func_0x019a196c(uVar2,&"showSkinHitAudio",&UNK_019a1c64,0,&UNK_019a1c6c,0);
  uVar2 = func_0x019a196c(uVar2,&"displayInMinMap",&UNK_019a1c74,0,&UNK_019a1c7c,0);
  uVar2 = func_0x019a196c(uVar2,&"isHorizontalSpeed",&UNK_019a1c84,0,&UNK_019a1c8c,0);
  uVar2 = func_0x019a196c(uVar2,&"borderCheck",&UNK_019a1c94,0,&UNK_019a1c9c,0);
  uVar2 = func_0x019a196c(uVar2,&"hitByDistanceSort",&UNK_019a1ca4,0,&UNK_019a1cac,0);
  uVar2 = func_0x019a196c(uVar2,&"audioDisMod",&UNK_019a1cb4,0,&UNK_019a1cbc,0);
  uVar2 = func_0x019a196c(uVar2,&"checkObstruct",&UNK_019a1cc4,0,&UNK_019a1ccc,0);
  uVar2 = func_0x019a196c(uVar2,&"checkTerrainWall",&UNK_019a1cd4,0,&UNK_019a1cdc,0);
  uVar2 = func_0x019a196c(uVar2,&"overrideSetting",&UNK_019a1ce4,0,&UNK_019a1cec,0);
  uVar2 = func_0x019a1cf4(uVar2,&"destroyTileTypeFlag",&UNK_019a1edc,0,&UNK_019a1ee4,0);
  uVar2 = func_0x019a196c(uVar2,&"overridePenetrate",&UNK_019a1eec,0,&UNK_019a1ef4,0);
  uVar2 = func_0x019a1cf4(uVar2,&"penetrateTileTypeFlag",&UNK_019a1efc,0,&UNK_019a1f04,0);
  uVar2 = func_0x019a1cf4(uVar2,&"hitTimesLimit",&UNK_019a1f0c,0,&UNK_019a1f14,0);
  uVar2 = func_0x019a1cf4(uVar2,&"hitFinishActorCount",&UNK_019a1f1c,0,&UNK_019a1f24,0);
  uVar2 = func_0x019a1f2c(uVar2,&"visibilityChangesLatencyTime",&UNK_019a2114,0,&UNK_019a211c,0);
  uVar2 = func_0x019a1f2c(uVar2,&"vfxHitEffectDuration",&UNK_019a2124,0,&UNK_019a212c,0);
  uVar2 = func_0x019a2134(uVar2,&"viewRadius",&UNK_019a231c,0,&UNK_019a2324,0);
  uVar2 = func_0x019a2134(uVar2,&"hitExpirationTime",&UNK_019a232c,0,&UNK_019a2334,0);
  uVar2 = func_0x019a2134(uVar2,&"distanceLimit",&UNK_019a233c,0,&UNK_019a2344,0);
  uVar2 = func_0x019a196c(uVar2,&"distancWithSkillChange",&UNK_019a234c,0,&UNK_019a2354,0);
  uVar2 = func_0x019a2134(uVar2,&"aliveTime",&UNK_019a235c,0,&UNK_019a2364,0);
  uVar2 = func_0x019a2134(uVar2,&"speed",&UNK_019a236c,0,&UNK_019a2374,0);
  uVar2 = func_0x019a2134(uVar2,&"vfxTrailingDelayDeleteTime",&UNK_019a237c,0,&UNK_019a2384,0);
  uVar2 = func_0x019a196c(uVar2,&"unInitPosWhenSameFrame",&UNK_019a238c,0,&UNK_019a2394,0);
  uVar2 = func_0x019a2134(uVar2,&"fowFadeTime",&UNK_019a239c,0,&UNK_019a23a4,0);
  uVar2 = func_0x019a2134(uVar2,&"viewPrecomputedTime",&UNK_019a23ac,0,&UNK_019a23b4,0);
  uVar2 = func_0x019a2134(uVar2,&"acceleration",&UNK_019a23bc,0,&UNK_019a23c4,0);
  uVar2 = func_0x019a2134(uVar2,&"shapeParam2",&UNK_019a23cc,0,&UNK_019a23d4,0);
  uVar2 = func_0x019a2134(uVar2,&"shapeParam1",&UNK_019a23dc,0,&UNK_019a23e4,0);
  uVar2 = func_0x019a2134(uVar2,&"bulletFadeInTime",&UNK_019a23ec,0,&UNK_019a23f4,0);
  uVar2 = func_0x019a2134(uVar2,&"delayDeleteTime",&UNK_019a23fc,0,&UNK_019a2404,0);
  uVar2 = func_0x019a2134(uVar2,&"hitVisionTime",&UNK_019a240c,0,&UNK_019a2414,0);
  uVar2 = func_0x019a2134(uVar2,&"vfxChromaLuminanceMul",&UNK_019a241c,0,&UNK_019a2424,0);
  uVar2 = func_0x019a1cf4(uVar2,&"hitSceneHandler",&UNK_019a242c,0,&UNK_019a2434,0);
  uVar2 = func_0x019a196c(uVar2,&"detectBlockUseHitFilter",&UNK_019a243c,0,&UNK_019a2444,0);
  uVar2 = func_0x019a1cf4(uVar2,&"shape",&UNK_019a244c,0,&UNK_019a2454,0);
  uVar2 = func_0x019a196c(uVar2,&"onlyShowToCaster",&UNK_019a245c,0,&UNK_019a2464,0);
  uVar2 = func_0x019a196c(uVar2,&"fixedForwardY",&UNK_019a246c,0,&UNK_019a2474,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreHitActorDirCheck",&UNK_019a247c,0,&UNK_019a2484,0);
  uVar2 = func_0x019a196c(uVar2,&"isImmortal",&UNK_019a248c,0,&UNK_019a2494,0);
  uVar2 = func_0x019a196c(uVar2,&"openFirstTickCheck",&UNK_019a249c,0,&UNK_019a24a4,0);
  uVar2 = func_0x019a196c(uVar2,&"openVisiDistanceLimit",&UNK_019a24ac,0,&UNK_019a24b4,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreLevelRuleFix",&UNK_019a24bc,0,&UNK_019a24c4,0);
  uVar2 = func_0x019a1cf4(uVar2,&"realmFollowType",&UNK_019a24cc,0,&UNK_019a24d4,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreSpeedScale",&UNK_019a24dc,0,&UNK_019a24e4,0);
  uVar2 = func_0x019a196c(uVar2,&"waitEnterFieldFrame",&UNK_019a24ec,0,&UNK_019a24f4,0);
  uVar2 = func_0x019a196c(uVar2,&"isGetParentSpeedScale",&UNK_019a24fc,0,&UNK_019a2504,0);
  uVar2 = func_0x019a196c(uVar2,&"ignoreReflect",&UNK_019a250c,0,&UNK_019a2514,0);
  uVar2 = func_0x019a196c(uVar2,&"esObject",&UNK_019a251c,0,&UNK_019a2524,0);
  uVar2 = func_0x019a1cf4(uVar2,&"obalChaosZoneHeroAttrTrendConfig_AttrTrend",&UNK_019a252c,0,&UNK_019a2534,0);
  uVar2 = func_0x019a1cf4(uVar2,&"oAttrTrendConfig_AttrTrend",&UNK_019a253c,0,&UNK_019a2544,0);
  uVar2 = func_0x019a1cf4(uVar2,&"trTrend",&UNK_019a254c,0,&UNK_019a2554,0);
  uVar2 = func_0x019a2134(uVar2,&"trailChromaLuminanceMul",&UNK_019a255c,0,&UNK_019a2564,0);
  uVar2 = func_0x019a1cf4(uVar2,&"e",&UNK_019a256c,0,&UNK_019a2574,0);
  uVar2 = func_0x019a196c(uVar2,&"oneHeroAttrTrendConfig",&UNK_019a257c,0,&UNK_019a2584,0);
  puVar3 = (undefined8 *)func_0x019a1cf4(uVar2,&"GlobalChaosZoneBuffConfig",&UNK_019a258c,0,&UNK_019a2594,0);
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

