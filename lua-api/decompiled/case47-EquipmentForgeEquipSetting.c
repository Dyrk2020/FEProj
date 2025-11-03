// ===== case47-EquipmentForgeEquipSetting @ 01694178 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case47-EquipmentForgeEquipSetting


void case47_EquipmentForgeEquipSetting(undefined8 param_1)

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
  func_0x01768f4c(&uStack_30,&"EquipmentForgeEquipSetting",&uStack_40,0x736d101);
  uVar2 = func_0x01768afc(&uStack_30,&"equipID",&UNK_01768ce4,0,&UNK_01768cec,0);
  uVar2 = func_0x01768afc(uVar2,&"equipTags",&UNK_01768cf4,0,&UNK_01768cfc,0);
  uVar2 = func_0x01768d04(uVar2,&"includeTag",&UNK_01768eec,0,&UNK_01768ef4,0);
  uVar2 = func_0x01768d04(uVar2,&"excludeTag",&UNK_01768efc,0,&UNK_01768f04,0);
  uVar2 = func_0x01768d04(uVar2,&"includeTagSelected",&UNK_01768f0c,0,&UNK_01768f14,0);
  uVar2 = func_0x01768d04(uVar2,&"excludeTagSelected",&UNK_01768f1c,0,&UNK_01768f24,0);
  uVar2 = func_0x01768d04(uVar2,&"includeTagRemove",&UNK_01768f2c,0,&UNK_01768f34,0);
  puVar3 = (undefined8 *)func_0x01768d04(uVar2,&"excludeTagRemove",&UNK_01768f3c,0,&UNK_01768f44,0);
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

