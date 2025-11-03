// ===== case526-ActorSpellShieldHitInfo @ 016f8a5c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case526-ActorSpellShieldHitInfo


void case526_ActorSpellShieldHitInfo(undefined8 param_1)

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
  func_0x018adf8c(&uStack_30,&"ActorSpellShieldHitInfo",&uStack_40,0x736d101);
  uVar2 = func_0x018add44(&uStack_30,&"skillUseGuid",&UNK_018adf2c,0,&UNK_018adf34,0);
  uVar2 = func_0x018add44(uVar2,&"hitFrameCount",&UNK_018adf3c,0,&UNK_018adf44,0);
  uVar2 = func_0x018add44(uVar2,&"skillResId",&UNK_018adf4c,0,&UNK_018adf54,0);
  uVar2 = func_0x018add44(uVar2,&"hitCount",&UNK_018adf5c,0,&UNK_018adf64,0);
  uVar2 = func_0x018add44(uVar2,&"giverId",&UNK_018adf6c,0,&UNK_018adf74,0);
  puVar3 = (undefined8 *)func_0x018add44(uVar2,&"targetId",&UNK_018adf7c,0,&UNK_018adf84,0);
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

