// ===== case57-ForgeAttrPool @ 0169588c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case57-ForgeAttrPool


void case57_ForgeAttrPool(undefined8 param_1)

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
  func_0x0176ed44(&uStack_30,&"ForgeAttrPool",&uStack_40,0x736d101);
  uVar2 = func_0x0176e6cc(&uStack_30,&"id",&UNK_0176e8b4,0,&UNK_0176e8bc,0);
  uVar2 = func_0x0176e6cc(uVar2,&"contentType",&UNK_0176e8c4,0,&UNK_0176e8cc,0);
  uVar2 = func_0x0176e6cc(uVar2,&"attr1",&UNK_0176e8d4,0,&UNK_0176e8dc,0);
  uVar2 = func_0x0176e8e4(uVar2,&"baseValue1",&UNK_0176eacc,0,&UNK_0176ead4,0);
  uVar2 = func_0x0176e6cc(uVar2,&"attr2",&UNK_0176eadc,0,&UNK_0176eae4,0);
  uVar2 = func_0x0176e8e4(uVar2,&"baseValue2",&UNK_0176eaec,0,&UNK_0176eaf4,0);
  uVar2 = func_0x0176e6cc(uVar2,&"equipmentId",&UNK_0176eafc,0,&UNK_0176eb04,0);
  uVar2 = func_0x0176e6cc(uVar2,&"rejectTags",&UNK_0176eb0c,0,&UNK_0176eb14,0);
  uVar2 = func_0x0176e6cc(uVar2,&"rejectAttackType",&UNK_0176eb1c,0,&UNK_0176eb24,0);
  uVar2 = func_0x0176eb2c(uVar2,&"isRare",&UNK_0176ed14,0,&UNK_0176ed1c,0);
  uVar2 = func_0x0176e6cc(uVar2,&"rankRequirement",&UNK_0176ed24,0,&UNK_0176ed2c,0);
  puVar3 = (undefined8 *)func_0x0176e6cc(uVar2,&"minimumLayer",&UNK_0176ed34,0,&UNK_0176ed3c,0);
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

