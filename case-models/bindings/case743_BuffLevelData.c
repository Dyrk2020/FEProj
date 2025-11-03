// ===== case743_BuffLevelData @ 01727634 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case743-BuffLevelData


void case743_BuffLevelData(undefined8 param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  lua_atpanic(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  lua_getglobal(param_1,&UNK_0575da06);
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x01981a44(&uStack_30,&UNK_057701ff,&uStack_40,0x736d101);
  uVar2 = func_0x01981254(&uStack_30,&UNK_0577020d,&UNK_0198143c,0,&UNK_01981444,0);
  uVar2 = func_0x0198144c(uVar2,&UNK_057bc0ba,&UNK_01981634,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&UNK_0594a856,&UNK_0198163c,0,0,0);
  uVar2 = func_0x01981644(uVar2,&UNK_05770220,&UNK_0198182c,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&UNK_05770234,&UNK_01981834,0,0,0);
  uVar2 = func_0x01981644(uVar2,&UNK_05770243,&UNK_0198183c,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&UNK_05770255,&UNK_01981844,0,0,0);
  puVar3 = (undefined8 *)func_0x0198184c(uVar2,&UNK_05770265,&UNK_01981a34,0,&UNK_01981a3c,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  lua_settop(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    lua_settop(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_28) {
    lua_settop(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    lua_settop(uStack_40,~uStack_38);
  }
  return;
}

