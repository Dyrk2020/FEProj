// ===== case25_LuaStructMaker @ 01690690 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case25-LuaStructMaker


void case25_LuaStructMaker(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 *puVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  lua_atpanic(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  lua_getglobal(param_1,&UNK_0575da06);
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x0175be74(&uStack_40,&UNK_0575de55,&uStack_50,0x736d101);
  uVar3 = func_0x0175bc64(&uStack_40,&UNK_0575de64,&UNK_0175be4c,0,&UNK_0175be54,0);
  puVar4 = (undefined8 *)func_0x0175bc64(uVar3,&UNK_0575de71,&UNK_0175be5c,0,&UNK_0175be64,0);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0175be6c;
  lua_pushcclosure(*puVar4,&UNK_0175c458,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575de82);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575de82);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  lua_settop(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    lua_settop(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_38) {
    lua_settop(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    lua_settop(uStack_50,~uStack_48);
  }
  return;
}

