// ===== case852_SkillUseObj_sub19f3864_lv2_19f4850 @ 019f4850 (DecompileAt3: cleared stale instructions at entry) =====


int * case852_SkillUseObj_sub19f3864_lv2_19f4850(int *param_1,int param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  char cVar3;
  long lVar4;
  undefined8 unaff_x30;
  
  puVar2 = PTR_07319548;
  if (*param_1 != param_2) {
    if (*(long *)PTR_07319548 == 0) {
      *(undefined8 *)PTR_07319548 = unaff_x30;
      puVar1 = PTR_07317d28;
      *PTR_07317d28 = 0;
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < param_1[-0x1f])) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = param_1[-0x1f] + 0x27;
        func_0x01b490fc(lVar4,param_2,0x476);
      }
      *puVar1 = 0;
      *(undefined8 *)puVar2 = 0;
    }
    else {
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < param_1[-0x1f])) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = param_1[-0x1f] + 0x27;
        func_0x01b490fc(lVar4,param_2,0x476);
      }
    }
    *param_1 = param_2;
  }
  return param_1;
}

