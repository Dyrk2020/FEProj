// ===== case850_ActorSkill_sub19e96f0_lv2_19ec988 @ 019ec988 (DecompileAt3: cleared stale instructions at entry) =====


byte * case850_ActorSkill_sub19e96f0_lv2_19ec988(byte *param_1,uint param_2)

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
         (0 < *(int *)(param_1 + -0x11))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)(param_1 + -0x11) + 8;
        func_0x01b4907c(lVar4,param_2,0x7f3);
      }
      *puVar1 = 0;
      *(undefined8 *)puVar2 = 0;
    }
    else {
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && ((uint)*param_1 != (param_2 & 0xff))) &&
         (0 < *(int *)(param_1 + -0x11))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)(param_1 + -0x11) + 8;
        func_0x01b4907c(lVar4,param_2,0x7f3);
      }
    }
    *param_1 = (byte)param_2;
  }
  return param_1;
}

