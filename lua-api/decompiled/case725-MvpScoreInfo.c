// ===== case725-MvpScoreInfo @ 01724dd8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case725-MvpScoreInfo


void case725_MvpScoreInfo(undefined8 param_1)

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
  func_0x01977234(&uStack_30,&"MvpScoreInfo",&uStack_40,0x736d101);
  uVar2 = func_0x01976fdc(&uStack_30,&"scoreFactorType",&UNK_019771c4,0,&UNK_019771cc,0);
  uVar2 = func_0x01976fdc(uVar2,&"modeID",&UNK_019771d4,0,&UNK_019771dc,0);
  uVar2 = func_0x01976fdc(uVar2,&"factor",&UNK_019771e4,0,&UNK_019771ec,0);
  uVar2 = func_0x01976fdc(uVar2,&"coreMvpScore",&UNK_019771f4,0,&UNK_019771fc,0);
  uVar2 = func_0x01976fdc(uVar2,&"shieldMvpScore",&UNK_01977204,0,&UNK_0197720c,0);
  uVar2 = func_0x01976fdc(uVar2,&"assistMvpScore",&UNK_01977214,0,&UNK_0197721c,0);
  puVar3 = (undefined8 *)func_0x01976fdc(uVar2,&"conventionFactor",&UNK_01977224,0,&UNK_0197722c,0);
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

