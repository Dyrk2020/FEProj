// ===== case390-GMLgcVariableContext @ 016dd034 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case390-GMLgcVariableContext


void case390_GMLgcVariableContext(undefined8 param_1)

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
  func_0x01841b3c(&uStack_40,&"GMLgcVariableContext",&uStack_50,0x736d101);
  uVar3 = func_0x01840edc(&uStack_40,&"recordHeroStack",&UNK_018410c4,0,&UNK_018410cc,0);
  uVar3 = func_0x01840edc(uVar3,&"needSaveRecordStack",&UNK_018410d4,0,&UNK_018410dc,0);
  uVar3 = func_0x018410e4(uVar3,&"markedEnemyID",&UNK_018412cc,0,&UNK_018412d4,0);
  uVar3 = func_0x018412dc(uVar3,&"heroIconDisplayBorderWidth",&UNK_018414c4,0,&UNK_018414cc,0);
  uVar3 = func_0x018412dc(uVar3,&"heroCount",&UNK_018414d4,0,&UNK_018414dc,0);
  uVar3 = func_0x018412dc(uVar3,&"currHeroId",&UNK_018414e4,0,&UNK_018414ec,0);
  uVar3 = func_0x018412dc(uVar3,&"currHeroIndex",&UNK_018414f4,0,&UNK_018414fc,0);
  uVar3 = func_0x01841504(uVar3,&"specialTeamateID",&UNK_018416ec,0,&UNK_018416f4,0);
  uVar3 = func_0x018416fc(uVar3,&"teammateMarkIconPrefabPath",&UNK_018418e4,0,0,0);
  uVar3 = func_0x018416fc(uVar3,&"enemyMarkIconPrefabPath",&UNK_018418ec,0,0,0);
  uVar3 = func_0x018416fc(uVar3,&"currHeroName",&UNK_018418f4,0,0,0);
  puVar4 = (undefined8 *)func_0x018412dc(uVar3,&"soldierType",&UNK_018418fc,0,&UNK_01841904,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0184190c;
  func_0x0124ec90(*puVar4,&UNK_018429f4,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"visionMonster");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"visionMonster");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01841914(puVar4,&"combatMarkerEnemyList",&UNK_01841afc,0,0,0);
  puVar4 = (undefined8 *)func_0x01841914(uVar3,&"combatMarkerAllyList",&UNK_01841b04,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01841b0c;
  func_0x0124ec90(*puVar4,&UNK_01842d8c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"sightMarkerDic");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"sightMarkerDic");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01841914(puVar4,&"sightMarkerList",&UNK_01841b14,0,0,0);
  uVar3 = func_0x018412dc(uVar3,&"soldierLine",&UNK_01841b1c,0,&UNK_01841b24,0);
  puVar4 = (undefined8 *)func_0x018412dc(uVar3,&"heroLine",&UNK_01841b2c,0,&UNK_01841b34,0);
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

