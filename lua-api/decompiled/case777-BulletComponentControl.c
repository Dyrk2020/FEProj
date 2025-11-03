// ===== case777-BulletComponentControl @ 0172fdc8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case777-BulletComponentControl


void case777_BulletComponentControl(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x019a5400(&uStack_30,&"BulletComponentControl",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_019a46c4;
  func_0x0124ec90(uStack_30,&UNK_019a57c4,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"bullet");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"bullet");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x019a46cc(&uStack_30,&"minTurnSpeed",&UNK_019a48b4,0,&UNK_019a48bc,0);
  uVar4 = func_0x019a46cc(uVar4,&"maxTurnSpeed",&UNK_019a48c4,0,&UNK_019a48cc,0);
  uVar4 = func_0x019a48d4(uVar4,&"isUpdateSpeed",&UNK_019a4abc,0,&UNK_019a4ac4,0);
  uVar4 = func_0x019a4acc(uVar4,&"minTurnSpeedVar",&UNK_019a4cb4,0,0,0);
  uVar4 = func_0x019a4acc(uVar4,&"maxTurnSpeedVar",&UNK_019a4cbc,0,0,0);
  uVar4 = func_0x019a46cc(uVar4,&"maxAngle",&UNK_019a4cc4,0,&UNK_019a4ccc,0);
  uVar4 = func_0x019a46cc(uVar4,&"curAngle",&UNK_019a4d2c,0,&UNK_019a4d34,0);
  uVar4 = func_0x019a4d94(uVar4,&"initForward",&UNK_019a4f7c,0,&UNK_019a4f90,0);
  uVar4 = func_0x019a4d94(uVar4,&"targetForward",&UNK_019a4fac,0,&UNK_019a4fc0,0);
  uVar4 = func_0x019a48d4(uVar4,&"isCaculateIndicatorForward",&UNK_019a4fe4,0,&UNK_019a4fec,0);
  uVar4 = func_0x019a4d94(uVar4,&"currentIndicatorShowForward",&UNK_019a5008,0,&UNK_019a501c,0);
  uVar4 = func_0x019a48d4(uVar4,&"canHandleWhenFakeDie",&UNK_019a5040,0,&UNK_019a5048,0);
  uVar4 = func_0x019a5050(uVar4,&"turnDirSign",&UNK_019a5238,0,&UNK_019a5240,0);
  uVar4 = func_0x019a46cc(uVar4,&"maxRotateZ",&UNK_019a52d0,0,&UNK_019a52d8,0);
  puVar3 = (undefined8 *)func_0x019a46cc(uVar4,&"rotateZSpeed",&UNK_019a5368,0,&UNK_019a5370,0);
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

