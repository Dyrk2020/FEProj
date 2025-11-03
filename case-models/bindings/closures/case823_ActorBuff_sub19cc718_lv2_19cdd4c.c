// ===== case823_ActorBuff_sub19cc718_lv2_19cdd4c @ 019cdd4c (DecompileAt3: cleared stale instructions at entry) =====


int * case823_ActorBuff_sub19cc718_lv2_19cdd4c(int *param_1,int param_2)

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
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < param_1[-5])) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = param_1[-5] + 0xc;
        func_0x01b48ffc(lVar4,param_2,0x248a);
      }
      *puVar1 = 0;
      *(undefined8 *)puVar2 = 0;
    }
    else {
      cVar3 = func_0x01b4868c(0);
      if (((cVar3 != '\0') && (*param_1 != param_2)) && (0 < param_1[-5])) {
        lVar4 = func_0x01b4635c();
        lVar4 = *(long *)(lVar4 + 0x38);
        *(int *)(lVar4 + 0x10) = param_1[-5] + 0xc;
        func_0x01b48ffc(lVar4,param_2,0x248a);
      }
    }
    *param_1 = param_2;
  }
  return param_1;
}

