// ===== case311-HeroAttrLevelData @ 016c06bc =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case311-HeroAttrLevelData


void case311_HeroAttrLevelData(undefined8 param_1)

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
  func_0x017fadb0(&uStack_30,&"HeroAttrLevelData",&uStack_40,0x736d101);
  uVar2 = func_0x017faaf8(&uStack_30,&"seqID",&UNK_017face0,0,&UNK_017face8,0);
  uVar2 = func_0x017faaf8(uVar2,&"heroAttrLevelKey",&UNK_017facf0,0,&UNK_017facf8,0);
  uVar2 = func_0x017faaf8(uVar2,&"heroId",&UNK_017fad00,0,&UNK_017fad08,0);
  uVar2 = func_0x017faaf8(uVar2,&"hpLv",&UNK_017fad10,0,&UNK_017fad18,0);
  uVar2 = func_0x017faaf8(uVar2,&"mpLv",&UNK_017fad20,0,&UNK_017fad28,0);
  uVar2 = func_0x017faaf8(uVar2,&"attackLv",&UNK_017fad30,0,&UNK_017fad38,0);
  uVar2 = func_0x017faaf8(uVar2,&"apLv",&UNK_017fad40,0,&UNK_017fad48,0);
  uVar2 = func_0x017faaf8(uVar2,&"armorLv",&UNK_017fad50,0,&UNK_017fad58,0);
  uVar2 = func_0x017faaf8(uVar2,&"magicDefLv",&UNK_017fad60,0,&UNK_017fad68,0);
  uVar2 = func_0x017faaf8(uVar2,&"hpRecoveryLv",&UNK_017fad70,0,&UNK_017fad78,0);
  uVar2 = func_0x017faaf8(uVar2,&"mpRecoveryLv",&UNK_017fad80,0,&UNK_017fad88,0);
  uVar2 = func_0x017faaf8(uVar2,&"attackSpeedLv",&UNK_017fad90,0,&UNK_017fad98,0);
  puVar3 = (undefined8 *)func_0x017faaf8(uVar2,&"moveSpeedLv",&UNK_017fada0,0,&UNK_017fada8,0);
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

