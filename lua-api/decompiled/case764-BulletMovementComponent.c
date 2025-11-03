// ===== case764-BulletMovementComponent @ 0172cce4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case764-BulletMovementComponent


void case764_BulletMovementComponent(undefined8 param_1)

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
  func_0x01995be8(&uStack_40,&"BulletMovementComponent",&uStack_50,0x736d101);
  uVar3 = func_0x01994544(&uStack_40,&"overstepTheDoor",&UNK_0199472c,0,&UNK_01994734,0);
  uVar3 = func_0x01994544(uVar3,&"detectIgnoreGate",&UNK_0199473c,0,&UNK_01994744,0);
  uVar3 = func_0x01994544(uVar3,&"addLiteFowCutSyncRef",&UNK_0199474c,0,&UNK_01994754,0);
  uVar3 = func_0x01994544(uVar3,&"checkDistanceLimitArrived",&UNK_0199475c,0,&UNK_01994764,0);
  uVar3 = func_0x01994544(uVar3,&"distanceLimitArrived",&UNK_0199476c,0,&UNK_01994774,0);
  uVar3 = func_0x01994544(uVar3,&"parabolaTrack",&UNK_0199477c,0,&UNK_01994784,0);
  uVar3 = func_0x01994544(uVar3,&"overstepTheBattleEvent",&UNK_019947a0,0,&UNK_019947a8,0);
  uVar3 = func_0x01994544(uVar3,&"overstepTheMapEvent",&UNK_019947b0,0,&UNK_019947b8,0);
  uVar3 = func_0x01994544(uVar3,&"setFinishWhenArrived",&UNK_019947c0,0,&UNK_019947c8,0);
  uVar3 = func_0x01994544(uVar3,&"dontFinishWhenHit",&UNK_019947d0,0,&UNK_019947d8,0);
  uVar3 = func_0x01994544(uVar3,&"updateBulletSpeed",&UNK_019947e0,0,&UNK_019947e8,0);
  uVar3 = func_0x01994544(uVar3,&"useMaxDistance",&UNK_019947f0,0,&UNK_019947f8,0);
  uVar3 = func_0x01994544(uVar3,&"changeCurveAmplitude",&UNK_01994800,0,&UNK_01994808,0);
  uVar3 = func_0x01994544(uVar3,&"setTrailingVFXRotation",&UNK_01994824,0,&UNK_0199482c,0);
  uVar3 = func_0x01994544(uVar3,&"curvePositionNeedPreVisi",&UNK_019948bc,0,&UNK_019948c4,0);
  uVar3 = func_0x019948e0(uVar3,&"curveID",&UNK_01994ac8,0,&UNK_01994ad0,0);
  uVar3 = func_0x019948e0(uVar3,&"mixCurveID",&UNK_01994aec,0,&UNK_01994af4,0);
  uVar3 = func_0x019948e0(uVar3,&"yCurveID",&UNK_01994b10,0,&UNK_01994b18,0);
  uVar3 = func_0x019948e0(uVar3,&"currentTrackPosIndex",&UNK_01994b34,0,&UNK_01994b3c,0);
  uVar3 = func_0x01994b58(uVar3,&"circularArcAngle",&UNK_01994d40,0,&UNK_01994d48,0);
  uVar3 = func_0x01994da8(uVar3,&"initPosition",&UNK_01994f90,0,&UNK_01994fa4,0);
  uVar3 = func_0x01994b58(uVar3,&"elapsedTimeChgTime",&UNK_01994fc0,0,&UNK_01994fc8,0);
  uVar3 = func_0x01994b58(uVar3,&"elapsedTimeLastChg",&UNK_01995028,0,&UNK_01995030,0);
  uVar3 = func_0x01994b58(uVar3,&"minElapsedTime",&UNK_01995090,0,&UNK_01995098,0);
  uVar3 = func_0x019948e0(uVar3,&"hitSceneType",&UNK_019950f8,0,&UNK_01995100,0);
  uVar3 = func_0x01994544(uVar3,&"checkObstruct",&UNK_0199511c,0,&UNK_01995124,0);
  uVar3 = func_0x01994544(uVar3,&"checkTerrainWall",&UNK_01995140,0,&UNK_01995148,0);
  uVar3 = func_0x01994b58(uVar3,&"maxElapsedTime",&UNK_01995164,0,&UNK_0199516c,0);
  uVar3 = func_0x019951cc(uVar3,&"curve",&UNK_019953b4,0,0,0);
  uVar3 = func_0x019951cc(uVar3,&"curveMix",&UNK_019953bc,0,0,0);
  uVar3 = func_0x019951cc(uVar3,&"curveY",&UNK_019953c4,0,0,0);
  uVar3 = func_0x01994544(uVar3,&"checkDistanceMovedArrived",&UNK_019953cc,0,&UNK_019953d4,0);
  uVar3 = func_0x01994b58(uVar3,&"distanceMoved",&UNK_019953f0,0,&UNK_019953f8,0);
  uVar3 = func_0x01994b58(uVar3,&"totalDistance",&UNK_01995458,0,&UNK_01995460,0);
  uVar3 = func_0x01994b58(uVar3,&"totalTime",&UNK_019954c0,0,&UNK_019954c8,0);
  uVar3 = func_0x01994b58(uVar3,&"approachFactor",&UNK_01995528,0,&UNK_01995530,0);
  uVar3 = func_0x01994b58(uVar3,&"distanceThreshold",&UNK_01995590,0,&UNK_01995598,0);
  uVar3 = func_0x01994b58(uVar3,&"angleThreshold",&UNK_019955f8,0,&UNK_01995600,0);
  uVar3 = func_0x01994b58(uVar3,&"angularAccSpeed",&UNK_01995660,0,&UNK_01995668,0);
  uVar3 = func_0x01994b58(uVar3,&"curAngularSpeed",&UNK_019956c8,0,&UNK_019956d0,0);
  uVar3 = func_0x01994b58(uVar3,&"angularSpeed",&UNK_01995730,0,&UNK_01995738,0);
  uVar3 = func_0x01994b58(uVar3,&"circleRadius",&UNK_01995798,0,&UNK_019957a0,0);
  uVar3 = func_0x01994b58(uVar3,&"baseCircleRadius",&UNK_01995800,0,&UNK_01995808,0);
  uVar3 = func_0x01994b58(uVar3,&"currentCircleAngle",&UNK_01995810,0,&UNK_01995818,0);
  uVar3 = func_0x01994da8(uVar3,&"velocity",&UNK_01995878,0,&UNK_01995890,0);
  uVar3 = func_0x01994b58(uVar3,&"initialVerticalSpeed",&UNK_019958b4,0,&UNK_019958bc,0);
  puVar4 = (undefined8 *)func_0x01994da8(uVar3,&"emitDir",&UNK_0199591c,0,&UNK_01995934,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01995958;
  func_0x0124ec90(*puVar4,&UNK_01999d58,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"circumvolantTarget");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"circumvolantTarget");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01994da8(puVar4,&"circumvolantAxis",&UNK_01995960,0,&UNK_01995974,0);
  puVar4 = (undefined8 *)func_0x019948e0(uVar3,&"curveType",&UNK_01995998,0,&UNK_019959a0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019959bc;
  func_0x0124ec90(*puVar4,&UNK_0199a59c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"bullet");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"bullet");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01994544(puVar4,&"ultiSkillHurtInfoSkillRefE",&UNK_019959c4,0,&UNK_019959cc,0);
  uVar3 = func_0x019948e0(uVar3,&"killRefE",&UNK_019959e8,0,&UNK_019959f0,0);
  uVar3 = func_0x01994b58(uVar3,&"gainWeightItems",&UNK_01995a0c,0,&UNK_01995a14,0);
  uVar3 = func_0x01994b58(uVar3,&"totalWeight",&UNK_01995a74,0,&UNK_01995a7c,0);
  uVar3 = func_0x01994b58(uVar3,&"IKillAssistInfoSyncE",&UNK_01995adc,0,&UNK_01995ae4,0);
  uVar3 = func_0x01994b58(uVar3,&"yncE",&UNK_01995b44,0,&UNK_01995b4c,0);
  puVar4 = (undefined8 *)func_0x01994da8(uVar3,&"initMoveForward",&UNK_01995bac,0,&UNK_01995bc4,0);
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

