// ===== case15_SkillManager_sub1756f4c_lv2_1756fc0 @ 01756fc0 (DecompileAt3: cleared stale instructions at entry) =====


undefined8 case15_SkillManager_sub1756f4c_lv2_1756fc0(undefined8 param_1,long param_2,long *param_3)

{
  long lVar1;
  code *pcVar2;
  
  pcVar2 = (code *)*param_3;
  if ((param_3[1] & 1U) != 0) {
    pcVar2 = *(code **)(pcVar2 + *(long *)(param_2 + (param_3[1] >> 1)));
  }
  lVar1 = (*pcVar2)();
  if (lVar1 == 0) {
    lua_pushnil(param_1);
  }
  else {
    func_0x0174cd64(param_1,lVar1,0x736d180);
  }
  return 1;
}

