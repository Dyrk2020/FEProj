// ===== case181-BattleScoringDataCollectResObject @ 016abd30 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case181-BattleScoringDataCollectResObject


void case181_BattleScoringDataCollectResObject(undefined8 param_1)

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
  func_0x017b1970(&uStack_30,&"BattleScoringDataCollectResObject",&uStack_40,0x736d101);
  uVar2 = func_0x017b14a0(&uStack_30,&"cannonHitEnemyLimitTime",&UNK_017b1688,0,&UNK_017b1690,0);
  uVar2 = func_0x017b14a0(uVar2,&"cannonUseEnemyLimitTime",&UNK_017b1698,0,&UNK_017b16a0,0);
  uVar2 = func_0x017b14a0(uVar2,&"normalSkillHitLimitTime",&UNK_017b16a8,0,&UNK_017b16b0,0);
  uVar2 = func_0x017b14a0(uVar2,&"normalSkillHitCount",&UNK_017b16b8,0,&UNK_017b16c0,0);
  uVar2 = func_0x017b14a0(uVar2,&"heroSkillHitLimitTime",&UNK_017b16c8,0,&UNK_017b16d0,0);
  uVar2 = func_0x017b14a0(uVar2,&"heroSkillHitCount",&UNK_017b16d8,0,&UNK_017b16e0,0);
  uVar2 = func_0x017b14a0(uVar2,&"snowballFlyDistance",&UNK_017b16e8,0,&UNK_017b16f0,0);
  uVar2 = func_0x017b14a0(uVar2,&"snowballDashUseLimitTime",&UNK_017b16f8,0,&UNK_017b1700,0);
  uVar2 = func_0x017b14a0(uVar2,&"snowballDashUseNoDeathLimitTime",&UNK_017b1708,0,&UNK_017b1710,0);
  uVar2 = func_0x017b14a0(uVar2,&"summonerSpellKillLimitTime",&UNK_017b1718,0,&UNK_017b1720,0);
  uVar2 = func_0x017b14a0(uVar2,&"useSkill4HitMultiNum",&UNK_017b1728,0,&UNK_017b1730,0);
  uVar2 = func_0x017b14a0(uVar2,&"useSKill4KillLimitTime",&UNK_017b1738,0,&UNK_017b1740,0);
  uVar2 = func_0x017b14a0(uVar2,&"specialActivitySpeed",&UNK_017b1748,0,&UNK_017b1750,0);
  uVar2 = func_0x017b14a0(uVar2,&"specialActivityEnterSpringTime",&UNK_017b1758,0,&UNK_017b1760,0);
  uVar2 = func_0x017b14a0(uVar2,&"specialActivityStayInGrassTime",&UNK_017b1768,0,&UNK_017b1770,0);
  puVar3 = (undefined8 *)func_0x017b1778(uVar2,&"farmPhaseTime",&UNK_017b1960,0,&UNK_017b1968,0);
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

