// ===== case517-InputBufferActionLogic @ 016f7290 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case517-InputBufferActionLogic


void case517_InputBufferActionLogic(undefined8 param_1)

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
  func_0x018a7c94(&uStack_30,&"InputBufferActionLogic",&uStack_40,0x736d101);
  uVar2 = func_0x018a7514(&uStack_30,&"minCastTime",&UNK_018a76fc,0,&UNK_018a7704,0);
  uVar2 = func_0x018a7514(uVar2,&"dequeueReason",&UNK_018a7720,0,&UNK_018a7728,0);
  uVar2 = func_0x018a7744(uVar2,&"isAutoAttack",&UNK_018a792c,0,&UNK_018a7934,0);
  uVar2 = func_0x018a7744(uVar2,&"isCancelled",&UNK_018a7950,0,&UNK_018a7958,0);
  uVar2 = func_0x018a7744(uVar2,&"forbidTickNow",&UNK_018a7974,0,&UNK_018a797c,0);
  uVar2 = func_0x018a7744(uVar2,&"isUsed",&UNK_018a7998,0,&UNK_018a79a0,0);
  uVar2 = func_0x018a7744(uVar2,&"isDriveByInput",&UNK_018a79a8,0,&UNK_018a79b0,0);
  uVar2 = func_0x018a7744(uVar2,&"isFollowTooClose",&UNK_018a79b8,0,&UNK_018a79c0,0);
  uVar2 = func_0x018a7744(uVar2,&"isCharSkillCompolete2Cast",&UNK_018a7a50,0,&UNK_018a7a58,0);
  uVar2 = func_0x018a7744(uVar2,&"ignoreCastTime",&UNK_018a7a74,0,&UNK_018a7a7c,0);
  uVar2 = func_0x018a7744(uVar2,&"ignoreAudio",&UNK_018a7a84,0,&UNK_018a7a8c,0);
  puVar3 = (undefined8 *)func_0x018a7a94(uVar2,&"copiedSkill",&UNK_018a7c7c,0,&UNK_018a7c88,0);
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

