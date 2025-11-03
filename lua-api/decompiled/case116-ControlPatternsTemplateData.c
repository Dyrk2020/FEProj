// ===== case116-ControlPatternsTemplateData @ 0169f8d4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case116-ControlPatternsTemplateData


void case116_ControlPatternsTemplateData(undefined8 param_1)

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
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x0178fc3c(&uStack_40,&"ControlPatternsTemplateData",&uStack_50,0x736d101);
  uVar3 = func_0x0178f6e4(&uStack_40,&"chAimType",&UNK_0178f8cc,0,&UNK_0178f8d4,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chAimUpdate",&UNK_0178f8dc,0,&UNK_0178f8e4,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iAimSelectUnit",&UNK_0178fad4,0,&UNK_0178fadc,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iFacingOffset",&UNK_0178fae4,0,&UNK_0178faec,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iOffsetAim",&UNK_0178faf4,0,&UNK_0178fafc,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iPositionTargetType",&UNK_0178fb04,0,&UNK_0178fb0c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iPositionCastValue",&UNK_0178fb14,0,&UNK_0178fb1c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iTapSelection",&UNK_0178fb24,0,&UNK_0178fb2c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iTapMinionSelection",&UNK_0178fb34,0,&UNK_0178fb3c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iTapTowerSelection",&UNK_0178fb44,0,&UNK_0178fb4c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iFlickSelection",&UNK_0178fb54,0,&UNK_0178fb5c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iAimSelection",&UNK_0178fb64,0,&UNK_0178fb6c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iButtonDownTarget",&UNK_0178fb74,0,&UNK_0178fb7c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iRequiresOffsetDirection",&UNK_0178fb84,0,&UNK_0178fb8c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iRequiresSelectedDirection",&UNK_0178fb94,0,&UNK_0178fb9c,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iRequiresSelectedPostion",&UNK_0178fba4,0,&UNK_0178fbac,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iRequiresSelectedUnit",&UNK_0178fbb4,0,&UNK_0178fbbc,0);
  uVar3 = func_0x0178f8ec(uVar3,&"iRequiresSelectedTargetOrDirection",&UNK_0178fbc4,0,&UNK_0178fbcc,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chButtonDownEvent",&UNK_0178fbd4,0,&UNK_0178fbdc,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chButtonUpEvent",&UNK_0178fbe4,0,&UNK_0178fbec,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chCancelUpEvent",&UNK_0178fbf4,0,&UNK_0178fbfc,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chButtonLongDownEvent",&UNK_0178fc04,0,&UNK_0178fc0c,0);
  uVar3 = func_0x0178f6e4(uVar3,&"chButtonAimDownEvent",&UNK_0178fc14,0,&UNK_0178fc1c,0);
  puVar4 = (undefined8 *)func_0x0178f8ec(uVar3,&"iLongDownDelayTime",&UNK_0178fc24,0,&UNK_0178fc2c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0178fc34;
  func_0x0124ec90(*puVar4,&UNK_0179046c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"paramsData");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"paramsData");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  func_0x0124c4d0(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

