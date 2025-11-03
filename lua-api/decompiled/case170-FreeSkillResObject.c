// ===== case170-FreeSkillResObject @ 016a9e8c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case170-FreeSkillResObject


void case170_FreeSkillResObject(undefined8 param_1)

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
  func_0x017ac4b4(&uStack_30,&"FreeSkillResObject",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_017abe24;
  func_0x0124ec90(uStack_30,&UNK_017ac878,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"originHeroID");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"originHeroID");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x017abe2c(&uStack_30,&"enableReplaceModel",&UNK_017ac014,0,&UNK_017ac01c,0);
  uVar4 = func_0x017abe2c(uVar4,&"allowReplaceHeadbar",&UNK_017ac024,0,&UNK_017ac02c,0);
  uVar4 = func_0x017abe2c(uVar4,&"isInSpellBookSkillPool",&UNK_017ac034,0,&UNK_017ac03c,0);
  uVar4 = func_0x017abe2c(uVar4,&"isHideSkillIcon",&UNK_017ac044,0,&UNK_017ac04c,0);
  uVar4 = func_0x017ac054(uVar4,&"iIncludeTag",&UNK_017ac23c,0,&UNK_017ac244,0);
  uVar4 = func_0x017ac054(uVar4,&"iIncludeTagSelected",&UNK_017ac24c,0,&UNK_017ac254,0);
  uVar4 = func_0x017ac054(uVar4,&"iExcludeTag",&UNK_017ac25c,0,&UNK_017ac264,0);
  uVar4 = func_0x017ac054(uVar4,&"iExcludeTagSelected",&UNK_017ac26c,0,&UNK_017ac274,0);
  uVar4 = func_0x017ac054(uVar4,&"iExcludeTagRemove",&UNK_017ac27c,0,&UNK_017ac284,0);
  uVar4 = func_0x017ac054(uVar4,&"iSpellBookSkillCareerTag",&UNK_017ac28c,0,&UNK_017ac294,0);
  uVar4 = func_0x017ac054(uVar4,&"iSpellBookSkillCareerTagSelected",&UNK_017ac29c,0,&UNK_017ac2a4,0);
  uVar4 = func_0x017ac2ac(uVar4,&"freeSkillDamageFix",&UNK_017ac494,0,&UNK_017ac49c,0);
  puVar3 = (undefined8 *)func_0x017ac2ac(uVar4,&"freeSkillBeDamageFix",&UNK_017ac4a4,0,&UNK_017ac4ac,0);
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

