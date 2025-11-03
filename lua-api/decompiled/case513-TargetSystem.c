// ===== case513-TargetSystem @ 016f64d4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case513-TargetSystem


void case513_TargetSystem(undefined8 param_1)

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
  func_0x018a0598(&uStack_30,&"TargetSystem",&uStack_40,0x736d101);
  uVar2 = func_0x0189fe24(&uStack_30,&"targetPriorityPlan",&UNK_018a000c,0,&UNK_018a0014,0);
  uVar2 = func_0x0189fe24(uVar2,&"movejoystickCast",&UNK_018a0030,0,&UNK_018a0038,0);
  uVar2 = func_0x0189fe24(uVar2,&"auxiliaryWardType",&UNK_018a0054,0,&UNK_018a005c,0);
  uVar2 = func_0x0189fe24(uVar2,&"autoBTAttack",&UNK_018a0078,0,&UNK_018a0080,0);
  uVar2 = func_0x018a009c(uVar2,&"targetType",&UNK_018a0284,0,&UNK_018a028c,0);
  uVar2 = func_0x018a009c(uVar2,&"startFrameCount",&UNK_018a02a8,0,&UNK_018a02b0,0);
  uVar2 = func_0x018a009c(uVar2,&"lastAutoRefreshTypeChangeFrame",&UNK_018a0340,0,&UNK_018a0348,0);
  uVar2 = func_0x018a0350(uVar2,&"defaultTarget",&UNK_018a0538,0,0,0);
  uVar2 = func_0x018a0350(uVar2,&"tauntManualTarget",&UNK_018a0540,0,0,0);
  uVar2 = func_0x018a0350(uVar2,&"allyTarget",&UNK_018a0548,0,0,0);
  uVar2 = func_0x018a009c(uVar2,&"tauntCount",&UNK_018a0550,0,&UNK_018a0558,0);
  puVar3 = (undefined8 *)func_0x018a009c(uVar2,&"targetAutoRefreshType",&UNK_018a0574,0,&UNK_018a057c,0);
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

