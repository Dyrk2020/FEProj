// ===== case850_ActorSkill_sub19ebaec_lv2_19f1fe4 @ 019f1fe4 (DecompileAt3: cleared stale instructions at entry) =====


void case850_ActorSkill_sub19ebaec_lv2_19f1fe4
               (undefined8 *param_1,undefined8 *param_2,undefined8 *param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 unaff_x30;
  
  puVar2 = PTR_07319548;
  if (*(long *)PTR_07319548 == 0) {
    *(undefined8 *)PTR_07319548 = unaff_x30;
    puVar1 = PTR_07317d28;
    *PTR_07317d28 = 0;
    func_0x019f211c(param_2,*param_3,0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
LAB_019f2094:
    *(undefined8 *)puVar2 = unaff_x30;
    puVar1 = PTR_07317d28;
    *PTR_07317d28 = 0;
    func_0x019f222c(param_2 + 1,param_3[1],0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
  }
  else {
    func_0x019f211c(param_2,*param_3,0);
    if (*(long *)puVar2 == 0) goto LAB_019f2094;
    func_0x019f222c(param_2 + 1,param_3[1],0);
    if (*(long *)puVar2 != 0) {
      func_0x019f233c(param_2 + 2,param_3[2],0);
      goto LAB_019f20e8;
    }
  }
  *(undefined8 *)puVar2 = unaff_x30;
  puVar1 = PTR_07317d28;
  *PTR_07317d28 = 0;
  func_0x019f233c(param_2 + 2,param_3[2],0);
  *puVar1 = 0;
  *(undefined8 *)puVar2 = 0;
LAB_019f20e8:
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = *param_2;
  param_1[1] = param_2[1];
  param_1[2] = param_2[2];
  return;
}

