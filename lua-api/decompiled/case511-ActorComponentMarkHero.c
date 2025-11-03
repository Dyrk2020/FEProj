// ===== case511-ActorComponentMarkHero @ 016f5fb8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case511-ActorComponentMarkHero


void case511_ActorComponentMarkHero(undefined8 param_1)

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
  func_0x0189dd68(&uStack_30,&"ActorComponentMarkHero",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_0189d740;
  func_0x0124ec90(uStack_30,&UNK_0189e12c,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"currentMarkHero");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"currentMarkHero");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x0189d748(&uStack_30,&"markEffectiveCD",&UNK_0189d930,0,&UNK_0189d938,0);
  uVar4 = func_0x0189d748(uVar4,&"markSelectCD",&UNK_0189d998,0,&UNK_0189d9a0,0);
  uVar4 = func_0x0189d748(uVar4,&"markTriggerResetCD",&UNK_0189da00,0,&UNK_0189da08,0);
  uVar4 = func_0x0189d748(uVar4,&"selectRemainTime",&UNK_0189da68,0,&UNK_0189da70,0);
  uVar4 = func_0x0189d748(uVar4,&"markSelectTime",&UNK_0189dad0,0,&UNK_0189dad8,0);
  uVar4 = func_0x0189db38(uVar4,&"markHeroType",&UNK_0189dd20,0,&UNK_0189dd28,0);
  puVar3 = (undefined8 *)func_0x0189db38(uVar4,&"currentMarkCamp",&UNK_0189dd44,0,&UNK_0189dd4c,0);
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

