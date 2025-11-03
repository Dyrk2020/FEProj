// ===== case503-CherryDataMgr @ 016f4b18 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case503-CherryDataMgr


void case503_CherryDataMgr(undefined8 param_1)

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
  func_0x01895d20(&uStack_30,&"CherryDataMgr",&uStack_40,0x736d101);
  uVar2 = func_0x018954f0(&uStack_30,&"curRound",&UNK_018956d8,0,&UNK_018956e0,0);
  uVar2 = func_0x018956fc(uVar2,&"curDuration",&UNK_018958e4,0,&UNK_018958ec,0);
  uVar2 = func_0x018954f0(uVar2,&"curRoundStartFrameCount",&UNK_0189594c,0,&UNK_01895954,0);
  uVar2 = func_0x018954f0(uVar2,&"maxRound",&UNK_01895970,0,&UNK_01895978,0);
  uVar2 = func_0x018954f0(uVar2,&"curFightRound",&UNK_01895994,0,&UNK_0189599c,0);
  uVar2 = func_0x018954f0(uVar2,&"curRoundType",&UNK_018959b8,0,&UNK_018959c0,0);
  uVar2 = func_0x018954f0(uVar2,&"teamInitHP",&UNK_018959dc,0,&UNK_018959e4,0);
  uVar2 = func_0x018954f0(uVar2,&"lossTeamNum",&UNK_01895a00,0,&UNK_01895a08,0);
  uVar2 = func_0x01895a24(uVar2,&"activePixiu",&UNK_01895c0c,0,&UNK_01895c14,0);
  uVar2 = func_0x018954f0(uVar2,&"targetNpcResId",&UNK_01895cac,0,&UNK_01895cb4,0);
  uVar2 = func_0x01895a24(uVar2,&"closeCalPlayerGamePoint",&UNK_01895cd0,0,&UNK_01895cd8,0);
  uVar2 = func_0x018954f0(uVar2,&"selectedNPCId",&UNK_01895ce0,0,&UNK_01895ce8,0);
  uVar2 = func_0x018954f0(uVar2,&"selectedGainQuality",&UNK_01895cf0,0,&UNK_01895cf8,0);
  uVar2 = func_0x018954f0(uVar2,&"preRoundRandomCount",&UNK_01895d00,0,&UNK_01895d08,0);
  puVar3 = (undefined8 *)func_0x018954f0(uVar2,&"ignoreSecurityCheck",&UNK_01895d10,0,&UNK_01895d18,0);
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

