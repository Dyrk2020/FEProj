// ===== case623-MapActorPointObj_LeashConfig @ 0170c094 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case623-MapActorPointObj_LeashConfig


void case623_MapActorPointObj_LeashConfig(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 *puVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x019025b8(&uStack_40,&"MapActorPointObj_LeashConfig",&uStack_50,0x736d101);
  uVar3 = func_0x01901f78(&uStack_40,&"ID",&UNK_01902160,0,&UNK_01902168,0);
  uVar3 = func_0x01902170(uVar3,&"leashRangeCenter",&UNK_01902358,0,&UNK_0190236c,0);
  uVar3 = func_0x01902388(uVar3,&"leashRangeInnerRadius",&UNK_01902570,0,&UNK_01902578,0);
  uVar3 = func_0x01902388(uVar3,&"leashRangeRadius",&UNK_01902580,0,&UNK_01902588,0);
  uVar3 = func_0x01902388(uVar3,&"leashRangeAngle",&UNK_01902590,0,&UNK_01902598,0);
  puVar4 = (undefined8 *)func_0x01902388(uVar3,&"leashRangeForward",&UNK_019025a0,0,&UNK_019025a8,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019025b0;
  func_0x0124ec90(*puVar4,&UNK_01903080,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"leashIndicatorAlphaCurve");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"leashIndicatorAlphaCurve");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  func_0x0124c4d0(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

