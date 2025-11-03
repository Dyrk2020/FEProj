// ===== case408-FixTime @ 016e290c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case408-FixTime


void case408_FixTime(undefined8 param_1)

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
  func_0x018523e8(&uStack_30,&"FixTime",&uStack_40,0x736d101);
  uVar2 = func_0x01851e30(&uStack_30,&"FrameCount",&UNK_01852018,0,&UNK_01852020,0);
  uVar2 = func_0x01851e30(uVar2,&"CurFrameIndex",&UNK_018520b0,0,&UNK_018520b8,0);
  uVar2 = func_0x018520c0(uVar2,&"Time",&UNK_018522a8,0,&UNK_018522b0,0);
  uVar2 = func_0x01851e30(uVar2,&"FrameRate",&UNK_01852340,0,&UNK_01852348,0);
  puVar3 = (undefined8 *)func_0x018520c0(uVar2,&"DeltaTime",&UNK_018523d8,0,&UNK_018523e0,0);
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

