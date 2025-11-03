// ===== case699-SkillHurtInfo @ 01720b4c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case699-SkillHurtInfo


void case699_SkillHurtInfo(undefined8 param_1)

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
  func_0x0195f4c8(&uStack_30,&"SkillHurtInfo",&uStack_40,0x736d101);
  uVar2 = func_0x0195ed6c(&uStack_30,&"isKillSkill",&UNK_0195ef54,0,&UNK_0195ef5c,0);
  uVar2 = func_0x0195ef78(uVar2,&"actorResID",&UNK_0195f160,0,&UNK_0195f168,0);
  uVar2 = func_0x0195ef78(uVar2,&"oriSkillID",&UNK_0195f184,0,&UNK_0195f18c,0);
  uVar2 = func_0x0195f1a8(uVar2,&"totalHurtVal",&UNK_0195f390,0,&UNK_0195f398,0);
  uVar2 = func_0x0195f1a8(uVar2,&"totalAbsorbVal",&UNK_0195f3f8,0,&UNK_0195f400,0);
  puVar3 = (undefined8 *)func_0x0195f1a8(uVar2,&"totalRawHurtForAnalysis",&UNK_0195f460,0,&UNK_0195f468,0);
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

