// ===== case823_ActorBuff_sub19cef28_lv2_19cef9c @ 019cef9c (DecompileAt3: cleared stale instructions at entry) =====


undefined8 case823_ActorBuff_sub19cef28_lv2_19cef9c(undefined8 param_1,long param_2,long *param_3)

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
    func_0x0174cd64(param_1,lVar1,0x736dded);
  }
  return 1;
}

