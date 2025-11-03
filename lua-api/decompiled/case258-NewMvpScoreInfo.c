// ===== case258-NewMvpScoreInfo @ 016b7e8c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case258-NewMvpScoreInfo


void case258_NewMvpScoreInfo(undefined8 param_1)

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
  func_0x017db820(&uStack_30,&"NewMvpScoreInfo",&uStack_40,0x736d101);
  uVar2 = func_0x017db5b8(&uStack_30,&"scoreFactorType",&UNK_017db7a0,0,&UNK_017db7a8,0);
  uVar2 = func_0x017db5b8(uVar2,&"modeID",&UNK_017db7b0,0,&UNK_017db7b8,0);
  uVar2 = func_0x017db5b8(uVar2,&"heroid",&UNK_017db7c0,0,&UNK_017db7c8,0);
  uVar2 = func_0x017db5b8(uVar2,&"factor",&UNK_017db7d0,0,&UNK_017db7d8,0);
  uVar2 = func_0x017db5b8(uVar2,&"coreMvpScore",&UNK_017db7e0,0,&UNK_017db7e8,0);
  uVar2 = func_0x017db5b8(uVar2,&"shieldMvpScore",&UNK_017db7f0,0,&UNK_017db7f8,0);
  uVar2 = func_0x017db5b8(uVar2,&"assistMvpScore",&UNK_017db800,0,&UNK_017db808,0);
  puVar3 = (undefined8 *)func_0x017db5b8(uVar2,&"conventionFactor",&UNK_017db810,0,&UNK_017db818,0);
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

