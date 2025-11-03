// ===== case14_BuffManager_sub174a87c_lv2_174a988 @ 0174a988 (DecompileAt3: cleared stale instructions at entry) =====


void case14_BuffManager_sub174a87c_lv2_174a988(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  undefined *puVar4;
  
  iVar1 = lua_gettop(*(undefined8 *)(param_1 + 8));
  if (iVar1 < 1) {
    puVar4 = &UNK_05754439;
    uVar3 = 0xd;
  }
  else {
    puVar2 = (undefined *)lua_tolstring(*(undefined8 *)(param_1 + 8),0xffffffff,0);
    puVar4 = &UNK_059afdfa;
    if (puVar2 != (undefined *)0x0) {
      puVar4 = puVar2;
    }
    uVar3 = strlen(puVar4);
  }
  func_0x0571d6d8(param_1 + 0x10,puVar4,uVar3);
  return;
}

