// ===== case373-FEBattleDcPlayerSpecialActivityStat @ 016d67ac =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case373-FEBattleDcPlayerSpecialActivityStat


void case373_FEBattleDcPlayerSpecialActivityStat(undefined8 param_1)

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
  func_0x0183049c(&uStack_30,&"FEBattleDcPlayerSpecialActivityStat",&uStack_40,0x736d101);
  uVar2 = func_0x0182fcec(&uStack_30,&"speedTaskCount",&UNK_0182fed4,0,&UNK_0182fedc,0);
  uVar2 = func_0x0182fcec(uVar2,&"winWithoutEquipTaskCount",&UNK_0182fee4,0,&UNK_0182feec,0);
  uVar2 = func_0x0182fcec(uVar2,&"enterSpringTaskCount",&UNK_0182fef4,0,&UNK_0182fefc,0);
  uVar2 = func_0x0182fcec(uVar2,&"stayInGrassTaskCount",&UNK_0182ff04,0,&UNK_0182ff0c,0);
  uVar2 = func_0x0182fcec(uVar2,&"pentakillTaskCount",&UNK_0182ff14,0,&UNK_0182ff1c,0);
  uVar2 = func_0x0182fcec(uVar2,&"skillKillAndAssistCount",&UNK_0182ff24,0,&UNK_0182ff2c,0);
  uVar2 = func_0x0182fcec(uVar2,&"iCreatePlantCnt",&UNK_0182ff34,0,&UNK_0182ff3c,0);
  uVar2 = func_0x0182fcec(uVar2,&"iRStrikeCnt",&UNK_0182ff44,0,&UNK_0182ff4c,0);
  uVar2 = func_0x0182fcec(uVar2,&"iSyndraStunCnt",&UNK_0182ff54,0,&UNK_0182ff5c,0);
  uVar2 = func_0x0182ff64(uVar2,&"syndraStunCntDic",&UNK_0183014c,0,0,0);
  uVar2 = func_0x0182fcec(uVar2,&"talonLiuxueKillCnt",&UNK_01830154,0,&UNK_0183015c,0);
  uVar2 = func_0x0182fcec(uVar2,&"talonQKillCnt",&UNK_01830164,0,&UNK_0183016c,0);
  uVar2 = func_0x0182fcec(uVar2,&"talonWHitCnt",&UNK_01830174,0,&UNK_0183017c,0);
  uVar2 = func_0x0182ff64(uVar2,&"talonWHitCntDic",&UNK_01830184,0,0,0);
  uVar2 = func_0x0182ff64(uVar2,&"lissandraWHitDic",&UNK_0183018c,0,0,0);
  uVar2 = func_0x0182fcec(uVar2,&"talonECnt",&UNK_01830194,0,&UNK_0183019c,0);
  uVar2 = func_0x0182fcec(uVar2,&"talonRKillAndAssistCnt",&UNK_018301a4,0,&UNK_018301ac,0);
  uVar2 = func_0x018301b4(uVar2,&"talonLastRTime",&UNK_0183039c,0,&UNK_018303a4,0);
  uVar2 = func_0x0182fcec(uVar2,&"zeriWWallHitHeroCnt",&UNK_018303ac,0,&UNK_018303b4,0);
  uVar2 = func_0x0182fcec(uVar2,&"teamTogalDamage",&UNK_018303bc,0,&UNK_018303c4,0);
  uVar2 = func_0x0182fcec(uVar2,&"teamFireDragonCnt",&UNK_018303cc,0,&UNK_018303d4,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_P_SpeedCnt",&UNK_018303dc,0,&UNK_018303e4,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_Q_Damage",&UNK_018303ec,0,&UNK_018303f4,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_W_Absorb",&UNK_018303fc,0,&UNK_01830404,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_E_HitCnt",&UNK_0183040c,0,&UNK_01830414,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_R_KillCnt",&UNK_0183041c,0,&UNK_01830424,0);
  uVar2 = func_0x0182fcec(uVar2,&"mordekaiser_P_State",&UNK_0183042c,0,&UNK_01830434,0);
  uVar2 = func_0x0182fcec(uVar2,&"lissandra_Q_HeroCnt",&UNK_0183043c,0,&UNK_01830444,0);
  uVar2 = func_0x0182fcec(uVar2,&"lissandra_W_ThreeHeroCnt",&UNK_0183044c,0,&UNK_01830454,0);
  uVar2 = func_0x0182fcec(uVar2,&"lissandra_E_WallCnt",&UNK_0183045c,0,&UNK_01830464,0);
  uVar2 = func_0x0182fcec(uVar2,&"rellQBreakShieldCnt",&UNK_0183046c,0,&UNK_01830474,0);
  uVar2 = func_0x0182fcec(uVar2,&"rellWRidingKnockCnt",&UNK_0183047c,0,&UNK_01830484,0);
  puVar3 = (undefined8 *)func_0x0182fcec(uVar2,&"rellEBombCnt",&UNK_0183048c,0,&UNK_01830494,0);
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

