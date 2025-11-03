// ===== case271-MonsterWaveGrowthData @ 016b9cbc =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case271-MonsterWaveGrowthData


void case271_MonsterWaveGrowthData(undefined8 param_1)

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
  func_0x017e3880(&uStack_30,&"MonsterWaveGrowthData",&uStack_40,0x736d101);
  uVar2 = func_0x017e3470(&uStack_30,&"modeId",&UNK_017e3658,0,&UNK_017e3660,0);
  uVar2 = func_0x017e3470(uVar2,&"monsterId",&UNK_017e3668,0,&UNK_017e3670,0);
  uVar2 = func_0x017e3470(uVar2,&"waveId",&UNK_017e3678,0,&UNK_017e3680,0);
  puVar3 = (undefined8 *)func_0x017e3688(uVar2,&"goldDropProb",&UNK_017e3870,0,&UNK_017e3878,0);
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

