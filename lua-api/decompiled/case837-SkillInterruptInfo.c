// ===== case837-SkillInterruptInfo @ 0173be50 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case837-SkillInterruptInfo


void case837_SkillInterruptInfo(undefined8 param_1)

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
  func_0x019dbe14(&uStack_30,&"SkillInterruptInfo",&uStack_40,0x736d101);
  uVar2 = func_0x019db644(&uStack_30,&"clearReplaceAnims",&UNK_019db82c,0,&UNK_019db834,0);
  uVar2 = func_0x019db644(uVar2,&"forceSetCD",&UNK_019db83c,0,&UNK_019db844,0);
  uVar2 = func_0x019db644(uVar2,&"showSummonerSpell",&UNK_019db84c,0,&UNK_019db854,0);
  uVar2 = func_0x019db644(uVar2,&"breakTriggerCD",&UNK_019db85c,0,&UNK_019db864,0);
  uVar2 = func_0x019db644(uVar2,&"hurtBreak",&UNK_019db86c,0,&UNK_019db874,0);
  uVar2 = func_0x019db644(uVar2,&"moveStartBreak",&UNK_019db87c,0,&UNK_019db884,0);
  uVar2 = func_0x019db644(uVar2,&"moveBreak",&UNK_019db88c,0,&UNK_019db894,0);
  uVar2 = func_0x019db644(uVar2,&"showEquipmentSpell",&UNK_019db89c,0,&UNK_019db8a4,0);
  uVar2 = func_0x019db644(uVar2,&"skillRotateAble",&UNK_019db8ac,0,&UNK_019db8b4,0);
  uVar2 = func_0x019db644(uVar2,&"rotateAble",&UNK_019db8bc,0,&UNK_019db8c4,0);
  uVar2 = func_0x019db644(uVar2,&"moveAble",&UNK_019db8e0,0,&UNK_019db8e8,0);
  uVar2 = func_0x019db904(uVar2,&"CDTime",&UNK_019dbaec,0,&UNK_019dbaf4,0);
  uVar2 = func_0x019dbafc(uVar2,&"otherEquipRelation",&UNK_019dbce4,0,&UNK_019dbcec,0);
  uVar2 = func_0x019dbafc(uVar2,&"zYHourglassRelation",&UNK_019dbcf4,0,&UNK_019dbcfc,0);
  uVar2 = func_0x019dbafc(uVar2,&"magnetronEnchanRelation",&UNK_019dbd04,0,&UNK_019dbd0c,0);
  uVar2 = func_0x019dbafc(uVar2,&"repulserRelation",&UNK_019dbd14,0,&UNK_019dbd1c,0);
  uVar2 = func_0x019dbafc(uVar2,&"teleportRelation",&UNK_019dbd24,0,&UNK_019dbd2c,0);
  uVar2 = func_0x019dbafc(uVar2,&"recallRelation",&UNK_019dbd34,0,&UNK_019dbd3c,0);
  uVar2 = func_0x019dbafc(uVar2,&"markRelation",&UNK_019dbd44,0,&UNK_019dbd4c,0);
  uVar2 = func_0x019dbafc(uVar2,&"flashRelation",&UNK_019dbd54,0,&UNK_019dbd5c,0);
  uVar2 = func_0x019dbafc(uVar2,&"houdiniRelation",&UNK_019dbd64,0,&UNK_019dbd6c,0);
  uVar2 = func_0x019dbafc(uVar2,&"castleRelation",&UNK_019dbd74,0,&UNK_019dbd7c,0);
  uVar2 = func_0x019dbafc(uVar2,&"hextechProtobeltRelation",&UNK_019dbd84,0,&UNK_019dbd8c,0);
  uVar2 = func_0x019dbafc(uVar2,&"hextechIceGunRelation",&UNK_019dbd94,0,&UNK_019dbd9c,0);
  uVar2 = func_0x019dbafc(uVar2,&"hextechFlashRelation",&UNK_019dbda4,0,&UNK_019dbdac,0);
  uVar2 = func_0x019dbafc(uVar2,&"possessFinishHandle",&UNK_019dbdb4,0,&UNK_019dbdbc,0);
  uVar2 = func_0x019dbafc(uVar2,&"possessActiveFinishHandle",&UNK_019dbdc4,0,&UNK_019dbdcc,0);
  uVar2 = func_0x019dbafc(uVar2,&"erLanternReleation",&UNK_019dbdd4,0,&UNK_019dbddc,0);
  uVar2 = func_0x019dbafc(uVar2,&"enterCannonReleation",&UNK_019dbde4,0,&UNK_019dbdec,0);
  uVar2 = func_0x019db644(uVar2,&"enableCustomInterrupt",&UNK_019dbdf4,0,&UNK_019dbdfc,0);
  puVar3 = (undefined8 *)func_0x019db644(uVar2,&"isUSBSkill",&UNK_019dbe04,0,&UNK_019dbe0c,0);
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

