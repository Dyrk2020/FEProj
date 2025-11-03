// ===== case845-VirtualSkillSlotVariant @ 0173d7ec =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case845-VirtualSkillSlotVariant


void case845_VirtualSkillSlotVariant(undefined8 param_1)

{
  undefined8 uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined8 *puVar4;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x019e2658(&uStack_30,&"VirtualSkillSlotVariant",&uStack_40,0x736d101);
  puVar4 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_019e2650;
  func_0x0124ec90(uStack_30,&UNK_019e2a1c,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar1 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar1,0xfffffffe);
  uVar3 = func_0x0124e920(uVar1,0xfffffffe);
  func_0x0124f120(uVar1,&"skill");
  func_0x0124cfc0(uVar1,0xfffffffe,1);
  func_0x0124e060(uVar1,uVar3);
  func_0x0124c4d0(uVar1,0xfffffffd);
  uVar1 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar1,0xfffffffe);
  uVar3 = func_0x0124e920(uVar1,0xfffffffe);
  func_0x0124f120(uVar1,&"skill");
  func_0x0124cfc0(uVar1,0xfffffffe,1);
  func_0x0124e060(uVar1,uVar3);
  func_0x0124c4d0(uVar1,0xfffffffd);
  uStack_28 = uStack_28 - 3;
  func_0x0124c4d0(uStack_30,0xfffffffc);
  uVar2 = uStack_28;
  uStack_28 = 0;
  if (0 < (int)uVar2) {
    func_0x0124c4d0(uStack_30,~uVar2);
    if (0 < (int)uStack_28) {
      func_0x0124c4d0(uStack_30,~uStack_28);
    }
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

