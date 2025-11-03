// ===== case850_ActorSkill_sub19eb724_lv2_19ef86c @ 019ef86c (DecompileAt3: cleared stale instructions at entry) =====


void case850_ActorSkill_sub19eb724_lv2_19ef86c
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
    func_0x019ef9a4(param_2,*param_3,0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
LAB_019ef91c:
    *(undefined8 *)puVar2 = unaff_x30;
    puVar1 = PTR_07317d28;
    *PTR_07317d28 = 0;
    func_0x019efb20(param_2 + 1,param_3[1],0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
  }
  else {
    func_0x019ef9a4(param_2,*param_3,0);
    if (*(long *)puVar2 == 0) goto LAB_019ef91c;
    func_0x019efb20(param_2 + 1,param_3[1],0);
    if (*(long *)puVar2 != 0) {
      func_0x019efc9c(param_2 + 2,param_3[2],0);
      goto LAB_019ef970;
    }
  }
  *(undefined8 *)puVar2 = unaff_x30;
  puVar1 = PTR_07317d28;
  *PTR_07317d28 = 0;
  func_0x019efc9c(param_2 + 2,param_3[2],0);
  *puVar1 = 0;
  *(undefined8 *)puVar2 = 0;
LAB_019ef970:
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = *param_2;
  param_1[1] = param_2[1];
  param_1[2] = param_2[2];
  return;
}

