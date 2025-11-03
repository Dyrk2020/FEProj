// ===== case852-SkillUseObj @ 017403a8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case852-SkillUseObj


void case852_SkillUseObj(undefined8 param_1)

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
  func_0x019f38d4(&uStack_40,&"SkillUseObj",&uStack_50,0x736d101);
  uVar3 = func_0x019f33dc(&uStack_40,&"useGuid",&UNK_019f35c4,0,&UNK_019f35cc,0);
  uVar3 = func_0x019f33dc(uVar3,&"level",&UNK_019f35e8,0,&UNK_019f35f0,0);
  puVar4 = (undefined8 *)func_0x019f360c(uVar3,&"isPreCrit",&UNK_019f37f4,0,&UNK_019f37fc,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019f3818;
  func_0x0124ec90(*puVar4,&UNK_019f44a0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"preCalcCriEffectList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"preCalcCriEffectList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019f3820;
  func_0x0124ec90(*puVar4,&UNK_019f45c4,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skinSrc");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skinSrc");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019f33dc(puVar4,&"nDictList",&UNK_019f3828,0,&UNK_019f3830,0);
  uVar3 = func_0x019f360c(uVar3,&"isStop",&UNK_019f384c,0,&UNK_019f3854,0);
  uVar3 = func_0x019f33dc(uVar3,&"gemId",&UNK_019f385c,0,&UNK_019f3864,0);
  uVar3 = func_0x019f33dc(uVar3,&"generationId",&UNK_019f3880,0,&UNK_019f3888,0);
  uVar3 = func_0x019f33dc(uVar3,&"groupOriSkillGuid",&UNK_019f38a4,0,&UNK_019f38ac,0);
  uVar3 = func_0x019f33dc(uVar3,&"copiedSkillGuid",&UNK_019f38b4,0,&UNK_019f38bc,0);
  puVar4 = (undefined8 *)func_0x019f33dc(uVar3,&"_sharedPtrRefCount",&UNK_019f38c4,0,&UNK_019f38cc,0);
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

