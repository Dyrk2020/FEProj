// ===== case579-FowRadiusFixInfo @ 01703398 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case579-FowRadiusFixInfo


void case579_FowRadiusFixInfo(undefined8 param_1)

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
  func_0x018e605c(&uStack_30,&"FowRadiusFixInfo",&uStack_40,0x736d101);
  uVar2 = func_0x018e5e44(&uStack_30,&"startRadius",&UNK_018e602c,0,&UNK_018e6034,0);
  uVar2 = func_0x018e5e44(uVar2,&"endRadius",&UNK_018e603c,0,&UNK_018e6044,0);
  puVar3 = (undefined8 *)func_0x018e5e44(uVar2,&"radiusFix",&UNK_018e604c,0,&UNK_018e6054,0);
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

