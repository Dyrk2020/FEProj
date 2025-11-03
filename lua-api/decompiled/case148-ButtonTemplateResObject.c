// ===== case148-ButtonTemplateResObject @ 016a5a9c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case148-ButtonTemplateResObject


void case148_ButtonTemplateResObject(undefined8 param_1)

{
  uint uVar1;
  undefined8 uVar2;
  undefined8 *puVar3;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x0179f104(&uStack_30,&UNK_0575ffeb,&uStack_40,0x736d101);
  uVar2 = func_0x0179ecd4(&uStack_30,&"iButtonNoAim",&UNK_0179eebc,0,&UNK_0179eec4,0);
  uVar2 = func_0x0179ecd4(uVar2,&"iFaceFocusPoint",&UNK_0179eecc,0,&UNK_0179eed4,0);
  uVar2 = func_0x0179ecd4(uVar2,&"iFaceFocusPointInDeadZone",&UNK_0179eedc,0,&UNK_0179eee4,0);
  uVar2 = func_0x0179ecd4(uVar2,&"iAfterMoveDeadZoneRadius",&UNK_0179eeec,0,&UNK_0179eef4,0);
  uVar2 = func_0x0179ecd4(uVar2,&"iButtonFollowsOnDeadzoneExit",&UNK_0179eefc,0,&UNK_0179ef04,0);
  puVar3 = (undefined8 *)func_0x0179ef0c(uVar2,&"bJoystickIgnoreCanCast",&UNK_0179f0f4,0,&UNK_0179f0fc,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  func_0x0124c4d0(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

