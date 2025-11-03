// ===== case14_BuffManager_sub175656c_lv2_174ae88 @ 0174ae88 (DecompileAt3: cleared stale instructions at entry) =====


void case14_BuffManager_sub175656c_lv2_174ae88(undefined8 *param_1,undefined8 param_2,ulong param_3)

{
  undefined *puVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  undefined8 uVar6;
  long *plVar7;
  int *piVar8;
  long lVar9;
  undefined1 auStack_68 [8];
  long lStack_60;
  undefined1 auStack_58 [8];
  undefined1 auStack_50 [16];
  
  puVar1 = &UNK_0575da4b;
  if ((param_3 & 1) == 0) {
    puVar1 = &UNK_059afdfa;
  }
  func_0x0571b104(&lStack_60,puVar1,auStack_68);
  uVar6 = strlen(param_2);
  plVar7 = (long *)func_0x0571bd20(&lStack_60,param_2,uVar6);
  puVar1 = PTR_073162b0;
  lVar9 = *plVar7;
  *plVar7 = (long)(PTR_073162b0 + 0x18);
  if ((undefined *)(lStack_60 + -0x18) != puVar1) {
    piVar8 = (int *)(lStack_60 + -8);
    if (PTR_pthread_create_0731c4d8 == (undefined *)0x0) {
      iVar5 = *piVar8;
      *piVar8 = iVar5 + -1;
    }
    else {
      do {
        iVar5 = *piVar8;
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(piVar8,0x10);
        if (bVar3) {
          *piVar8 = iVar5 + -1;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
    }
    if (iVar5 < 1) {
      func_0x0571e8f0((undefined *)(lStack_60 + -0x18),auStack_50);
    }
  }
  lua_createtable(*param_1,0,0);
  lua_pushvalue(*param_1,0xffffffff);
  lua_setmetatable(*param_1,0xfffffffe);
  lua_pushstring(*param_1,lVar9);
  lua_rawsetp(*param_1,0xfffffffe,0x71);
  lua_pushcclosure(*param_1,&UNK_0174b4a0,0);
  uVar6 = *param_1;
  uVar4 = lua_absindex(uVar6,0xfffffffe);
  lua_pushstring(uVar6,&UNK_0575da52);
  lua_rotate(uVar6,0xfffffffe,1);
  lua_rawset(uVar6,uVar4);
  lua_pushcclosure(*param_1,&UNK_0174b5f8,0);
  uVar6 = *param_1;
  uVar4 = lua_absindex(uVar6,0xfffffffe);
  lua_pushstring(uVar6,&UNK_0575da5a);
  lua_rotate(uVar6,0xfffffffe,1);
  lua_rawset(uVar6,uVar4);
  lua_createtable(*param_1,0,0);
  lua_rawsetp(*param_1,0xfffffffe,0x6e7);
  if (((bRam000000000736d108 & 1) == 0) && (iVar5 = __cxa_guard_acquire(0x736d108), iVar5 != 0)) {
    cRam000000000736d102 = '\x01';
    __cxa_guard_release(0x736d108);
  }
  if (cRam000000000736d102 != '\0') {
    lua_pushnil(*param_1);
    uVar6 = *param_1;
    uVar4 = lua_absindex(uVar6,0xfffffffe);
    lua_pushstring(uVar6,&UNK_0575da65);
    lua_rotate(uVar6,0xfffffffe,1);
    lua_rawset(uVar6,uVar4);
  }
  if ((undefined *)(lVar9 + -0x18) != puVar1) {
    piVar8 = (int *)(lVar9 + -8);
    if (PTR_pthread_create_0731c4d8 == (undefined *)0x0) {
      iVar5 = *piVar8;
      *piVar8 = iVar5 + -1;
    }
    else {
      do {
        iVar5 = *piVar8;
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(piVar8,0x10);
        if (bVar3) {
          *piVar8 = iVar5 + -1;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
    }
    if (iVar5 < 1) {
      func_0x0571e8f0((undefined *)(lVar9 + -0x18),auStack_58);
    }
  }
  return;
}

