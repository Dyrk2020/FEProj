// ===== case533-SpellBookRandomSkillMgr @ 016f9694 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case533-SpellBookRandomSkillMgr


void case533_SpellBookRandomSkillMgr(undefined8 param_1)

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
  func_0x018b178c(&uStack_30,&"SpellBookRandomSkillMgr",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018b1158;
  func_0x0124ec90(uStack_30,&UNK_018b1b50,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"actor");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"actor");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x018b1160(&uStack_30,&"RANDOM_SKILL_COUNT",&UNK_018b1348,0,&UNK_018b1350,0);
  uVar4 = func_0x018b1160(uVar4,&"remainSelectCount",&UNK_018b1358,0,&UNK_018b1360,0);
  uVar4 = func_0x018b1160(uVar4,&"selectedCount",&UNK_018b13f0,0,&UNK_018b13f8,0);
  uVar4 = func_0x018b1160(uVar4,&"curSelectSkillId",&UNK_018b1488,0,&UNK_018b1490,0);
  uVar4 = func_0x018b1160(uVar4,&"curSelectFreeSkillId",&UNK_018b14ac,0,&UNK_018b14b4,0);
  uVar4 = func_0x018b14d0(uVar4,&"enableFreeUltra",&UNK_018b16b8,0,&UNK_018b16c0,0);
  uVar4 = func_0x018b1160(uVar4,&"EASTER_EGG_RANDOM_SKILL_COUNT",&UNK_018b16dc,0,&UNK_018b16e4,0);
  uVar4 = func_0x018b14d0(uVar4,&"isEasterEggOpen",&UNK_018b16ec,0,&UNK_018b16f4,0);
  uVar4 = func_0x018b1160(uVar4,&"curEasterEggSelectFreeSkillId",&UNK_018b1710,0,&UNK_018b1718,0);
  uVar4 = func_0x018b1160(uVar4,&"curEasterEggSelectSlot",&UNK_018b1734,0,&UNK_018b173c,0);
  uVar4 = func_0x018b14d0(uVar4,&"gmEasterEggUnlimitedRefresh",&UNK_018b1758,0,&UNK_018b1760,0);
  puVar3 = (undefined8 *)func_0x018b14d0(uVar4,&"isRefreshEasterEggSkill",&UNK_018b1768,0,&UNK_018b1770,0);
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

