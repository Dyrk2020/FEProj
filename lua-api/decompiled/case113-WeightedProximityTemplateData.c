// ===== case113-WeightedProximityTemplateData @ 0169edb8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case113-WeightedProximityTemplateData


void case113_WeightedProximityTemplateData(undefined8 param_1)

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
  func_0x0178dbd8(&uStack_30,&"WeightedProximityTemplateData",&uStack_40,0x736d101);
  uVar2 = func_0x0178d750(&uStack_30,&"iLastHittableTarget",&UNK_0178d938,0,&UNK_0178d940,0);
  uVar2 = func_0x0178d750(uVar2,&"iChampionTargetBufferVsChampion",&UNK_0178d948,0,&UNK_0178d950,0);
  uVar2 = func_0x0178d750(uVar2,&"iChampionTargetBufferVsOther",&UNK_0178d958,0,&UNK_0178d960,0);
  uVar2 = func_0x0178d750(uVar2,&"iOtherTargetBufferVsChampion",&UNK_0178d968,0,&UNK_0178d970,0);
  uVar2 = func_0x0178d750(uVar2,&"iOtherTargetVsOtherForMeleeSelector",&UNK_0178d978,0,&UNK_0178d980,0);
  uVar2 = func_0x0178d750(uVar2,&"iOtherTargetVsOtherForRangedSelector",&UNK_0178d988,0,&UNK_0178d990,0);
  uVar2 = func_0x0178d750(uVar2,&"iEpicTargetBufferVsScuttler",&UNK_0178d998,0,&UNK_0178d9a0,0);
  uVar2 = func_0x0178d750(uVar2,&"iAttackedMeRecently",&UNK_0178d9a8,0,&UNK_0178d9b0,0);
  uVar2 = func_0x0178d750(uVar2,&"iAttackedMeRecentlyDuration",&UNK_0178d9b8,0,&UNK_0178d9c0,0);
  uVar2 = func_0x0178d750(uVar2,&"iNoDefaultTargetHero",&UNK_0178d9c8,0,&UNK_0178d9d0,0);
  uVar2 = func_0x0178d750(uVar2,&"iNoDefaultTargetEpicMonster",&UNK_0178d9d8,0,&UNK_0178d9e0,0);
  uVar2 = func_0x0178d750(uVar2,&"iNoDefaultTargetTower",&UNK_0178d9e8,0,&UNK_0178d9f0,0);
  uVar2 = func_0x0178d750(uVar2,&"iNoDefaultTargetMonster",&UNK_0178d9f8,0,&UNK_0178da00,0);
  uVar2 = func_0x0178d750(uVar2,&"iUnitTypeHeroForMeleeSelector",&UNK_0178da08,0,&UNK_0178da10,0);
  uVar2 = func_0x0178d750(uVar2,&"iUnitTypeHeroForRangedSelector",&UNK_0178da18,0,&UNK_0178da20,0);
  uVar2 = func_0x0178d750(uVar2,&"iUnitTypeFruit",&UNK_0178da28,0,&UNK_0178da30,0);
  uVar2 = func_0x0178d750(uVar2,&"iUnitTypeMinionPercentHP",&UNK_0178da38,0,&UNK_0178da40,0);
  uVar2 = func_0x0178d750(uVar2,&"iUnitTypeHeroHP",&UNK_0178da48,0,&UNK_0178da50,0);
  uVar2 = func_0x0178d750(uVar2,&"iNonImpliedTargetUnitTypeHero",&UNK_0178da58,0,&UNK_0178da60,0);
  uVar2 = func_0x0178d750(uVar2,&"iNonImpliedTargetUnitTypeOther",&UNK_0178da68,0,&UNK_0178da70,0);
  uVar2 = func_0x0178d750(uVar2,&"iImpliedTargetChampion",&UNK_0178da78,0,&UNK_0178da80,0);
  uVar2 = func_0x0178d750(uVar2,&"iImpliedTargetOther",&UNK_0178da88,0,&UNK_0178da90,0);
  uVar2 = func_0x0178d750(uVar2,&"iWithinBufferedAbilityRange",&UNK_0178da98,0,&UNK_0178daa0,0);
  uVar2 = func_0x0178d750(uVar2,&"iOutsideBufferedAbilityRange",&UNK_0178daa8,0,&UNK_0178dab0,0);
  uVar2 = func_0x0178d750(uVar2,&"iUseProportionsToResolveNegatives",&UNK_0178dab8,0,&UNK_0178dac0,0);
  uVar2 = func_0x0178d750(uVar2,&"iBuffIDCheck",&UNK_0178dac8,0,&UNK_0178dad0,0);
  uVar2 = func_0x0178d750(uVar2,&"iBuffWeight",&UNK_0178dad8,0,&UNK_0178dae0,0);
  uVar2 = func_0x0178d750(uVar2,&"iUseHeroFadeBool",&UNK_0178dae8,0,&UNK_0178daf0,0);
  uVar2 = func_0x0178d750(uVar2,&"iHeroFadeFrames",&UNK_0178daf8,0,&UNK_0178db00,0);
  uVar2 = func_0x0178d750(uVar2,&"iTargetHeroFadeWeight",&UNK_0178db08,0,&UNK_0178db10,0);
  uVar2 = func_0x0178d750(uVar2,&"iUseFadeToNullBool",&UNK_0178db18,0,&UNK_0178db20,0);
  uVar2 = func_0x0178d750(uVar2,&"iPercentHealthSwapWeight",&UNK_0178db28,0,&UNK_0178db30,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingConsistency",&UNK_0178db38,0,&UNK_0178db40,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingSeparation",&UNK_0178db48,0,&UNK_0178db50,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingAngleLimit",&UNK_0178db58,0,&UNK_0178db60,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingSeparationRadiusHero",&UNK_0178db68,0,&UNK_0178db70,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingSeparationRadiusOther",&UNK_0178db78,0,&UNK_0178db80,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingIterations",&UNK_0178db88,0,&UNK_0178db90,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingToggle",&UNK_0178db98,0,&UNK_0178dba0,0);
  uVar2 = func_0x0178d750(uVar2,&"iFlockingRange",&UNK_0178dba8,0,&UNK_0178dbb0,0);
  uVar2 = func_0x0178d750(uVar2,&"iHealthHeroDistanceRatio",&UNK_0178dbb8,0,&UNK_0178dbc0,0);
  puVar3 = (undefined8 *)func_0x0178d750(uVar2,&"iZombieWeight",&UNK_0178dbc8,0,&UNK_0178dbd0,0);
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

