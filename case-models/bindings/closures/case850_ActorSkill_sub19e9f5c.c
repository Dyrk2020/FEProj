// ===== case850_ActorSkill_sub19e9f5c @ 019e9f5c (DecompileAt3: cleared stale instructions at entry) =====


void case850_ActorSkill_sub19e9f5c(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 unaff_x30;
  
  puVar2 = PTR_07319548;
  if (*(long *)PTR_07319548 != 0) {
    func_0x019ee338(param_1 + 0xb8,param_2,0);
    return;
  }
  *(undefined8 *)PTR_07319548 = unaff_x30;
  puVar1 = PTR_07317d28;
  *PTR_07317d28 = 0;
  func_0x019ee338(param_1 + 0xb8,param_2,0);
  *puVar1 = 0;
  *(undefined8 *)puVar2 = 0;
  return;
}

