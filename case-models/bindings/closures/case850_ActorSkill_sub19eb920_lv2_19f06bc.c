// ===== case850_ActorSkill_sub19eb920_lv2_19f06bc @ 019f06bc (DecompileAt3: cleared stale instructions at entry) =====


void case850_ActorSkill_sub19eb920_lv2_19f06bc
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
    func_0x019f07f4(param_2,*param_3,0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
LAB_019f076c:
    *(undefined8 *)puVar2 = unaff_x30;
    puVar1 = PTR_07317d28;
    *PTR_07317d28 = 0;
    func_0x019f0970(param_2 + 1,param_3[1],0);
    *puVar1 = 0;
    *(undefined8 *)puVar2 = 0;
  }
  else {
    func_0x019f07f4(param_2,*param_3,0);
    if (*(long *)puVar2 == 0) goto LAB_019f076c;
    func_0x019f0970(param_2 + 1,param_3[1],0);
    if (*(long *)puVar2 != 0) {
      func_0x019f0aec(param_2 + 2,param_3[2],0);
      goto LAB_019f07c0;
    }
  }
  *(undefined8 *)puVar2 = unaff_x30;
  puVar1 = PTR_07317d28;
  *PTR_07317d28 = 0;
  func_0x019f0aec(param_2 + 2,param_3[2],0);
  *puVar1 = 0;
  *(undefined8 *)puVar2 = 0;
LAB_019f07c0:
  param_1[1] = 0;
  param_1[2] = 0;
  *param_1 = *param_2;
  param_1[1] = param_2[1];
  param_1[2] = param_2[2];
  return;
}

