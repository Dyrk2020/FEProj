// ===== case629-BattlePlayerCommercialItem @ 0170e560 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case629-BattlePlayerCommercialItem


void case629_BattlePlayerCommercialItem(undefined8 param_1)

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
  func_0x0190a7ec(&uStack_30,&"BattlePlayerCommercialItem",&uStack_40,0x736d101);
  uVar2 = func_0x0190a550(&uStack_30,&"itemID",&UNK_0190a738,0,&UNK_0190a740,0);
  uVar2 = func_0x0190a550(uVar2,&"totalCount",&UNK_0190a75c,0,&UNK_0190a764,0);
  uVar2 = func_0x0190a550(uVar2,&"relatedID",&UNK_0190a780,0,&UNK_0190a788,0);
  uVar2 = func_0x0190a550(uVar2,&"relatedType",&UNK_0190a7a4,0,&UNK_0190a7ac,0);
  puVar3 = (undefined8 *)func_0x0190a550(uVar2,&"currentUseCount",&UNK_0190a7c8,0,&UNK_0190a7d0,0);
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

