// ===== case852_SkillUseObj @ 017403a8 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case852-SkillUseObj


void case852_SkillUseObj(undefined8 param_1)

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
  func_0x019f38d4(&uStack_40,&UNK_0577356c,&uStack_50,0x736d101);
  uVar3 = func_0x019f33dc(&uStack_40,&UNK_05773578,&UNK_019f35c4,0,&UNK_019f35cc,0);
  uVar3 = func_0x019f33dc(uVar3,&UNK_0575b2f8,&UNK_019f35e8,0,&UNK_019f35f0,0);
  puVar4 = (undefined8 *)func_0x019f360c(uVar3,&UNK_05773580,&UNK_019f37f4,0,&UNK_019f37fc,0);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019f3818;
  lua_pushcclosure(*puVar4,&UNK_019f44a0,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05771235);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_05771235);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)lua_newuserdata(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019f3820;
  lua_pushcclosure(*puVar4,&UNK_019f45c4,1);
  lua_pushvalue(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffb,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_057728e9);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  lua_rawgetp(uVar3,0xfffffffd,0x6e7);
  lua_pushvalue(uVar3,0xfffffffe);
  uVar2 = lua_absindex(uVar3,0xfffffffe);
  lua_pushstring(uVar3,&UNK_057728e9);
  lua_rotate(uVar3,0xfffffffe,1);
  lua_rawset(uVar3,uVar2);
  lua_settop(uVar3,0xfffffffd);
  uVar3 = func_0x019f33dc(puVar4,&UNK_0577358a,&UNK_019f3828,0,&UNK_019f3830,0);
  uVar3 = func_0x019f360c(uVar3,&UNK_05773598,&UNK_019f384c,0,&UNK_019f3854,0);
  uVar3 = func_0x019f33dc(uVar3,&UNK_0577359f,&UNK_019f385c,0,&UNK_019f3864,0);
  uVar3 = func_0x019f33dc(uVar3,&UNK_057735a5,&UNK_019f3880,0,&UNK_019f3888,0);
  uVar3 = func_0x019f33dc(uVar3,&UNK_057735b2,&UNK_019f38a4,0,&UNK_019f38ac,0);
  uVar3 = func_0x019f33dc(uVar3,&UNK_057735c4,&UNK_019f38b4,0,&UNK_019f38bc,0);
  puVar4 = (undefined8 *)func_0x019f33dc(uVar3,&UNK_057723e9,&UNK_019f38c4,0,&UNK_019f38cc,0);
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

