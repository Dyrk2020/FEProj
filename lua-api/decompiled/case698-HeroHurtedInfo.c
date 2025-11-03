// ===== case698-HeroHurtedInfo @ 01720814 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case698-HeroHurtedInfo


void case698_HeroHurtedInfo(undefined8 param_1)

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
  func_0x0195dee4(&uStack_30,&"HeroHurtedInfo",&uStack_40,0x736d101);
  uVar2 = func_0x0195d7cc(&uStack_30,&"isHero",&UNK_0195d9b4,0,&UNK_0195d9bc,0);
  uVar2 = func_0x0195d9d8(uVar2,&"actorResID",&UNK_0195dbc0,0,&UNK_0195dbc8,0);
  uVar2 = func_0x0195d9d8(uVar2,&"teamCamp",&UNK_0195dbd0,0,&UNK_0195dbd8,0);
  uVar2 = func_0x0195dbe0(uVar2,&"hurtTime",&UNK_0195ddc8,0,&UNK_0195ddd0,0);
  uVar2 = func_0x0195dbe0(uVar2,&"durationTime",&UNK_0195de30,0,&UNK_0195de38,0);
  uVar2 = func_0x0195dbe0(uVar2,&"hurtVal",&UNK_0195de40,0,&UNK_0195de48,0);
  uVar2 = func_0x0195d9d8(uVar2,&"buffID",&UNK_0195de50,0,&UNK_0195de58,0);
  uVar2 = func_0x0195d9d8(uVar2,&"buffObjID",&UNK_0195de60,0,&UNK_0195de68,0);
  uVar2 = func_0x0195d9d8(uVar2,&"oriSkillID",&UNK_0195de70,0,&UNK_0195de78,0);
  uVar2 = func_0x0195d9d8(uVar2,&"damageType",&UNK_0195de80,0,&UNK_0195de88,0);
  uVar2 = func_0x0195dbe0(uVar2,&"rawValueForAnalysis",&UNK_0195de90,0,&UNK_0195de98,0);
  uVar2 = func_0x0195dbe0(uVar2,&"absorbValue",&UNK_0195dea0,0,&UNK_0195dea8,0);
  uVar2 = func_0x0195d7cc(uVar2,&"isLeaveFight",&UNK_0195deb0,0,&UNK_0195deb8,0);
  puVar3 = (undefined8 *)func_0x0195d7cc(uVar2,&"isKillHurtInfo",&UNK_0195dec0,0,&UNK_0195dec8,0);
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

