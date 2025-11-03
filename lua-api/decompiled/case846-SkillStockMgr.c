// ===== case846-SkillStockMgr @ 0173da34 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case846-SkillStockMgr


void case846_SkillStockMgr(undefined8 param_1)

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
  func_0x019e3314(&uStack_40,&"SkillStockMgr",&uStack_50,0x736d101);
  uVar3 = func_0x019e2b40(&uStack_40,&"isBuffStock",&UNK_019e2d28,0,&UNK_019e2d30,0);
  uVar3 = func_0x019e2d4c(uVar3,&"curStock",&UNK_019e2f34,0,&UNK_019e2f3c,0);
  uVar3 = func_0x019e2d4c(uVar3,&"maxStock",&UNK_019e2f58,0,&UNK_019e2f60,0);
  uVar3 = func_0x019e2f7c(uVar3,&"stockCD",&UNK_019e3164,0,&UNK_019e316c,0);
  uVar3 = func_0x019e2f7c(uVar3,&"oriConfigStockCD",&UNK_019e31cc,0,&UNK_019e31d4,0);
  uVar3 = func_0x019e2f7c(uVar3,&"cdTime",&UNK_019e3234,0,&UNK_019e323c,0);
  uVar3 = func_0x019e2f7c(uVar3,&"oriStockCD",&UNK_019e329c,0,&UNK_019e32a4,0);
  uVar3 = func_0x019e2f7c(uVar3,&"forceUpdateTime",&UNK_019e32ac,0,&UNK_019e32b4,0);
  uVar3 = func_0x019e2f7c(uVar3,&"lastReduceCD",&UNK_019e32bc,0,&UNK_019e32c4,0);
  uVar3 = func_0x019e2b40(uVar3,&"isInteractiveSkill",&UNK_019e32cc,0,&UNK_019e32d4,0);
  uVar3 = func_0x019e2b40(uVar3,&"isMod",&UNK_019e32dc,0,&UNK_019e32e4,0);
  puVar4 = (undefined8 *)func_0x019e2f7c(uVar3,&"modCD",&UNK_019e32ec,0,&UNK_019e32f4,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019e32fc;
  func_0x0124ec90(*puVar4,&UNK_019e45d4,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skill");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"skill");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar4 = (undefined8 *)func_0x019e2b40(puVar4,&"ignoreStockCD",&UNK_019e3304,0,&UNK_019e330c,0);
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

