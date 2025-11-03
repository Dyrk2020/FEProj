// ===== case308-AIEffectConfig @ 016bff18 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case308-AIEffectConfig


void case308_AIEffectConfig(undefined8 param_1)

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
  func_0x017f9914(&uStack_30,&"AIEffectConfig",&uStack_40,0x736d101);
  uVar2 = func_0x017f9474(&uStack_30,&"ID",&UNK_017f965c,0,&UNK_017f9664,0);
  uVar2 = func_0x017f9474(uVar2,&"EffectID",&UNK_017f966c,0,&UNK_017f9674,0);
  uVar2 = func_0x017f9474(uVar2,&"Level",&UNK_017f967c,0,&UNK_017f9684,0);
  uVar2 = func_0x017f968c(uVar2,&"EffectType",&UNK_017f9874,0,&UNK_017f987c,0);
  uVar2 = func_0x017f9474(uVar2,&"BaseValue",&UNK_017f9884,0,&UNK_017f988c,0);
  uVar2 = func_0x017f9474(uVar2,&"ADRatio1",&UNK_017f9894,0,&UNK_017f989c,0);
  uVar2 = func_0x017f9474(uVar2,&"APRatio1",&UNK_017f98a4,0,&UNK_017f98ac,0);
  uVar2 = func_0x017f9474(uVar2,&"MoreFactor1",&UNK_017f98b4,0,&UNK_017f98bc,0);
  uVar2 = func_0x017f9474(uVar2,&"MoreRatio1",&UNK_017f98c4,0,&UNK_017f98cc,0);
  uVar2 = func_0x017f9474(uVar2,&"ADRatio2",&UNK_017f98d4,0,&UNK_017f98dc,0);
  uVar2 = func_0x017f9474(uVar2,&"APRatio2",&UNK_017f98e4,0,&UNK_017f98ec,0);
  uVar2 = func_0x017f9474(uVar2,&"MoreFactor2",&UNK_017f98f4,0,&UNK_017f98fc,0);
  puVar3 = (undefined8 *)func_0x017f9474(uVar2,&"MoreRatio2",&UNK_017f9904,0,&UNK_017f990c,0);
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

