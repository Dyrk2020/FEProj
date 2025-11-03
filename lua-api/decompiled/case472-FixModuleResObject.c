// ===== case472-FixModuleResObject @ 016edbbc =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case472-FixModuleResObject


void case472_FixModuleResObject(undefined8 param_1)

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
  func_0x01879b28(&uStack_30,&"FixModuleResObject",&uStack_40,0x736d101);
  uVar2 = func_0x01879718(&uStack_30,&"fixAttrType",&UNK_01879900,0,&UNK_01879908,0);
  uVar2 = func_0x01879718(uVar2,&"fixValueType",&UNK_01879910,0,&UNK_01879918,0);
  uVar2 = func_0x01879718(uVar2,&"fixAlgorithm",&UNK_01879920,0,&UNK_01879928,0);
  puVar3 = (undefined8 *)func_0x01879930(uVar2,&"fixValue",&UNK_01879b18,0,&UNK_01879b20,0);
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

