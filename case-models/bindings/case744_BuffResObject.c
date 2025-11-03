// ===== case744_BuffResObject @ 0172787c (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case744-BuffResObject


void case744_BuffResObject(undefined8 param_1)

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
  func_0x01983270(&uStack_40,&UNK_057637c0,&uStack_50,0x736d101);
  uVar3 = func_0x01982730(&uStack_40,&UNK_0576fd50,&UNK_01982918,0,&UNK_01982920,0);
  uVar3 = func_0x01982928(uVar3,&UNK_05770275,&UNK_01982b10,0,&UNK_01982b18,0);
  uVar3 = func_0x01982928(uVar3,&UNK_05770289,&UNK_01982b20,0,&UNK_01982b28,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577029c,&UNK_01982b30,0,&UNK_01982b38,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057702b6,&UNK_01982b40,0,&UNK_01982b48,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057702cb,&UNK_01982b50,0,&UNK_01982b58,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057702e0,&UNK_01982b60,0,&UNK_01982b68,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057702f3,&UNK_01982d58,0,&UNK_01982d60,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057702fd,&UNK_01982d68,0,&UNK_01982d70,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_0577030d,&UNK_01982d78,0,&UNK_01982d80,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05766464,&UNK_01982d88,0,&UNK_01982d90,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_0577031b,&UNK_01982d98,0,&UNK_01982da0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770326,&UNK_01982da8,0,&UNK_01982db0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05766b8a,&UNK_01982db8,0,&UNK_01982dc0,0);
  uVar3 = func_0x01982dc8(uVar3,&UNK_0576fcf4,&UNK_01982fb0,0,&UNK_01982fb8,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770334,&UNK_01982fc0,0,&UNK_01982fc8,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770342,&UNK_01982fd0,0,&UNK_01982fd8,0);
  uVar3 = func_0x01982dc8(uVar3,&UNK_0576fce3,&UNK_01982fe0,0,&UNK_01982fe8,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_0577034d,&UNK_01982ff0,0,&UNK_01982ff8,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577035d,&UNK_01983000,0,&UNK_01983008,0);
  puVar4 = (undefined8 *)func_0x01982b70(uVar3,&UNK_05770370,&UNK_01983010,0,&UNK_01983018,0);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01983020;
  lua_pushcclosure(*puVar4,&UNK_01983f0c,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05770380);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05770380);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = func_0x01982928(puVar4,&UNK_0577038e,&UNK_01983028,0,&UNK_01983030,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577039d,&UNK_01983038,0,&UNK_01983040,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057703b1,&UNK_01983048,0,&UNK_01983050,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057703c4,&UNK_01983058,0,&UNK_01983060,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057701f3,&UNK_01983068,0,&UNK_01983070,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057703d7,&UNK_01983078,0,&UNK_01983080,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057703e0,&UNK_01983088,0,&UNK_01983090,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057703f6,&UNK_01983098,0,&UNK_019830a0,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577040a,&UNK_019830a8,0,&UNK_019830b0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770418,&UNK_019830b8,0,&UNK_019830c0,0);
  uVar3 = func_0x01982928(uVar3,&UNK_05770422,&UNK_019830c8,0,&UNK_019830d0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770430,&UNK_019830d8,0,&UNK_019830e0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770443,&UNK_019830e8,0,&UNK_019830f0,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577044d,&UNK_019830f8,0,&UNK_01983100,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577045f,&UNK_01983108,0,&UNK_01983110,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770472,&UNK_01983118,0,&UNK_01983120,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_0577048d,&UNK_01983128,0,&UNK_01983130,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_0577049f,&UNK_01983138,0,&UNK_01983140,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704ae,&UNK_01983148,0,&UNK_01983150,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704ba,&UNK_01983158,0,&UNK_01983160,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704cc,&UNK_01983168,0,&UNK_01983170,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704d6,&UNK_01983178,0,&UNK_01983180,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704df,&UNK_01983188,0,&UNK_01983190,0);
  uVar3 = func_0x01982928(uVar3,&UNK_057704eb,&UNK_01983198,0,&UNK_019831a0,0);
  uVar3 = func_0x01982928(uVar3,&UNK_05767804,&UNK_019831a8,0,&UNK_019831b0,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_057704f8,&UNK_019831b8,0,&UNK_019831c0,0);
  uVar3 = func_0x01982dc8(uVar3,&UNK_05770507,&UNK_019831c8,0,&UNK_019831d0,0);
  puVar4 = (undefined8 *)func_0x01982dc8(uVar3,&UNK_05770516,&UNK_019831d8,0,&UNK_019831e0,0);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019831e8;
  lua_pushcclosure(*puVar4,&UNK_01984030,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05767164);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05767164);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = func_0x01982b70(puVar4,&UNK_0577052c,&UNK_019831f0,0,&UNK_019831f8,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770546,&UNK_01983200,0,&UNK_01983208,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0576fca3,&UNK_01983210,0,&UNK_01983218,0);
  uVar3 = func_0x01982928(uVar3,&UNK_05770560,&UNK_01983220,0,&UNK_01983228,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0577056d,&UNK_01983230,0,&UNK_01983238,0);
  uVar3 = func_0x01982928(uVar3,&UNK_0576fcb3,&UNK_01983240,0,&UNK_01983248,0);
  uVar3 = func_0x01982b70(uVar3,&UNK_05770582,&UNK_01983250,0,&UNK_01983258,0);
  puVar4 = (undefined8 *)func_0x01982928(uVar3,&UNK_05770599,&UNK_01983260,0,&UNK_01983268,0);
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

