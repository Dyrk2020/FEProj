// ===== case536-HeroRandomGainMgr_GainData @ 016f9f24 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case536-HeroRandomGainMgr_GainData


void case536_HeroRandomGainMgr_GainData(undefined8 param_1)

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
  func_0x018b3a2c(&uStack_30,&"HeroRandomGainMgr_GainData",&uStack_40,0x736d101);
  uVar2 = func_0x018b349c(&uStack_30,&"resId",&UNK_018b3684,0,&UNK_018b368c,0);
  uVar2 = func_0x018b349c(uVar2,&"level",&UNK_018b36a8,0,&UNK_018b36b0,0);
  uVar2 = func_0x018b349c(uVar2,&"layerBuffId",&UNK_018b36cc,0,&UNK_018b36d4,0);
  uVar2 = func_0x018b349c(uVar2,&"gainPickIndex",&UNK_018b36f0,0,&UNK_018b36f8,0);
  uVar2 = func_0x018b349c(uVar2,&"gainScourceType",&UNK_018b3714,0,&UNK_018b371c,0);
  puVar3 = (undefined8 *)func_0x018b37ac(uVar2,&"needReport",&UNK_018b3994,0,&UNK_018b399c,0);
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

