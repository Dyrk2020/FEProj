// ===== case14_BuffManager_sub175656c_lv2_174b264 @ 0174b264 (DecompileAt3: cleared stale instructions at entry) =====


void case14_BuffManager_sub175656c_lv2_174b264(undefined8 *param_1,undefined8 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined8 uVar3;
  
  lua_createtable(*param_1,0,0);
  lua_createtable(*param_1,0,0);
  lua_pushvalue(*param_1,0xffffffff);
  lua_setmetatable(*param_1,0xfffffffd);
  lua_rotate(*param_1,0xfffffffe,1);
  uVar3 = *param_1;
  uVar1 = lua_absindex(uVar3,0xfffffffb);
  lua_pushstring(uVar3,param_2);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar1);
  lua_pushcclosure(*param_1,&UNK_0174b4a0,0);
  uVar3 = *param_1;
  uVar1 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575da52);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar1);
  lua_pushcclosure(*param_1,&UNK_0174b7a4,0);
  uVar3 = *param_1;
  uVar1 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575da5a);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar1);
  lua_createtable(*param_1,0,0);
  lua_rawsetp(*param_1,0xfffffffe,0x6e7);
  lua_createtable(*param_1,0,0);
  lua_rawsetp(*param_1,0xfffffffe,0x5e7);
  lua_pushvalue(*param_1,0xfffffffe);
  lua_rawsetp(*param_1,0xfffffffe,0xc1a);
  if (((bRam000000000736d108 & 1) == 0) && (iVar2 = __cxa_guard_acquire(0x736d108), iVar2 != 0)) {
    cRam000000000736d102 = '\x01';
    __cxa_guard_release(0x736d108);
  }
  if (cRam000000000736d102 != '\0') {
    lua_pushnil(*param_1);
    uVar3 = *param_1;
    uVar1 = lua_absindex(uVar3,0xfffffffe);
    lua_pushstring(uVar3,&UNK_0575da65);
    lua_rotate(uVar3,0xfffffffe,1);
    lua_rawset(uVar3,uVar1);
  }
  return;
}

