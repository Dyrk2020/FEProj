// ===== case298-AISkillToMonster @ 016be928 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case298-AISkillToMonster


void case298_AISkillToMonster(undefined8 param_1)

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
  func_0x017f48f0(&uStack_30,&"AISkillToMonster",&uStack_40,0x736d101);
  uVar2 = func_0x017f42c8(&uStack_30,&"ID",&UNK_017f44b0,0,&UNK_017f44b8,0);
  uVar2 = func_0x017f44c0(uVar2,&"BaseDamage",&UNK_017f46a8,0,&UNK_017f46b0,0);
  uVar2 = func_0x017f46b8(uVar2,&"DamageType",&UNK_017f48a0,0,&UNK_017f48a8,0);
  uVar2 = func_0x017f42c8(uVar2,&"ADRatio",&UNK_017f48b0,0,&UNK_017f48b8,0);
  uVar2 = func_0x017f42c8(uVar2,&"APRatio",&UNK_017f48c0,0,&UNK_017f48c8,0);
  uVar2 = func_0x017f46b8(uVar2,&"MoreDamageType",&UNK_017f48d0,0,&UNK_017f48d8,0);
  puVar3 = (undefined8 *)func_0x017f42c8(uVar2,&"MoreRatio",&UNK_017f48e0,0,&UNK_017f48e8,0);
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

