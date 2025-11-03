// ===== case778-BulletFowComponent @ 0173022c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case778-BulletFowComponent


void case778_BulletFowComponent(undefined8 param_1)

{
  uint uVar1;
  undefined8 uVar2;
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
  func_0x019a7598(&uStack_30,&"BulletFowComponent",&uStack_40,0x736d101);
  puVar4 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_019a7398;
  func_0x0124ec90(uStack_30,&UNK_019a795c,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar2 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar2,0xfffffffe);
  uVar3 = func_0x0124e920(uVar2,0xfffffffe);
  func_0x0124f120(uVar2,&"bullet");
  func_0x0124cfc0(uVar2,0xfffffffe,1);
  func_0x0124e060(uVar2,uVar3);
  func_0x0124c4d0(uVar2,0xfffffffd);
  uVar2 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar2,0xfffffffe);
  uVar3 = func_0x0124e920(uVar2,0xfffffffe);
  func_0x0124f120(uVar2,&"bullet");
  func_0x0124cfc0(uVar2,0xfffffffe,1);
  func_0x0124e060(uVar2,uVar3);
  func_0x0124c4d0(uVar2,0xfffffffd);
  puVar4 = (undefined8 *)func_0x019a73a0(&uStack_30,&"visionRadius",&UNK_019a7588,0,&UNK_019a7590,0);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  func_0x0124c4d0(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

