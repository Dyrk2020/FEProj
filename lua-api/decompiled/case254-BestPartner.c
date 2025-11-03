// ===== case254-BestPartner @ 016b75d8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case254-BestPartner


void case254_BestPartner(undefined8 param_1)

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
  func_0x017d9a7c(&uStack_30,&"BestPartner",&uStack_40,0x736d101);
  uVar2 = func_0x017d9834(&uStack_30,&"bestPartnerTypeID",&UNK_017d9a1c,0,&UNK_017d9a24,0);
  uVar2 = func_0x017d9834(uVar2,&"gameResultType",&UNK_017d9a2c,0,&UNK_017d9a34,0);
  uVar2 = func_0x017d9834(uVar2,&"conditionParam1",&UNK_017d9a3c,0,&UNK_017d9a44,0);
  uVar2 = func_0x017d9834(uVar2,&"conditionParam2",&UNK_017d9a4c,0,&UNK_017d9a54,0);
  uVar2 = func_0x017d9834(uVar2,&"conditionParam3",&UNK_017d9a5c,0,&UNK_017d9a64,0);
  puVar3 = (undefined8 *)func_0x017d9834(uVar2,&"priority",&UNK_017d9a6c,0,&UNK_017d9a74,0);
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

