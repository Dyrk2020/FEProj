// ===== case838-SkillInterrupt @ 0173c3ec =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case838-SkillInterrupt


void case838_SkillInterrupt(undefined8 param_1)

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
  func_0x019dd8ac(&uStack_30,&"SkillInterrupt",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_019dcb34;
  func_0x0124ec90(uStack_30,&UNK_019ddc70,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"skill");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"skill");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_019dcb3c;
  func_0x0124ec90(uStack_30,&UNK_019ddd94,1);
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
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_019dcb44;
  func_0x0124ec90(uStack_30,&UNK_019ddeb8,1);
  func_0x0124c0c0(uStack_30,0xffffffff);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"curInfo");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = uStack_30;
  func_0x0124a650(uStack_30,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar2 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,&"curInfo");
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar2);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = func_0x019dcb4c(&uStack_30,&"otherEquipRelation",&UNK_019dcd34,0,&UNK_019dcd3c,0);
  uVar4 = func_0x019dcb4c(uVar4,&"zYHourglassRelation",&UNK_019dcdcc,0,&UNK_019dcdd4,0);
  uVar4 = func_0x019dcb4c(uVar4,&"magnetronEnchanRelation",&UNK_019dce64,0,&UNK_019dce6c,0);
  uVar4 = func_0x019dcb4c(uVar4,&"repulserRelation",&UNK_019dcefc,0,&UNK_019dcf04,0);
  uVar4 = func_0x019dcb4c(uVar4,&"teleportRelation",&UNK_019dcf94,0,&UNK_019dcf9c,0);
  uVar4 = func_0x019dcb4c(uVar4,&"recallRelation",&UNK_019dd02c,0,&UNK_019dd034,0);
  uVar4 = func_0x019dcb4c(uVar4,&"markRelation",&UNK_019dd0c4,0,&UNK_019dd0cc,0);
  uVar4 = func_0x019dcb4c(uVar4,&"flashRelation",&UNK_019dd15c,0,&UNK_019dd164,0);
  uVar4 = func_0x019dcb4c(uVar4,&"houdiniRelation",&UNK_019dd1f4,0,&UNK_019dd1fc,0);
  uVar4 = func_0x019dcb4c(uVar4,&"castleRelation",&UNK_019dd28c,0,&UNK_019dd294,0);
  uVar4 = func_0x019dcb4c(uVar4,&"hextechProtobeltRelation",&UNK_019dd324,0,&UNK_019dd32c,0);
  uVar4 = func_0x019dcb4c(uVar4,&"hextechIceGunRelation",&UNK_019dd3bc,0,&UNK_019dd3c4,0);
  uVar4 = func_0x019dcb4c(uVar4,&"hextechFlashRelation",&UNK_019dd454,0,&UNK_019dd45c,0);
  uVar4 = func_0x019dcb4c(uVar4,&"erLanternReleation",&UNK_019dd4ec,0,&UNK_019dd4f4,0);
  uVar4 = func_0x019dcb4c(uVar4,&"enterCannonReleation",&UNK_019dd584,0,&UNK_019dd58c,0);
  uVar4 = func_0x019dd61c(uVar4,&"isSetupInterruptInfo",&UNK_019dd804,0,&UNK_019dd80c,0);
  puVar3 = (undefined8 *)func_0x019dcb4c(uVar4,&"battleMode",&UNK_019dd89c,0,&UNK_019dd8a4,0);
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

