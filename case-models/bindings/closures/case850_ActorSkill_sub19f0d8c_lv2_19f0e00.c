// ===== case850_ActorSkill_sub19f0d8c_lv2_19f0e00 @ 019f0e00 (DecompileAt3: cleared stale instructions at entry) =====


undefined8 case850_ActorSkill_sub19f0d8c_lv2_19f0e00(undefined8 param_1,long param_2,long *param_3)

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
    func_0x0174cd64(param_1,lVar1,0x736de35);
  }
  return 1;
}

