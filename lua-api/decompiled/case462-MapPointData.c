// ===== case462-MapPointData @ 016ec29c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case462-MapPointData


void case462_MapPointData(undefined8 param_1)

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
  func_0x01874580(&uStack_30,&"MapPointData",&uStack_40,0x736d101);
  uVar2 = func_0x01874120(&uStack_30,&"type",&UNK_01874308,0,&UNK_01874310,0);
  uVar2 = func_0x01874120(uVar2,&"line",&UNK_01874318,0,&UNK_01874320,0);
  uVar2 = func_0x01874120(uVar2,&"battleCamp",&UNK_01874328,0,&UNK_01874330,0);
  uVar2 = func_0x01874338(uVar2,&"fixPostion",&UNK_01874520,0,&UNK_01874534,0);
  puVar3 = (undefined8 *)func_0x01874338(uVar2,&"fixForward",&UNK_01874550,0,&UNK_01874564,0);
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

