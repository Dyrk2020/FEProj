// ===== case3-SharedVariableShell @ 0168d12c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case3-SharedVariableShell


void case3_SharedVariableShell(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x01750230(&uStack_30,&"SharedVariableShell",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_0174e2c4;
  func_0x0124ec90(uStack_30,&UNK_017505f4,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"flowVar");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"flowVar");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_0174e2cc;
  func_0x0124ec90(uStack_30,&UNK_01750718,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"parallelFlowVar");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"parallelFlowVar");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_0174e2d4;
  func_0x0124ec90(uStack_30,&UNK_0175083c,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"doMain");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"doMain");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x0174e2dc(&uStack_30,&"customName",&UNK_0174e4c4,0,0,0);
  uVar4 = func_0x0174e4cc(uVar4,&"type",&UNK_0174e6b4,0,&UNK_0174e6bc,0);
  uVar4 = func_0x0174e2dc(uVar4,&"structName",&UNK_0174e6c4,0,0,0);
  uVar4 = func_0x0174e4cc(uVar4,&"enumValue",&UNK_0174e6cc,0,&UNK_0174e6d4,0);
  uVar4 = func_0x0174e6dc(uVar4,&"GetFix64",PTR_DAT_07319da0,0);
  uVar4 = func_0x0174e958(uVar4,&"SetFix64",PTR_DAT_073120f0,0);
  uVar4 = func_0x0174ebd4(uVar4,&"GetInt",PTR_DAT_07319aa0,0);
  uVar4 = func_0x0174ee50(uVar4,&"SetInt",PTR_DAT_07317150,0);
  uVar4 = func_0x0174f0cc(uVar4,&"GetActor",PTR_DAT_07315ea0,0);
  uVar4 = func_0x0174f348(uVar4,&"SetActor",PTR_DAT_0730e578,0);
  uVar4 = func_0x0174f5c4(uVar4,&"GetVector3Fix64",PTR_DAT_07317760,0);
  uVar4 = func_0x0174f840(uVar4,&"SetVector3Fix64",PTR_DAT_07317f28,0);
  uVar4 = func_0x0174fabc(uVar4,&"GetBool",PTR_DAT_0731b6a8,0);
  uVar4 = func_0x0174fd38(uVar4,&"SetBool",PTR_DAT_07311558,0);
  puVar3 = (undefined8 *)func_0x0174ffb4(uVar4,&"GetActorList",PTR_DAT_07316c68,0);
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

