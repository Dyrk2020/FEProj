// ===== case295-AIGlobalSettingResObject @ 016be3b8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case295-AIGlobalSettingResObject


void case295_AIGlobalSettingResObject(undefined8 param_1)

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
  func_0x017f2fec(&uStack_30,&"AIGlobalSettingResObject",&uStack_40,0x736d101);
  uVar2 = func_0x017f2dc4(&uStack_30,&"foringProb",&UNK_017f2fac,0,&UNK_017f2fb4,0);
  uVar2 = func_0x017f2dc4(uVar2,&"isBraveChooseForgingProb",&UNK_017f2fbc,0,&UNK_017f2fc4,0);
  uVar2 = func_0x017f2dc4(uVar2,&"isUseForgingChooseForgingProb",&UNK_017f2fcc,0,&UNK_017f2fd4,0);
  puVar3 = (undefined8 *)func_0x017f2dc4(uVar2,&"commonChooseForgingProb",&UNK_017f2fdc,0,&UNK_017f2fe4,0);
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

