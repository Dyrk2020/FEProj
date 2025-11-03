// ===== case413-BattleEventConditionInfo @ 016e36fc =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case413-BattleEventConditionInfo


void case413_BattleEventConditionInfo(undefined8 param_1)

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
  func_0x0185635c(&uStack_30,&"BattleEventConditionInfo",&uStack_40,0x736d101);
  uVar2 = func_0x018560e4(&uStack_30,&"iConditionID",&UNK_018562cc,0,&UNK_018562d4,0);
  uVar2 = func_0x018560e4(uVar2,&"modeConfigType",&UNK_018562dc,0,&UNK_018562e4,0);
  uVar2 = func_0x018560e4(uVar2,&"conditionType",&UNK_018562ec,0,&UNK_018562f4,0);
  uVar2 = func_0x018560e4(uVar2,&"iConditionTriggerTimes",&UNK_018562fc,0,&UNK_01856304,0);
  uVar2 = func_0x018560e4(uVar2,&"iConditionParam1",&UNK_0185630c,0,&UNK_01856314,0);
  uVar2 = func_0x018560e4(uVar2,&"iConditionParam2",&UNK_0185631c,0,&UNK_01856324,0);
  uVar2 = func_0x018560e4(uVar2,&"iConditionParam3",&UNK_0185632c,0,&UNK_01856334,0);
  uVar2 = func_0x018560e4(uVar2,&"iConditionParam4",&UNK_0185633c,0,&UNK_01856344,0);
  puVar3 = (undefined8 *)func_0x018560e4(uVar2,&"iConditionParam5",&UNK_0185634c,0,&UNK_01856354,0);
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

