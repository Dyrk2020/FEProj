// ===== case357-DcGlobalSPDataItem @ 016d1f64 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case357-DcGlobalSPDataItem


void case357_DcGlobalSPDataItem(undefined8 param_1)

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
  func_0x01821254(&uStack_30,&"DcGlobalSPDataItem",&uStack_40,0x736d101);
  uVar2 = func_0x01820c4c(&uStack_30,&"gameTime",&UNK_01820e34,0,&UNK_01820e3c,0);
  uVar2 = func_0x01820c4c(uVar2,&"totalSPCount",&UNK_01820e44,0,&UNK_01820e4c,0);
  uVar2 = func_0x01820c4c(uVar2,&"winSPCount",&UNK_01820e54,0,&UNK_01820e5c,0);
  uVar2 = func_0x01820e64(uVar2,&"winSPMoney",&UNK_0182104c,0,&UNK_01821054,0);
  puVar3 = (undefined8 *)func_0x0182105c(uVar2,&"result",&UNK_01821244,0,&UNK_0182124c,0);
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

