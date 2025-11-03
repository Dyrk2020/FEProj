// ===== case1-FlowAction @ 0168c6b0 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case1-FlowAction


void case1_FlowAction(undefined8 param_1)

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
  func_0x0174c294(&uStack_40,&"FlowAction",&uStack_50,0x736d101);
  uVar3 = func_0x0174bc44(&uStack_40,&"ignore",&UNK_0174be2c,0,&UNK_0174be34,0);
  uVar3 = func_0x0174bc44(uVar3,&"infinity",&UNK_0174be3c,0,&UNK_0174be44,0);
  uVar3 = func_0x0174bc44(uVar3,&"preTick",&UNK_0174be4c,0,&UNK_0174be54,0);
  uVar3 = func_0x0174be5c(uVar3,&"enterTime",&UNK_0174c044,0,&UNK_0174c04c,0);
  puVar4 = (undefined8 *)func_0x0174be5c(uVar3,&"duration",&UNK_0174c054,0,&UNK_0174c05c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0174c064;
  func_0x0124ec90(*puVar4,&UNK_0174cc40,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"track");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"track");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0174c06c(puVar4,&"status",&UNK_0174c254,0,&UNK_0174c25c,0);
  uVar3 = func_0x0174bc44(uVar3,&"isMatchSkin",&UNK_0174c264,0,&UNK_0174c26c,0);
  uVar3 = func_0x0174bc44(uVar3,&"discardInSkin",&UNK_0174c274,0,&UNK_0174c27c,0);
  puVar4 = (undefined8 *)func_0x0174bc44(uVar3,&"runtimeDebug",&UNK_0174c284,0,&UNK_0174c28c,0);
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

