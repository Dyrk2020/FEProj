// ===== case5_BattleActorUseMultiSkillMsg_sub1752b30 @ 01752b30 (DecompileAt3: cleared stale instructions at entry) =====


void case5_BattleActorUseMultiSkillMsg_sub1752b30(undefined8 param_1)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  iVar1 = func_0x0124ff50(param_1,1);
  if (iVar1 == 0) {
    uVar4 = 0;
  }
  else {
    lVar2 = func_0x0174b938(param_1,1,0x736d206,0x736d205,1);
    uVar4 = *(undefined8 *)(lVar2 + 8);
  }
  uVar3 = func_0x0124e990(param_1,0xfff0b9d7);
  func_0x01752ba4(param_1,uVar4,uVar3);
  return;
}

