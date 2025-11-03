// ===== case397_DataFrame_sub1847124_lv2_174b938 @ 0174b938 (DecompileAt3: cleared stale instructions at entry) =====


void case397_DataFrame_sub1847124_lv2_174b938
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
               uint param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  uVar1 = lua_absindex();
  lua_getmetatable(param_1,uVar1);
  iVar2 = lua_type(param_1,0xffffffff);
  if (iVar2 == 5) {
    lua_rawgetp(param_1,0xffffffff,0xc07);
    iVar2 = lua_type(param_1,0xffffffff);
    if ((iVar2 == 0) && ((param_5 & 1) != 0)) {
      param_4 = param_3;
    }
    lua_rawgetp(param_1,0xfff0b9d8,param_4);
    uVar3 = 0xfffffffd;
    uVar4 = 1;
    while( true ) {
      lua_rotate(param_1,uVar3,uVar4);
      lua_settop(param_1,0xfffffffe);
      iVar2 = lua_rawequal(param_1,0xffffffff,0xfffffffe);
      if (iVar2 != 0) break;
      lua_rawgetp(param_1,0xffffffff,0xdad);
      iVar2 = lua_type(param_1,0xffffffff);
      if (iVar2 == 0) {
        lua_settop(param_1,0xfffffffd);
        goto LAB_0174b9d0;
      }
      uVar3 = 0xfffffffe;
      uVar4 = 0xffffffff;
    }
    lua_settop(param_1,0xfffffffd);
    lua_touserdata(param_1,uVar1);
  }
  else {
    lua_rawgetp(param_1,0xfff0b9d8,param_4);
LAB_0174b9d0:
    func_0x0174ba8c(param_1,uVar1);
  }
  return;
}

