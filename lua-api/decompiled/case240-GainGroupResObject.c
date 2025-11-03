// ===== case240-GainGroupResObject @ 016b52e8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case240-GainGroupResObject


void case240_GainGroupResObject(undefined8 param_1)

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
  func_0x017d094c(&uStack_30,&"GainGroupResObject",&uStack_40,0x736d101);
  uVar2 = func_0x017d0324(&uStack_30,&"beginRound",&UNK_017d050c,0,&UNK_017d0514,0);
  uVar2 = func_0x017d0324(uVar2,&"warmRound",&UNK_017d051c,0,&UNK_017d0524,0);
  uVar2 = func_0x017d0324(uVar2,&"seasonBegin",&UNK_017d052c,0,&UNK_017d0534,0);
  uVar2 = func_0x017d053c(uVar2,&"groupProb",&UNK_017d0724,0,&UNK_017d072c,0);
  uVar2 = func_0x017d0734(uVar2,&"maxOfPrePerson",&UNK_017d091c,0,&UNK_017d0924,0);
  uVar2 = func_0x017d0734(uVar2,&"beginRoundNum",&UNK_017d092c,0,&UNK_017d0934,0);
  puVar3 = (undefined8 *)func_0x017d0734(uVar2,&"seasonBeginNum",&UNK_017d093c,0,&UNK_017d0944,0);
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

