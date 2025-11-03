// ===== case361-DcHurtDataItem @ 016d29b8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case361-DcHurtDataItem


void case361_DcHurtDataItem(undefined8 param_1)

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
  func_0x01823aec(&uStack_30,&"DcHurtDataItem",&uStack_40,0x736d101);
  uVar2 = func_0x018234b4(&uStack_30,&"roleId",&UNK_0182369c,0,&UNK_018236a4,0);
  uVar2 = func_0x018236ac(uVar2,&"skillId",&UNK_01823894,0,&UNK_0182389c,0);
  uVar2 = func_0x018236ac(uVar2,&"skillGuid",&UNK_018238a4,0,&UNK_018238ac,0);
  uVar2 = func_0x018238b4(uVar2,&"hitTime",&UNK_01823a9c,0,&UNK_01823aa4,0);
  uVar2 = func_0x018238b4(uVar2,&"hurtValue",&UNK_01823aac,0,&UNK_01823ab4,0);
  uVar2 = func_0x018236ac(uVar2,&"effectId",&UNK_01823abc,0,&UNK_01823ac4,0);
  uVar2 = func_0x018238b4(uVar2,&"curHp",&UNK_01823acc,0,&UNK_01823ad4,0);
  puVar3 = (undefined8 *)func_0x018238b4(uVar2,&"curHpPer",&UNK_01823adc,0,&UNK_01823ae4,0);
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

