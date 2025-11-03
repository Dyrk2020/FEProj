// ===== case158-EquipShopSchemeBase @ 016a75e4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case158-EquipShopSchemeBase


void case158_EquipShopSchemeBase(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x017a4000(&uStack_30,&"EquipShopSchemeBase",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_017a3a00;
  func_0x0124ec90(uStack_30,&UNK_017a43c4,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"equip");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"equip");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x017a3a08(&uStack_30,&"equipSortInShop",&UNK_017a3bf0,0,&UNK_017a3bf8,0);
  uVar4 = func_0x017a3c00(uVar4,&"isAllEnable",&UNK_017a3de8,0,&UNK_017a3df0,0);
  uVar4 = func_0x017a3df8(uVar4,&"upVersion",&UNK_017a3fe0,0,&UNK_017a3fe8,0);
  puVar3 = (undefined8 *)func_0x017a3df8(uVar4,&"downVersion",&UNK_017a3ff0,0,&UNK_017a3ff8,0);
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

