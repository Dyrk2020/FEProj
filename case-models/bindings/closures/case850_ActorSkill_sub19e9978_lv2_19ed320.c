// ===== case850_ActorSkill_sub19e9978_lv2_19ed320 @ 019ed320 (DecompileAt3: cleared stale instructions at entry) =====


int * case850_ActorSkill_sub19e9978_lv2_19ed320(int *param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  char cVar6;
  long lVar7;
  undefined8 unaff_x30;
  int iStack_34;
  
  puVar5 = PTR_07319548;
  if (*param_1 != param_2) {
    if (*(long *)PTR_07319548 == 0) {
      *(undefined8 *)PTR_07319548 = unaff_x30;
      puVar4 = PTR_07317d28;
      *PTR_07317d28 = 0;
      cVar6 = func_0x01b4868c(0);
      if (((cVar6 != '\0') && (*param_1 != param_2)) && (0 < param_1[-0x14])) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = param_1[-0x14] + 0x14;
        func_0x01b490fc(lVar7,param_2,0x7ff);
      }
      *puVar4 = 0;
      *(undefined8 *)puVar5 = 0;
    }
    else {
      cVar6 = func_0x01b4868c(0);
      if (((cVar6 != '\0') && (*param_1 != param_2)) && (0 < param_1[-0x14])) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = param_1[-0x14] + 0x14;
        func_0x01b490fc(lVar7,param_2,0x7ff);
      }
    }
    uVar3 = param_1[-0x15];
    *param_1 = param_2;
    uVar2 = uVar3;
    if ((int)uVar3 < 0) {
      uVar2 = *(uint *)((long)param_1 + (-0x5c - (long)(short)uVar3));
    }
    uVar1 = 0;
    if ((int)uVar3 < 0) {
      uVar1 = uVar3 >> 0x10 & 0x7fff;
    }
    iStack_34 = param_2;
    if ((int)uVar2 < 0) {
      func_0x01b83618(0,1,&UNK_0574b398,0x100000074746472,uVar2);
    }
    else if (uVar2 != 0) {
      func_0x01b1d8c0(uVar2,uVar1,9,&iStack_34);
    }
  }
  return param_1;
}

