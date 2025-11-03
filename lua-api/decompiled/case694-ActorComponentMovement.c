// ===== case694-ActorComponentMovement @ 0171d5a8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case694-ActorComponentMovement


void case694_ActorComponentMovement(undefined8 param_1)

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
  func_0x01957d64(&uStack_30,&"ActorComponentMovement",&uStack_40,0x736d101);
  uVar2 = func_0x01957474(&uStack_30,&"isMoveInput",&UNK_0195765c,0,&UNK_01957664,0);
  uVar2 = func_0x01957474(uVar2,&"isMoveRotateState",&UNK_0195766c,0,&UNK_01957674,0);
  uVar2 = func_0x01957474(uVar2,&"bEnableLog",&UNK_0195767c,0,&UNK_01957684,0);
  uVar2 = func_0x0195768c(uVar2,&"moveDestination",&UNK_01957874,0,&UNK_01957888,0);
  uVar2 = func_0x0195768c(uVar2,&"nextDestination",&UNK_019578a4,0,&UNK_019578b8,0);
  uVar2 = func_0x0195768c(uVar2,&"lastCorrectedInput",&UNK_019578d4,0,&UNK_019578e8,0);
  uVar2 = func_0x0195768c(uVar2,&"lastMoveForward",&UNK_0195790c,0,&UNK_01957920,0);
  uVar2 = func_0x0195768c(uVar2,&"previousMoveForward",&UNK_01957944,0,&UNK_01957958,0);
  uVar2 = func_0x0195768c(uVar2,&"correctMoveForward",&UNK_01957974,0,&UNK_01957988,0);
  uVar2 = func_0x0195768c(uVar2,&"_joystickInput",&UNK_019579a4,0,&UNK_019579b8,0);
  uVar2 = func_0x0195768c(uVar2,&"_lastJoystickInput",&UNK_019579dc,0,&UNK_019579f0,0);
  uVar2 = func_0x0195768c(uVar2,&"skillForward",&UNK_01957a14,0,&UNK_01957a2c,0);
  uVar2 = func_0x01957a50(uVar2,&"skillFPForwardType",&UNK_01957c38,0,&UNK_01957c40,0);
  uVar2 = func_0x01957a50(uVar2,&"moveFrameCount",&UNK_01957c5c,0,&UNK_01957c64,0);
  uVar2 = func_0x01957a50(uVar2,&"lastManualTickFrameCount",&UNK_01957cfc,0,&UNK_01957d04,0);
  uVar2 = func_0x01957474(uVar2,&"forceStationaryMovable",&UNK_01957d0c,0,&UNK_01957d14,0);
  uVar2 = func_0x01957474(uVar2,&"ignoreModActorSpeed",&UNK_01957d30,0,&UNK_01957d38,0);
  puVar3 = (undefined8 *)func_0x01957474(uVar2,&"isIgnoreSdfCollision",&UNK_01957d54,0,&UNK_01957d5c,0);
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

