// ===== case823_ActorBuff_sub19ccab4_lv2_19ce890 @ 019ce890 (DecompileAt3: cleared stale instructions at entry) =====


long * case823_ActorBuff_sub19ccab4_lv2_19ce890(long *param_1,long param_2)

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
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < *(int *)((long)param_1 + -0x54))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)((long)param_1 + -0x54) + 0x3c;
        func_0x01b490bc(lVar4,param_2,0x249c);
      }
      *puVar1 = 0;
      *(undefined8 *)puVar2 = 0;
    }
    else {
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < *(int *)((long)param_1 + -0x54))) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = *(int *)((long)param_1 + -0x54) + 0x3c;
        func_0x01b490bc(lVar4,param_2,0x249c);
      }
    }
    *param_1 = param_2;
  }
  return param_1;
}

