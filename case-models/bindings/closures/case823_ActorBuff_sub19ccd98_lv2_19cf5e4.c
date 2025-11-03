// ===== case823_ActorBuff_sub19ccd98_lv2_19cf5e4 @ 019cf5e4 (DecompileAt3: cleared stale instructions at entry) =====


byte * case823_ActorBuff_sub19ccd98_lv2_19cf5e4(byte *param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  char cVar6;
  long lVar7;
  undefined8 unaff_x30;
  byte abStack_34 [4];
  
  puVar5 = PTR_07319548;
  if ((uint)*param_1 != (param_2 & 0xff)) {
    if (*(long *)PTR_07319548 == 0) {
      *(undefined8 *)PTR_07319548 = unaff_x30;
      puVar4 = PTR_07317d28;
      *PTR_07317d28 = 0;
      cVar6 = func_0x01b4868c(0);
      if ((cVar6 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) {
        if (0 < *(int *)(param_1 + -0x1ec)) {
          lVar7 = func_0x01b4635c();
          lVar7 = *(long *)(lVar7 + 0x38);
          *(int *)(lVar7 + 0x10) = *(int *)(param_1 + -0x1ec) + 0x8d;
          func_0x01b4907c(lVar7,param_2,0x24c8);
        }
      }
      *puVar4 = 0;
      *(undefined8 *)puVar5 = 0;
    }
    else {
      cVar6 = func_0x01b4868c(0);
      if ((cVar6 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) {
        if (0 < *(int *)(param_1 + -0x1ec)) {
          lVar7 = func_0x01b4635c();
          lVar7 = *(long *)(lVar7 + 0x38);
          *(int *)(lVar7 + 0x10) = *(int *)(param_1 + -0x1ec) + 0x8d;
          func_0x01b4907c(lVar7,param_2,0x24c8);
        }
      }
    }
    abStack_34[0] = (byte)param_2;
    *param_1 = abStack_34[0];
    uVar2 = *(uint *)(param_1 + -0x1f0);
    uVar3 = uVar2;
    if ((int)uVar2 < 0) {
      uVar3 = *(uint *)(param_1 + (-0x1f8 - (long)(short)uVar2));
    }
    uVar1 = 0;
    if ((int)uVar2 < 0) {
      uVar1 = uVar2 >> 0x10 & 0x7fff;
    }
    if ((int)uVar3 < 0) {
      func_0x01b83618(0,1,&UNK_0574b398,0x100000074746472,uVar3);
    }
    else if (uVar3 != 0) {
      func_0x01b1d810(uVar3,uVar1,0x10,abStack_34);
    }
  }
  return param_1;
}

