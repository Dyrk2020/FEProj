// ===== case185-EvacuateItemResObject @ 016ac8b8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case185-EvacuateItemResObject


void case185_EvacuateItemResObject(undefined8 param_1)

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
  func_0x017b39e4(&uStack_30,&"EvacuateItemResObject",&uStack_40,0x736d101);
  uVar2 = func_0x017b35b4(&uStack_30,&"itemType",&UNK_017b379c,0,&UNK_017b37a4,0);
  uVar2 = func_0x017b37ac(uVar2,&"itemSubType",&UNK_017b3994,0,&UNK_017b399c,0);
  uVar2 = func_0x017b35b4(uVar2,&"maxPileCount",&UNK_017b39a4,0,&UNK_017b39ac,0);
  uVar2 = func_0x017b35b4(uVar2,&"saleMoney",&UNK_017b39b4,0,&UNK_017b39bc,0);
  uVar2 = func_0x017b35b4(uVar2,&"effectType",&UNK_017b39c4,0,&UNK_017b39cc,0);
  puVar3 = (undefined8 *)func_0x017b35b4(uVar2,&"effectParam",&UNK_017b39d4,0,&UNK_017b39dc,0);
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

