// ===== case850_ActorSkill_sub19eb45c_lv2_19ef2dc @ 019ef2dc (DecompileAt3: cleared stale instructions at entry) =====


long * case850_ActorSkill_sub19eb45c_lv2_19ef2dc(long *param_1,long param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined *puVar4;
  undefined *puVar5;
  char cVar6;
  long lVar7;
  undefined8 unaff_x30;
  long lStack_38;
  
  puVar5 = PTR_07319548;
  if (*param_1 != param_2) {
    if (*(long *)PTR_07319548 == 0) {
      *(undefined8 *)PTR_07319548 = unaff_x30;
      puVar4 = PTR_07317d28;
      *PTR_07317d28 = 0;
      cVar6 = func_0x01b4868c(0);
      if (((cVar6 != '\0') && (*param_1 != param_2)) && (0 < *(int *)((long)param_1 + -0x11c))) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = *(int *)((long)param_1 + -0x11c) + 0x9d;
        func_0x01b490bc(lVar7,param_2,0x82d);
      }
      *puVar4 = 0;
      *(undefined8 *)puVar5 = 0;
    }
    else {
      cVar6 = func_0x01b4868c(0);
      if (((cVar6 != '\0') && (*param_1 != param_2)) && (0 < *(int *)((long)param_1 + -0x11c))) {
        lVar7 = func_0x01b4635c();
        lVar7 = *(long *)(lVar7 + 0x38);
        *(int *)(lVar7 + 0x10) = *(int *)((long)param_1 + -0x11c) + 0x9d;
        func_0x01b490bc(lVar7,param_2,0x82d);
      }
    }
    *param_1 = param_2;
    uVar2 = *(uint *)(param_1 + -0x24);
    uVar3 = uVar2;
    if ((int)uVar2 < 0) {
      uVar3 = *(uint *)((long)param_1 + (-0x128 - (long)(short)uVar2));
    }
    uVar1 = 0;
    if ((int)uVar2 < 0) {
      uVar1 = uVar2 >> 0x10 & 0x7fff;
    }
    lStack_38 = param_2;
    if ((int)uVar3 < 0) {
      func_0x01b83618(0,1,&UNK_0574b398,0x100000074746472,uVar3);
    }
    else if (uVar3 != 0) {
      func_0x01b1d968(uVar3,uVar1,0x1a,&lStack_38);
    }
  }
  return param_1;
}

