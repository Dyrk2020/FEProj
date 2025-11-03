// ===== case423-OldAFKRuleResObject @ 016e59e4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case423-OldAFKRuleResObject


void case423_OldAFKRuleResObject(undefined8 param_1)

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
  func_0x0185efe8(&uStack_30,&"OldAFKRuleResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0185eba8(&uStack_30,&"hangupEnterTime",&UNK_0185ed90,0,&UNK_0185ed98,0);
  uVar2 = func_0x0185eba8(uVar2,&"specifiedHeroHangupEnterTime",&UNK_0185eda0,0,&UNK_0185eda8,0);
  uVar2 = func_0x0185eba8(uVar2,&"aiManageProcessOffsetTime",&UNK_0185edb0,0,&UNK_0185edb8,0);
  uVar2 = func_0x0185eba8(uVar2,&"aiManageNormalRecallTime",&UNK_0185edc0,0,&UNK_0185edc8,0);
  uVar2 = func_0x0185eba8(uVar2,&"specifiedHeroAIManageNormalRecallOffsetTime",&UNK_0185edd0,0,&UNK_0185edd8,0);
  uVar2 = func_0x0185eba8(uVar2,&"aiManageOfflineRecallTime",&UNK_0185ede0,0,&UNK_0185ede8,0);
  puVar3 = (undefined8 *)func_0x0185edf0(uVar2,&"aiManagerGrade",&UNK_0185efd8,0,&UNK_0185efe0,0);
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

