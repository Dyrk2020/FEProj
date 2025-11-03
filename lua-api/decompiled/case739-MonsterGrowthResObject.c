// ===== case739-MonsterGrowthResObject @ 01726f30 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case739-MonsterGrowthResObject


void case739_MonsterGrowthResObject(undefined8 param_1)

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
  func_0x0197f4a0(&uStack_30,&"MonsterGrowthResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0197f208(&uStack_30,&"modeId",&UNK_0197f3f0,0,&UNK_0197f3f8,0);
  uVar2 = func_0x0197f208(uVar2,&"monsterId",&UNK_0197f400,0,&UNK_0197f408,0);
  uVar2 = func_0x0197f208(uVar2,&"growType",&UNK_0197f410,0,&UNK_0197f418,0);
  uVar2 = func_0x0197f208(uVar2,&"lineFilter",&UNK_0197f420,0,&UNK_0197f428,0);
  uVar2 = func_0x0197f208(uVar2,&"growStartTime",&UNK_0197f430,0,&UNK_0197f438,0);
  uVar2 = func_0x0197f208(uVar2,&"growInterval",&UNK_0197f440,0,&UNK_0197f448,0);
  uVar2 = func_0x0197f208(uVar2,&"maxGrowCount",&UNK_0197f450,0,&UNK_0197f458,0);
  uVar2 = func_0x0197f208(uVar2,&"moneyGrowth",&UNK_0197f460,0,&UNK_0197f468,0);
  uVar2 = func_0x0197f208(uVar2,&"expGrowth",&UNK_0197f470,0,&UNK_0197f478,0);
  uVar2 = func_0x0197f208(uVar2,&"damageMinionGrowth",&UNK_0197f480,0,&UNK_0197f488,0);
  puVar3 = (undefined8 *)func_0x0197f208(uVar2,&"damageBuildingGrowth",&UNK_0197f490,0,&UNK_0197f498,0);
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

