// ===== case460-AnchorDataData @ 016eb618 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case460-AnchorDataData


void case460_AnchorDataData(undefined8 param_1)

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
  func_0x01872968(&uStack_40,&"AnchorDataData",&uStack_50,0x736d101);
  uVar3 = func_0x01871d14(&uStack_40,&"useLeashRange",&UNK_01871efc,0,&UNK_01871f04,0);
  uVar3 = func_0x01871d14(uVar3,&"isNeedIndicator",&UNK_01871f0c,0,&UNK_01871f14,0);
  uVar3 = func_0x01871d14(uVar3,&"bEnableRandomGroup",&UNK_01871f1c,0,&UNK_01871f24,0);
  uVar3 = func_0x01871d14(uVar3,&"enablePreShowIcon",&UNK_01871f2c,0,&UNK_01871f34,0);
  uVar3 = func_0x01871d14(uVar3,&"isShowBornTime",&UNK_01871f3c,0,&UNK_01871f44,0);
  uVar3 = func_0x01871d14(uVar3,&"maxCountDownCircleTime",&UNK_01871f4c,0,&UNK_01871f54,0);
  uVar3 = func_0x01871d14(uVar3,&"isShowLeaveTime",&UNK_01871f5c,0,&UNK_01871f64,0);
  uVar3 = func_0x01871d14(uVar3,&"isHideBornLeaveProgressBorder",&UNK_01871f6c,0,&UNK_01871f74,0);
  uVar3 = func_0x01871d14(uVar3,&"dieRefreshIgnoreSummonChild",&UNK_01871f7c,0,&UNK_01871f84,0);
  uVar3 = func_0x01871d14(uVar3,&"isRandomBornPos",&UNK_01871f8c,0,&UNK_01871f94,0);
  uVar3 = func_0x01871d14(uVar3,&"isMiniMapAnchorGroup",&UNK_01871f9c,0,&UNK_01871fa4,0);
  uVar3 = func_0x01871fac(uVar3,&"indicatorBuffCheckID",&UNK_01872194,0,&UNK_0187219c,0);
  uVar3 = func_0x01871fac(uVar3,&"showBornDelayTime",&UNK_018721a4,0,&UNK_018721ac,0);
  uVar3 = func_0x01871fac(uVar3,&"maxShowTime",&UNK_018721b4,0,&UNK_018721bc,0);
  uVar3 = func_0x01871fac(uVar3,&"groupIdForAnalysis",&UNK_018721c4,0,&UNK_018721cc,0);
  uVar3 = func_0x01871fac(uVar3,&"plantAnalysisId",&UNK_018721d4,0,&UNK_018721dc,0);
  uVar3 = func_0x018721e4(uVar3,&"poiRadius",&UNK_018723cc,0,&UNK_018723d4,0);
  uVar3 = func_0x018721e4(uVar3,&"indicatorTriggerRadius",&UNK_018723dc,0,&UNK_018723e4,0);
  uVar3 = func_0x018721e4(uVar3,&"leashRangeForward",&UNK_018723ec,0,&UNK_018723f4,0);
  uVar3 = func_0x018721e4(uVar3,&"leashRangeAngle",&UNK_018723fc,0,&UNK_01872404,0);
  uVar3 = func_0x018721e4(uVar3,&"leashRangeRadius",&UNK_0187240c,0,&UNK_01872414,0);
  puVar4 = (undefined8 *)func_0x018721e4(uVar3,&"leashRangeInnerRadius",&UNK_0187241c,0,&UNK_01872424,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0187242c;
  func_0x0124ec90(*puVar4,&UNK_018733b8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"leashIndicatorAlphaCurve");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"leashIndicatorAlphaCurve");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x018721e4(puVar4,&"interval",&UNK_01872434,0,&UNK_0187243c,0);
  uVar3 = func_0x018721e4(uVar3,&"indicatorRadius",&UNK_01872444,0,&UNK_0187244c,0);
  uVar3 = func_0x018721e4(uVar3,&"buffOpenTimeLength",&UNK_01872454,0,&UNK_0187245c,0);
  uVar3 = func_0x018721e4(uVar3,&"intervalInOneWave",&UNK_01872464,0,&UNK_0187246c,0);
  uVar3 = func_0x018721e4(uVar3,&"startTime",&UNK_01872474,0,&UNK_0187247c,0);
  uVar3 = func_0x01872484(uVar3,&"leashRangeCenter",&UNK_0187266c,0,&UNK_01872680,0);
  uVar3 = func_0x01872484(uVar3,&"transformPos",&UNK_0187269c,0,&UNK_018726b4,0);
  uVar3 = func_0x01871fac(uVar3,&"poiType",&UNK_018726d0,0,&UNK_018726d8,0);
  uVar3 = func_0x01871fac(uVar3,&"anchorType",&UNK_018726e0,0,&UNK_018726e8,0);
  uVar3 = func_0x01871fac(uVar3,&"indicatorType",&UNK_018726f0,0,&UNK_018726f8,0);
  uVar3 = func_0x01871fac(uVar3,&"line",&UNK_01872700,0,&UNK_01872708,0);
  uVar3 = func_0x01871fac(uVar3,&"defenceLayer",&UNK_01872710,0,&UNK_01872718,0);
  uVar3 = func_0x01871fac(uVar3,&"refreshType",&UNK_01872720,0,&UNK_01872728,0);
  uVar3 = func_0x01871fac(uVar3,&"camp",&UNK_01872730,0,&UNK_01872738,0);
  uVar3 = func_0x01871fac(uVar3,&"areaCamp",&UNK_01872740,0,&UNK_01872748,0);
  puVar4 = (undefined8 *)func_0x01872750(uVar3,&"ll",&UNK_01872938,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01872940;
  func_0x0124ec90(*puVar4,&UNK_018739e8,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"replaceTrigger");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"replaceTrigger");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01872948;
  func_0x0124ec90(*puVar4,&UNK_01873b0c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"actorInfos");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"actorInfos");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01872750(puVar4,&"applyBuffTrigger",&UNK_01872950,0,0,0);
  uVar3 = func_0x01872750(uVar3,&"enterTrigger",&UNK_01872958,0,0,0);
  puVar4 = (undefined8 *)func_0x01872750(uVar3,&"hurtTrigger",&UNK_01872960,0,0,0);
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

