// ===== case715-HeroBaseAttrData @ 01723674 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case715-HeroBaseAttrData


void case715_HeroBaseAttrData(undefined8 param_1)

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
  func_0x0196f7f0(&uStack_30,&"HeroBaseAttrData",&uStack_40,0x736d101);
  uVar2 = func_0x0196f4e8(&uStack_30,&"seqID",&UNK_0196f6d0,0,&UNK_0196f6d8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"heroBaseAttrKey",&UNK_0196f6e0,0,&UNK_0196f6e8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"heroId",&UNK_0196f6f0,0,&UNK_0196f6f8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"vision",&UNK_0196f700,0,&UNK_0196f708,0);
  uVar2 = func_0x0196f4e8(uVar2,&"expShareRadius",&UNK_0196f710,0,&UNK_0196f718,0);
  uVar2 = func_0x0196f4e8(uVar2,&"warnRadius",&UNK_0196f720,0,&UNK_0196f728,0);
  uVar2 = func_0x0196f4e8(uVar2,&"attackValueBase",&UNK_0196f730,0,&UNK_0196f738,0);
  uVar2 = func_0x0196f4e8(uVar2,&"spellPowerBase",&UNK_0196f740,0,&UNK_0196f748,0);
  uVar2 = func_0x0196f4e8(uVar2,&"hpBase",&UNK_0196f750,0,&UNK_0196f758,0);
  uVar2 = func_0x0196f4e8(uVar2,&"mpBase",&UNK_0196f760,0,&UNK_0196f768,0);
  uVar2 = func_0x0196f4e8(uVar2,&"armorBase",&UNK_0196f770,0,&UNK_0196f778,0);
  uVar2 = func_0x0196f4e8(uVar2,&"spellResistBase",&UNK_0196f780,0,&UNK_0196f788,0);
  uVar2 = func_0x0196f4e8(uVar2,&"hpRecoverBase",&UNK_0196f790,0,&UNK_0196f798,0);
  uVar2 = func_0x0196f4e8(uVar2,&"mpRecoverBase",&UNK_0196f7a0,0,&UNK_0196f7a8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"attackSpeedBase",&UNK_0196f7b0,0,&UNK_0196f7b8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"speedBase",&UNK_0196f7c0,0,&UNK_0196f7c8,0);
  uVar2 = func_0x0196f4e8(uVar2,&"criDamageRateBase",&UNK_0196f7d0,0,&UNK_0196f7d8,0);
  puVar3 = (undefined8 *)func_0x0196f4e8(uVar2,&"requiredAttr",&UNK_0196f7e0,0,&UNK_0196f7e8,0);
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

