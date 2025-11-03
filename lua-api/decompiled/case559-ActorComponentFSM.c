// ===== case559-ActorComponentFSM @ 016ff020 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case559-ActorComponentFSM


void case559_ActorComponentFSM(undefined8 param_1)

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
  func_0x018cbc14(&uStack_30,&"ActorComponentFSM",&uStack_40,0x736d101);
  uVar2 = func_0x018cb5b8(&uStack_30,&"currentState",&UNK_018cb7a0,0,0,0);
  uVar2 = func_0x018cb5b8(uVar2,&"lastState",&UNK_018cb7a8,0,0,0);
  uVar2 = func_0x018cb5b8(uVar2,&"recentlyState",&UNK_018cb7b0,0,0,0);
  uVar2 = func_0x018cb7b8(uVar2,&"lastAniId",&UNK_018cb9a0,0,&UNK_018cb9a8,0);
  uVar2 = func_0x018cb7b8(uVar2,&"currentAniId",&UNK_018cb9c4,0,&UNK_018cb9cc,0);
  uVar2 = func_0x018cb9e8(uVar2,&"isIgnoreIdleAniState",&UNK_018cbbd0,0,&UNK_018cbbd8,0);
  uVar2 = func_0x018cb9e8(uVar2,&"isKeepCurrentAniPlay",&UNK_018cbbe0,0,&UNK_018cbbe8,0);
  puVar3 = (undefined8 *)func_0x018cb9e8(uVar2,&"keepAniStateEqualsFSM",&UNK_018cbc04,0,&UNK_018cbc0c,0);
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

