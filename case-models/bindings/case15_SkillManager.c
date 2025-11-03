// ===== case15_SkillManager @ 0168ee34 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case15-SkillManager


void case15_SkillManager(undefined8 param_1)

{
  undefined8 uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined8 *puVar4;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  lua_atpanic(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  lua_getglobal(param_1,&UNK_0575da06);
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x01756b88(&uStack_30,&UNK_0575dd69,&uStack_40,0x736d101);
  puVar4 = (undefined8 *)lua_newuserdata(uStack_30,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_01756b78;
  lua_pushcclosure(uStack_30,&UNK_01756f4c,1);
  lua_pushvalue(uStack_30,0xffffffff);
  uVar1 = uStack_30;
  lua_rawgetp(uStack_30,0xfffffffb,0x6e7);
  lua_pushvalue(uVar1,0xfffffffe);
  uVar3 = lua_absindex(uVar1,0xfffffffe);
  lua_pushstring(uVar1,&UNK_057621cd);
  lua_rotate(uVar1,0xfffffffe,1);
  lua_rawset(uVar1,uVar3);
  lua_settop(uVar1,0xfffffffd);
  uVar1 = uStack_30;
  lua_rawgetp(uStack_30,0xfffffffd,0x6e7);
  lua_pushvalue(uVar1,0xfffffffe);
  uVar3 = lua_absindex(uVar1,0xfffffffe);
  lua_pushstring(uVar1,&UNK_057621cd);
  lua_rotate(uVar1,0xfffffffe,1);
  lua_rawset(uVar1,uVar3);
  lua_settop(uVar1,0xfffffffd);
  puVar4 = (undefined8 *)lua_newuserdata(uStack_30,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_01756b80;
  lua_pushcclosure(uStack_30,&UNK_01757070,1);
  lua_pushvalue(uStack_30,0xffffffff);
  uVar1 = uStack_30;
  lua_rawgetp(uStack_30,0xfffffffb,0x6e7);
  lua_pushvalue(uVar1,0xfffffffe);
  uVar3 = lua_absindex(uVar1,0xfffffffe);
  lua_pushstring(uVar1,&UNK_0575dd76);
  lua_rotate(uVar1,0xfffffffe,1);
  lua_rawset(uVar1,uVar3);
  lua_settop(uVar1,0xfffffffd);
  uVar1 = uStack_30;
  lua_rawgetp(uStack_30,0xfffffffd,0x6e7);
  lua_pushvalue(uVar1,0xfffffffe);
  uVar3 = lua_absindex(uVar1,0xfffffffe);
  lua_pushstring(uVar1,&UNK_0575dd76);
  lua_rotate(uVar1,0xfffffffe,1);
  lua_rawset(uVar1,uVar3);
  lua_settop(uVar1,0xfffffffd);
  uStack_28 = uStack_28 - 3;
  lua_settop(uStack_30,0xfffffffc);
  uVar2 = uStack_28;
  uStack_28 = 0;
  if (0 < (int)uVar2) {
    lua_settop(uStack_30,~uVar2);
    if (0 < (int)uStack_28) {
      lua_settop(uStack_30,~uStack_28);
    }
  }
  if (0 < (int)uStack_38) {
    lua_settop(uStack_40,~uStack_38);
  }
  return;
}

