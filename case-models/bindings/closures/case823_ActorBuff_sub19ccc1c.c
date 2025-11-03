// ===== case823_ActorBuff_sub19ccc1c @ 019ccc1c (DecompileAt3: cleared stale instructions at entry) =====


void case823_ActorBuff_sub19ccc1c(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 unaff_x30;
  
  puVar2 = PTR_07319548;
  if (*(long *)PTR_07319548 != 0) {
    func_0x019cec58(param_1 + 0x90,param_2,0);
    return;
  }
  *(undefined8 *)PTR_07319548 = unaff_x30;
  puVar1 = PTR_07317d28;
  *PTR_07317d28 = 0;
  func_0x019cec58(param_1 + 0x90,param_2,0);
  *puVar1 = 0;
  *(undefined8 *)puVar2 = 0;
  return;
}

