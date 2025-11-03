// ===== case756-AttackerRecord @ 0172b8d8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case756-AttackerRecord


void case756_AttackerRecord(undefined8 param_1)

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
  func_0x0198d870(&uStack_30,&"AttackerRecord",&uStack_40,0x736d101);
  uVar2 = func_0x0198d1dc(&uStack_30,&"objId",&UNK_0198d3c4,0,&UNK_0198d3cc,0);
  uVar2 = func_0x0198d3e8(uVar2,&"latestTime",&UNK_0198d5d0,0,&UNK_0198d5d8,0);
  uVar2 = func_0x0198d3e8(uVar2,&"hurtTime",&UNK_0198d638,0,&UNK_0198d640,0);
  uVar2 = func_0x0198d3e8(uVar2,&"hurtValue",&UNK_0198d648,0,&UNK_0198d650,0);
  uVar2 = func_0x0198d658(uVar2,&"skillID",&UNK_0198d840,0,&UNK_0198d848,0);
  uVar2 = func_0x0198d658(uVar2,&"skillType",&UNK_0198d850,0,&UNK_0198d858,0);
  puVar3 = (undefined8 *)func_0x0198d658(uVar2,&"skillFuncType",&UNK_0198d860,0,&UNK_0198d868,0);
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

