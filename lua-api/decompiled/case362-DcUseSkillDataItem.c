// ===== case362-DcUseSkillDataItem @ 016d2c18 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case362-DcUseSkillDataItem


void case362_DcUseSkillDataItem(undefined8 param_1)

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
  func_0x01824d5c(&uStack_30,&"DcUseSkillDataItem",&uStack_40,0x736d101);
  uVar2 = func_0x0182453c(&uStack_30,&"roleId",&UNK_01824724,0,&UNK_0182472c,0);
  uVar2 = func_0x01824734(uVar2,&"skillId",&UNK_0182491c,0,&UNK_01824924,0);
  uVar2 = func_0x01824734(uVar2,&"skillGuid",&UNK_0182492c,0,&UNK_01824934,0);
  uVar2 = func_0x01824734(uVar2,&"skillSlot",&UNK_0182493c,0,&UNK_01824944,0);
  uVar2 = func_0x0182494c(uVar2,&"useTime",&UNK_01824b34,0,&UNK_01824b3c,0);
  uVar2 = func_0x0182494c(uVar2,&"hitTime",&UNK_01824b44,0,&UNK_01824b4c,0);
  uVar2 = func_0x0182494c(uVar2,&"hurtValue",&UNK_01824b54,0,&UNK_01824b5c,0);
  puVar3 = (undefined8 *)func_0x01824b64(uVar2,&"isSummonerSkill",&UNK_01824d4c,0,&UNK_01824d54,0);
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

