// ===== case37_FEBattleContext @ 0169284c (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case37-FEBattleContext


void case37_FEBattleContext(undefined8 param_1)

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
  func_0x0176358c(&uStack_40,&UNK_0575e038,&uStack_50,0x736d101);
  uVar3 = func_0x01762a50(&uStack_40,&UNK_0575e048,&UNK_01762c38,0,&UNK_01762c44,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e063,&UNK_01762e38,0,&UNK_01762e44,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e078,&UNK_01762e50,0,&UNK_01762e5c,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e08a,&UNK_01762e68,0,&UNK_01762e74,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e09a,&UNK_01762e80,0,&UNK_01762e8c,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e0ac,&UNK_01762e98,0,&UNK_01762ea4,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e0ba,&UNK_01762eb0,0,&UNK_01762ebc,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e0ca,&UNK_01762ec8,0,&UNK_01762ed4,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_05945526,&UNK_01762ee0,0,&UNK_01762eec,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e0da,&UNK_01762ef8,0,&UNK_01762f04,0);
  uVar3 = func_0x01762f10(uVar3,&UNK_0575e0ed,&UNK_017630f8,0,&UNK_01763104,0);
  uVar3 = func_0x01762f10(uVar3,&UNK_0575e0fd,&UNK_01763110,0,&UNK_0176311c,0);
  puVar4 = (undefined8 *)func_0x01762a50(uVar3,&UNK_0575e104,&UNK_01763128,0,&UNK_01763134,0);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01763140;
  lua_pushcclosure(*puVar4,&UNK_01763fb0,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575e112);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_0575e112);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = func_0x01762a50(puVar4,&UNK_0575e11b,&UNK_0176314c,0,&UNK_01763158,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e129,&UNK_01763164,0,&UNK_01763170,0);
  uVar3 = func_0x01762f10(uVar3,&UNK_0575e134,&UNK_0176317c,0,&UNK_01763188,0);
  uVar3 = func_0x01763194(uVar3,&UNK_0575e13d,&UNK_0176337c,0,&UNK_01763388,0);
  uVar3 = func_0x01763194(uVar3,&UNK_0575e150,&UNK_01763394,0,&UNK_017633a0,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e168,&UNK_017633ac,0,&UNK_017633b8,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e17d,&UNK_017633c4,0,&UNK_017633d0,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e191,&UNK_017633dc,0,&UNK_017633e8,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e1ad,&UNK_017633f4,0,&UNK_01763400,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e1c6,&UNK_0176340c,0,&UNK_01763418,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e1dd,&UNK_01763424,0,&UNK_01763430,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e1f0,&UNK_0176343c,0,&UNK_01763448,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e204,&UNK_01763454,0,&UNK_01763460,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e214,&UNK_0176346c,0,&UNK_01763478,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e224,&UNK_01763484,0,&UNK_01763490,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e236,&UNK_0176349c,0,&UNK_017634a8,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e24e,&UNK_017634b4,0,&UNK_017634c0,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e268,&UNK_017634cc,0,&UNK_017634d8,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e27c,&UNK_017634e4,0,&UNK_017634f0,0);
  uVar3 = func_0x01762c50(uVar3,&UNK_0575e292,&UNK_017634fc,0,&UNK_01763508,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e2a5,&UNK_01763514,0,&UNK_01763520,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e2ac,&UNK_0176352c,0,&UNK_01763538,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e2b6,&UNK_01763544,0,&UNK_01763550,0);
  uVar3 = func_0x01762a50(uVar3,&UNK_0575e2c8,&UNK_0176355c,0,&UNK_01763568,0);
  puVar4 = (undefined8 *)func_0x01762a50(uVar3,&UNK_0575e2db,&UNK_01763574,0,&UNK_01763580,0);
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

