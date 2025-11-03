// ===== case688-HeroComponentPlayerCtrl @ 0171aa98 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case688-HeroComponentPlayerCtrl


void case688_HeroComponentPlayerCtrl(undefined8 param_1)

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
  func_0x0194dc3c(&uStack_40,&"HeroComponentPlayerCtrl",&uStack_50,0x736d101);
  uVar3 = func_0x0194d508(&uStack_40,&"isAutoFindPathMoving",&UNK_0194d6f0,0,&UNK_0194d6f8,0);
  uVar3 = func_0x0194d508(uVar3,&"isForceMoveStart",&UNK_0194d700,0,&UNK_0194d708,0);
  uVar3 = func_0x0194d508(uVar3,&"isSwitchCtrlObject",&UNK_0194d710,0,&UNK_0194d718,0);
  uVar3 = func_0x0194d508(uVar3,&"isSkillCtrlObject",&UNK_0194d734,0,&UNK_0194d73c,0);
  uVar3 = func_0x0194d7cc(uVar3,&"lastMoveFrame",&UNK_0194d9b4,0,&UNK_0194d9bc,0);
  uVar3 = func_0x0194d7cc(uVar3,&"lastReceiveSkillFrame",&UNK_0194d9c4,0,&UNK_0194d9cc,0);
  uVar3 = func_0x0194d9d4(uVar3,&"lastResponseForward",&UNK_0194dbbc,0,&UNK_0194dbd0,0);
  uVar3 = func_0x0194d9d4(uVar3,&"controllLocalOffset",&UNK_0194dbec,0,&UNK_0194dc00,0);
  puVar4 = (undefined8 *)func_0x0194d508(uVar3,&"isForbidCameraFollow",&UNK_0194dc1c,0,&UNK_0194dc24,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0194dc2c;
  func_0x0124ec90(*puVar4,&UNK_0194e840,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"controlObject");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"controlObject");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0194dc34;
  func_0x0124ec90(*puVar4,&UNK_0194e964,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"globalOpRes");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"globalOpRes");
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

