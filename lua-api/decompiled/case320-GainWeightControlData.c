// ===== case320-GainWeightControlData @ 016c1c58 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case320-GainWeightControlData


void case320_GainWeightControlData(undefined8 param_1)

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
  func_0x017fed20(&uStack_30,&"GainWeightControlData",&uStack_40,0x736d101);
  uVar2 = func_0x017fea98(&uStack_30,&"keyID",&UNK_017fec80,0,&UNK_017fec88,0);
  uVar2 = func_0x017fea98(uVar2,&"preferSilverGainID1",&UNK_017fec90,0,&UNK_017fec98,0);
  uVar2 = func_0x017fea98(uVar2,&"preferSilverGainID2",&UNK_017feca0,0,&UNK_017feca8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferSilverGainID3",&UNK_017fecb0,0,&UNK_017fecb8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferGoldGainID1",&UNK_017fecc0,0,&UNK_017fecc8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferGoldGainID2",&UNK_017fecd0,0,&UNK_017fecd8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferGoldGainID3",&UNK_017fece0,0,&UNK_017fece8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferColorGainID1",&UNK_017fecf0,0,&UNK_017fecf8,0);
  uVar2 = func_0x017fea98(uVar2,&"preferColorGainID2",&UNK_017fed00,0,&UNK_017fed08,0);
  puVar3 = (undefined8 *)func_0x017fea98(uVar2,&"preferColorGainID3",&UNK_017fed10,0,&UNK_017fed18,0);
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

