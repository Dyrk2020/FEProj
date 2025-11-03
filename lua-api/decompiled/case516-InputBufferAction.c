// ===== case516-InputBufferAction @ 016f6c48 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case516-InputBufferAction


void case516_InputBufferAction(undefined8 param_1)

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
  func_0x018a2f44(&uStack_40,&"InputBufferAction",&uStack_50,0x736d101);
  uVar3 = func_0x018a235c(&uStack_40,&"seq",&UNK_018a2544,0,&UNK_018a254c,0);
  uVar3 = func_0x018a235c(uVar3,&"skillIndex",&UNK_018a2568,0,&UNK_018a2570,0);
  uVar3 = func_0x018a235c(uVar3,&"buttonDownFrames",&UNK_018a258c,0,&UNK_018a2594,0);
  uVar3 = func_0x018a235c(uVar3,&"tapExtends",&UNK_018a25b0,0,&UNK_018a25b8,0);
  uVar3 = func_0x018a25d4(uVar3,&"syncTargetID",&UNK_018a27bc,0,&UNK_018a27c4,0);
  uVar3 = func_0x018a27e0(uVar3,&"targetPosZ",&UNK_018a29c8,0,&UNK_018a29d0,0);
  uVar3 = func_0x018a27e0(uVar3,&"buttonDownFrameCount",&UNK_018a29ec,0,&UNK_018a29f4,0);
  uVar3 = func_0x018a27e0(uVar3,&"timestamp",&UNK_018a2a10,0,&UNK_018a2a18,0);
  uVar3 = func_0x018a27e0(uVar3,&"lifespan",&UNK_018a2a34,0,&UNK_018a2a3c,0);
  uVar3 = func_0x018a27e0(uVar3,&"focusPosZ",&UNK_018a2a58,0,&UNK_018a2a60,0);
  uVar3 = func_0x018a27e0(uVar3,&"focusPosX",&UNK_018a2a7c,0,&UNK_018a2a84,0);
  uVar3 = func_0x018a27e0(uVar3,&"casterPosZ",&UNK_018a2aa0,0,&UNK_018a2aa8,0);
  uVar3 = func_0x018a27e0(uVar3,&"casterPosX",&UNK_018a2ac4,0,&UNK_018a2acc,0);
  uVar3 = func_0x018a27e0(uVar3,&"skillID",&UNK_018a2ae8,0,&UNK_018a2af0,0);
  uVar3 = func_0x018a27e0(uVar3,&"targetPosX",&UNK_018a2b0c,0,&UNK_018a2b14,0);
  uVar3 = func_0x018a2b30(uVar3,&"casterPos",&UNK_018a2d18,0,&UNK_018a2d2c,0);
  uVar3 = func_0x018a2b30(uVar3,&"moveForward",&UNK_018a2d50,0,&UNK_018a2d64,0);
  uVar3 = func_0x018a2b30(uVar3,&"casterDir",&UNK_018a2d88,0,&UNK_018a2d9c,0);
  uVar3 = func_0x018a2b30(uVar3,&"targetPos",&UNK_018a2dc0,0,&UNK_018a2dd4,0);
  uVar3 = func_0x018a2b30(uVar3,&"focusPos",&UNK_018a2df8,0,&UNK_018a2e0c,0);
  uVar3 = func_0x018a27e0(uVar3,&"type",&UNK_018a2e30,0,&UNK_018a2e38,0);
  uVar3 = func_0x018a27e0(uVar3,&"aimType",&UNK_018a2e54,0,&UNK_018a2e5c,0);
  uVar3 = func_0x018a235c(uVar3,&"forceInputSkill",&UNK_018a2e78,0,&UNK_018a2e80,0);
  uVar3 = func_0x018a235c(uVar3,&"flashNum",&UNK_018a2e9c,0,&UNK_018a2ea4,0);
  uVar3 = func_0x018a27e0(uVar3,&"forceInputSkillId",&UNK_018a2ec0,0,&UNK_018a2ec8,0);
  uVar3 = func_0x018a235c(uVar3,&"isNormalAttack",&UNK_018a2ee4,0,&UNK_018a2eec,0);
  uVar3 = func_0x018a235c(uVar3,&"isUseSkillOperateData",&UNK_018a2ef4,0,&UNK_018a2efc,0);
  puVar4 = (undefined8 *)func_0x018a235c(uVar3,&"extendParam",&UNK_018a2f18,0,&UNK_018a2f20,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_018a2f3c;
  func_0x0124ec90(*puVar4,&UNK_018a73f0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skill");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skill");
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

