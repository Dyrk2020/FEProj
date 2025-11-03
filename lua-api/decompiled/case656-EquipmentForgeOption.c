// ===== case656-EquipmentForgeOption @ 01715a14 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case656-EquipmentForgeOption


void case656_EquipmentForgeOption(undefined8 param_1)

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
  func_0x0192c0b8(&uStack_30,&"EquipmentForgeOption",&uStack_40,0x736d101);
  uVar2 = func_0x0192bba4(&uStack_30,&"id",&UNK_0192bd8c,0,&UNK_0192bd94,0);
  uVar2 = func_0x0192bba4(uVar2,&"equip1",&UNK_0192bdb0,0,&UNK_0192bdb8,0);
  uVar2 = func_0x0192bba4(uVar2,&"equip2",&UNK_0192bdd4,0,&UNK_0192bddc,0);
  uVar2 = func_0x0192bba4(uVar2,&"equip3",&UNK_0192bdf8,0,&UNK_0192be00,0);
  uVar2 = func_0x0192be1c(uVar2,&"isRainbow",&UNK_0192c004,0,&UNK_0192c00c,0);
  uVar2 = func_0x0192bba4(uVar2,&"requestQuality",&UNK_0192c028,0,&UNK_0192c030,0);
  uVar2 = func_0x0192bba4(uVar2,&"requestRequireEquipTags",&UNK_0192c04c,0,&UNK_0192c054,0);
  uVar2 = func_0x0192be1c(uVar2,&"requestExcludeActiveEquip",&UNK_0192c070,0,&UNK_0192c078,0);
  puVar3 = (undefined8 *)func_0x0192bba4(uVar2,&"sourceType",&UNK_0192c094,0,&UNK_0192c09c,0);
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

