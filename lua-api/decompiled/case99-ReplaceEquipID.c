// ===== case99-ReplaceEquipID @ 0169c8f4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case99-ReplaceEquipID


void case99_ReplaceEquipID(undefined8 param_1)

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
  func_0x017872e4(&uStack_30,&"ReplaceEquipID",&uStack_40,0x736d101);
  uVar2 = func_0x01786ec4(&uStack_30,&"equipBefore",&UNK_017870ac,0,&UNK_017870b4,0);
  uVar2 = func_0x01786ec4(uVar2,&"equipAfter",&UNK_017870bc,0,&UNK_017870c4,0);
  uVar2 = func_0x017870cc(uVar2,&"strEquipFighter",&UNK_017872b4,0,0,0);
  uVar2 = func_0x017870cc(uVar2,&"strEquipTank",&UNK_017872bc,0,0,0);
  uVar2 = func_0x017870cc(uVar2,&"strEquipMagic",&UNK_017872c4,0,0,0);
  uVar2 = func_0x017870cc(uVar2,&"strEquipAssassin",&UNK_017872cc,0,0,0);
  uVar2 = func_0x017870cc(uVar2,&"strEquipAssist",&UNK_017872d4,0,0,0);
  puVar3 = (undefined8 *)func_0x017870cc(uVar2,&"strEquipAdc",&UNK_017872dc,0,0,0);
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

