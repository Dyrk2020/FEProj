// ===== case852_SkillUseObj_sub19f37fc_lv2_19f43a8 @ 019f43a8 (DecompileAt3: cleared stale instructions at entry) =====


byte * case852_SkillUseObj_sub19f37fc_lv2_19f43a8(byte *param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  char cVar3;
  long lVar4;
  undefined8 unaff_x30;
  
  puVar2 = PTR_07319548;
  if ((uint)*param_1 != (param_2 & 0xff)) {
    if (*(long *)PTR_07319548 == 0) {
      *(undefined8 *)PTR_07319548 = unaff_x30;
      puVar1 = PTR_07317d28;
      *PTR_07317d28 = 0;
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) &&
         (0 < *(int *)(param_1 + -0x44))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)(param_1 + -0x44) + 0x22;
        func_0x01b4907c(lVar4,param_2,0x472);
      }
      *puVar1 = 0;
      *(undefined8 *)puVar2 = 0;
    }
    else {
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) &&
         (0 < *(int *)(param_1 + -0x44))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)(param_1 + -0x44) + 0x22;
        func_0x01b4907c(lVar4,param_2,0x472);
      }
    }
    *param_1 = (byte)param_2;
  }
  return param_1;
}

