// ===== case850_ActorSkill_sub19e9714_lv2_19eca80 @ 019eca80 (DecompileAt3: cleared stale instructions at entry) =====


byte * case850_ActorSkill_sub19e9714_lv2_19eca80(byte *param_1,uint param_2)

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
      if (((cVar6 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) &&
         (0 < *(int *)(param_1 + -0x12))) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = *(int *)(param_1 + -0x12) + 9;
        func_0x01b4907c(lVar7,param_2,0x7f5);
      }
      *puVar4 = 0;
      *(undefined8 *)puVar5 = 0;
    }
    else {
      cVar6 = func_0x01b4868c(0);
      if (((cVar6 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) &&
         (0 < *(int *)(param_1 + -0x12))) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = *(int *)(param_1 + -0x12) + 9;
        func_0x01b4907c(lVar7,param_2,0x7f5);
      }
    }
    uVar3 = *(uint *)(param_1 + -0x16);
    abStack_34[0] = (byte)param_2;
    *param_1 = abStack_34[0];
    uVar2 = uVar3;
    if ((int)uVar3 < 0) {
      uVar2 = *(uint *)(param_1 + (-0x1e - (long)(short)uVar3));
    }
    uVar1 = 0;
    if ((int)uVar3 < 0) {
      uVar1 = uVar3 >> 0x10 & 0x7fff;
    }
    if ((int)uVar2 < 0) {
      func_0x01b83618(0,1,&UNK_0574b398,0x100000074746472,uVar2);
    }
    else if (uVar2 != 0) {
      func_0x01b1d810(uVar2,uVar1,5,abStack_34);
    }
  }
  return param_1;
}

