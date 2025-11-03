// ===== case685-HeroLvExpData @ 0171a25c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case685-HeroLvExpData


void case685_HeroLvExpData(undefined8 param_1)

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
  func_0x0194b9ec(&uStack_30,&"HeroLvExpData",&uStack_40,0x736d101);
  uVar2 = func_0x0194b7a4(&uStack_30,&"seqID",&UNK_0194b98c,0,&UNK_0194b994,0);
  uVar2 = func_0x0194b7a4(uVar2,&"heroLvExpKey",&UNK_0194b99c,0,&UNK_0194b9a4,0);
  uVar2 = func_0x0194b7a4(uVar2,&"level",&UNK_0194b9ac,0,&UNK_0194b9b4,0);
  uVar2 = func_0x0194b7a4(uVar2,&"lvUpExp",&UNK_0194b9bc,0,&UNK_0194b9c4,0);
  uVar2 = func_0x0194b7a4(uVar2,&"killExp",&UNK_0194b9cc,0,&UNK_0194b9d4,0);
  puVar3 = (undefined8 *)func_0x0194b7a4(uVar2,&"growthAttrFix",&UNK_0194b9dc,0,&UNK_0194b9e4,0);
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

