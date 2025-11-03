// ===== case257-NewMvpLaneWeightInfo @ 016b7c2c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case257-NewMvpLaneWeightInfo


void case257_NewMvpLaneWeightInfo(undefined8 param_1)

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
  func_0x017dafd4(&uStack_30,&"NewMvpLaneWeightInfo",&uStack_40,0x736d101);
  uVar2 = func_0x017dad6c(&uStack_30,&"scoreFactorType",&UNK_017daf54,0,&UNK_017daf5c,0);
  uVar2 = func_0x017dad6c(uVar2,&"modeID",&UNK_017daf64,0,&UNK_017daf6c,0);
  uVar2 = func_0x017dad6c(uVar2,&"heroID",&UNK_017daf74,0,&UNK_017daf7c,0);
  uVar2 = func_0x017dad6c(uVar2,&"lane_1",&UNK_017daf84,0,&UNK_017daf8c,0);
  uVar2 = func_0x017dad6c(uVar2,&"lane_2",&UNK_017daf94,0,&UNK_017daf9c,0);
  uVar2 = func_0x017dad6c(uVar2,&"lane_3",&UNK_017dafa4,0,&UNK_017dafac,0);
  uVar2 = func_0x017dad6c(uVar2,&"lane_4",&UNK_017dafb4,0,&UNK_017dafbc,0);
  puVar3 = (undefined8 *)func_0x017dad6c(uVar2,&"lane_5",&UNK_017dafc4,0,&UNK_017dafcc,0);
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

