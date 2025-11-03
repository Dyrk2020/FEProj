// ===== case44-PiXiuRewardSetting @ 01693aac =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case44-PiXiuRewardSetting


void case44_PiXiuRewardSetting(undefined8 param_1)

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
  func_0x017674d0(&uStack_30,&"PiXiuRewardSetting",&uStack_40,0x736d101);
  uVar2 = func_0x01767234(&uStack_30,&"awardID",&UNK_0176741c,0,&UNK_01767424,0);
  uVar2 = func_0x01767234(uVar2,&"weight",&UNK_0176742c,0,&UNK_01767434,0);
  uVar2 = func_0x01767234(uVar2,&"excludeTag",&UNK_0176743c,0,&UNK_01767444,0);
  uVar2 = func_0x01767234(uVar2,&"rewardType1",&UNK_01767450,0,&UNK_01767458,0);
  uVar2 = func_0x01767234(uVar2,&"rewardVal1",&UNK_01767460,0,&UNK_01767468,0);
  uVar2 = func_0x01767234(uVar2,&"rewardType2",&UNK_01767470,0,&UNK_01767478,0);
  uVar2 = func_0x01767234(uVar2,&"rewardVal2",&UNK_01767480,0,&UNK_01767488,0);
  uVar2 = func_0x01767234(uVar2,&"rewardType3",&UNK_01767490,0,&UNK_01767498,0);
  uVar2 = func_0x01767234(uVar2,&"rewardVal3",&UNK_017674a0,0,&UNK_017674a8,0);
  uVar2 = func_0x01767234(uVar2,&"rewardType4",&UNK_017674b0,0,&UNK_017674b8,0);
  puVar3 = (undefined8 *)func_0x01767234(uVar2,&"rewardVal4",&UNK_017674c0,0,&UNK_017674c8,0);
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

