// ===== case0-GainDeckAssetObject @ 0168c558 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case0_GainDeckAssetObject


void case0_GainDeckAssetObject(undefined8 param_1)

{
  uint uVar1;
  undefined8 *puVar2;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  beginclass_tmpl(&uStack_30,&"GainDeckAssetObject",&uStack_40,0x736d101);
  puVar2 = (undefined8 *)func_0x0174a684(&uStack_30,&"resID",&UNK_0174a86c,0,&UNK_0174a874,0);
  *(int *)(puVar2 + 1) = *(int *)(puVar2 + 1) + -3;
  func_0x0124c4d0(*puVar2,0xfffffffc);
  uVar1 = *(uint *)(puVar2 + 1);
  *(undefined4 *)(puVar2 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar2,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

