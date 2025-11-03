// ===== case397_DataFrame_sub18477fc_lv2_1847870 @ 01847870 (DecompileAt3: cleared stale instructions at entry) =====


undefined8 case397_DataFrame_sub18477fc_lv2_1847870(undefined8 param_1,long param_2,long *param_3)

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
    func_0x0174cd64(param_1,lVar1,0x736d73b);
  }
  return 1;
}

