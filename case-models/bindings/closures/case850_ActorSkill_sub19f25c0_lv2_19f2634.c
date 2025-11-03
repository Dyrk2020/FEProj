// ===== case850_ActorSkill_sub19f25c0_lv2_19f2634 @ 019f2634 (DecompileAt3: cleared stale instructions at entry) =====


undefined8 case850_ActorSkill_sub19f25c0_lv2_19f2634(undefined8 param_1,long param_2,long *param_3)

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
    func_0x0174cd64(param_1,lVar1,0x736dd72);
  }
  return 1;
}

