// ===== case354-FEBattleDcGamePlayData @ 016d1a28 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case354-FEBattleDcGamePlayData


void case354_FEBattleDcGamePlayData(undefined8 param_1)

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
  func_0x0181e94c(&uStack_30,&"FEBattleDcGamePlayData",&uStack_40,0x736d101);
  uVar2 = func_0x0181e364(&uStack_30,&"gpExtraParamIntDic",&UNK_0181e54c,0,0,0);
  uVar2 = func_0x0181e554(uVar2,&"gpExtraParamFix64Dic",&UNK_0181e73c,0,0,0);
  uVar2 = func_0x0181e364(uVar2,&"eeExtraParamIntDic",&UNK_0181e744,0,0,0);
  uVar2 = func_0x0181e554(uVar2,&"eeExtraParamFix64Dic",&UNK_0181e74c,0,0,0);
  puVar3 = (undefined8 *)func_0x0181e754(uVar2,&"gpEasterEggId",&UNK_0181e93c,0,&UNK_0181e944,0);
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

