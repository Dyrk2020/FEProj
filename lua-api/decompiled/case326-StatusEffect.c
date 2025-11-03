// ===== case326-StatusEffect @ 016c29a8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case326-StatusEffect


void case326_StatusEffect(undefined8 param_1)

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
  func_0x018013ac(&uStack_30,&"StatusEffect",&uStack_40,0x736d101);
  uVar2 = func_0x01800edc(&uStack_30,&"moveAble",&UNK_018010c4,0,&UNK_018010cc,0);
  uVar2 = func_0x01800edc(uVar2,&"rotateAble",&UNK_018010d4,0,&UNK_018010dc,0);
  uVar2 = func_0x01800edc(uVar2,&"skillAble",&UNK_018010e4,0,&UNK_018010ec,0);
  uVar2 = func_0x01800edc(uVar2,&"attackAble",&UNK_018010f4,0,&UNK_018010fc,0);
  uVar2 = func_0x01800edc(uVar2,&"cleanse",&UNK_01801104,0,&UNK_0180110c,0);
  uVar2 = func_0x01800edc(uVar2,&"inputAble",&UNK_01801114,0,&UNK_0180111c,0);
  uVar2 = func_0x01800edc(uVar2,&"dashAble",&UNK_01801124,0,&UNK_0180112c,0);
  uVar2 = func_0x01800edc(uVar2,&"summoner",&UNK_01801134,0,&UNK_0180113c,0);
  uVar2 = func_0x01800edc(uVar2,&"equipActive",&UNK_01801144,0,&UNK_0180114c,0);
  uVar2 = func_0x01800edc(uVar2,&"castSkillAble",&UNK_01801154,0,&UNK_0180115c,0);
  uVar2 = func_0x01800edc(uVar2,&"castAttackAble",&UNK_01801164,0,&UNK_0180116c,0);
  uVar2 = func_0x01800edc(uVar2,&"teleport",&UNK_01801174,0,&UNK_0180117c,0);
  uVar2 = func_0x01800edc(uVar2,&"spellChannelling",&UNK_01801184,0,&UNK_0180118c,0);
  uVar2 = func_0x01800edc(uVar2,&"skillRotate",&UNK_01801194,0,&UNK_0180119c,0);
  uVar2 = func_0x01800edc(uVar2,&"chargeAble",&UNK_018011a4,0,&UNK_018011ac,0);
  puVar3 = (undefined8 *)func_0x018011b4(uVar2,&"type",&UNK_0180139c,0,&UNK_018013a4,0);
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

