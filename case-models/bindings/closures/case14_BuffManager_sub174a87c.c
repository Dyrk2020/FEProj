// ===== case14_BuffManager_sub174a87c @ 0174a87c (DecompileAt3: cleared stale instructions at entry) =====


/* WARNING: Possible PIC construction at 0x0174a8a0: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x0174a8a4) */

void case14_BuffManager_sub174a87c(undefined8 param_1)

{
  undefined *puVar1;
  undefined8 *puVar2;
  
  puVar2 = (undefined8 *)func_0x01250920(0x18);
  puVar1 = PTR_073162b0 + 0x18;
  *puVar2 = 0x6b7c5c8;
  puVar2[1] = param_1;
  puVar2[2] = puVar1;
  func_0x0174a988(puVar2,param_1,0xffffffff);
  return;
}

