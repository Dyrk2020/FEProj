// ===== case683-HeroComponentEquipment @ 01719cc4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case683-HeroComponentEquipment


void case683_HeroComponentEquipment(undefined8 param_1)

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
  func_0x01948ef0(&uStack_30,&"HeroComponentEquipment",&uStack_40,0x736d101);
  uVar2 = func_0x0194889c(&uStack_30,&"isEquipReplacing",&UNK_01948a84,0,&UNK_01948a8c,0);
  uVar2 = func_0x01948a94(uVar2,&"processSeqId",&UNK_01948c7c,0,&UNK_01948c84,0);
  uVar2 = func_0x0194889c(uVar2,&"shopOutsideSpringType",&UNK_01948ca0,0,&UNK_01948ca8,0);
  uVar2 = func_0x01948a94(uVar2,&"shopOutsideSpringEnbaledEquipTypes",&UNK_01948cc4,0,&UNK_01948ccc,0);
  uVar2 = func_0x01948a94(uVar2,&"activeZombieBuyEquip",&UNK_01948ce8,0,&UNK_01948cf0,0);
  uVar2 = func_0x01948a94(uVar2,&"notToEquipSlotSize",&UNK_01948d0c,0,&UNK_01948d14,0);
  uVar2 = func_0x01948a94(uVar2,&"purchaseLevel",&UNK_01948d1c,0,&UNK_01948d24,0);
  uVar2 = func_0x01948a94(uVar2,&"banItemType",&UNK_01948d40,0,&UNK_01948d48,0);
  uVar2 = func_0x01948a94(uVar2,&"banItemQuality",&UNK_01948d64,0,&UNK_01948d6c,0);
  uVar2 = func_0x0194889c(uVar2,&"enableBanRule",&UNK_01948d88,0,&UNK_01948d90,0);
  uVar2 = func_0x01948a94(uVar2,&"shopPlanID",&UNK_01948dac,0,&UNK_01948db4,0);
  uVar2 = func_0x01948a94(uVar2,&"sellActiveEquipSkillId",&UNK_01948dd0,0,&UNK_01948dd8,0);
  uVar2 = func_0x01948a94(uVar2,&"commonIdsCapacity",&UNK_01948df4,0,&UNK_01948dfc,0);
  uVar2 = func_0x01948a94(uVar2,&"crShopExp",&UNK_01948e18,0,&UNK_01948e20,0);
  uVar2 = func_0x01948a94(uVar2,&"crShopLevel",&UNK_01948e3c,0,&UNK_01948e44,0);
  uVar2 = func_0x01948a94(uVar2,&"crLastChooseCnt",&UNK_01948e60,0,&UNK_01948e68,0);
  uVar2 = func_0x01948a94(uVar2,&"s1",&UNK_01948e84,0,&UNK_01948e8c,0);
  uVar2 = func_0x01948a94(uVar2,&"s2",&UNK_01948ea8,0,&UNK_01948eb0,0);
  puVar3 = (undefined8 *)func_0x0194889c(uVar2,&"supportEquipPurchased",&UNK_01948ecc,0,&UNK_01948ed4,0);
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

