// ===== case722-CustomVariable @ 0172473c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case722-CustomVariable


void case722_CustomVariable(undefined8 param_1)

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
  func_0x01975000(&uStack_30,&"CustomVariable",&uStack_40,0x736d101);
  uVar2 = func_0x019749c8(&uStack_30,&"id",&UNK_01974bb0,0,&UNK_01974bb8,0);
  uVar2 = func_0x019749c8(uVar2,&"variableType",&UNK_01974bc0,0,&UNK_01974bc8,0);
  uVar2 = func_0x01974bd0(uVar2,&"initialValue",&UNK_01974db8,0,&UNK_01974dc0,0);
  uVar2 = func_0x019749c8(uVar2,&"assetResId",&UNK_01974dc8,0,&UNK_01974dd0,0);
  uVar2 = func_0x01974dd8(uVar2,&"possessTransfer",&UNK_01974fc0,0,&UNK_01974fc8,0);
  uVar2 = func_0x01974dd8(uVar2,&"isActorVar",&UNK_01974fd0,0,&UNK_01974fd8,0);
  uVar2 = func_0x01974dd8(uVar2,&"geAddEquipmentSavingSyncE",&UNK_01974fe0,0,&UNK_01974fe8,0);
  puVar3 = (undefined8 *)func_0x01974dd8(uVar2,&"vingSyncE",&UNK_01974ff0,0,&UNK_01974ff8,0);
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

