// ===== case549-SummonerSkillMgr @ 016fc814 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case549-SummonerSkillMgr


void case549_SummonerSkillMgr(undefined8 param_1)

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
  func_0x018c1374(&uStack_30,&"SummonerSkillMgr",&uStack_40,0x736d101);
  puVar3 = (undefined8 *)func_0x0124cba0(uStack_30,0x10);
  puVar3[1] = 0;
  *puVar3 = &UNK_018c0bbc;
  func_0x0124ec90(uStack_30,&UNK_018c1738,1);
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
  uVar4 = func_0x018c0bc4(&uStack_30,&"punishOriSkillId",&UNK_018c0dac,0,&UNK_018c0db4,0);
  uVar4 = func_0x018c0bc4(uVar4,&"USBSlot",&UNK_018c0dbc,0,&UNK_018c0dc4,0);
  uVar4 = func_0x018c0bc4(uVar4,&"usingUSBSkillID",&UNK_018c0de0,0,&UNK_018c0de8,0);
  uVar4 = func_0x018c0bc4(uVar4,&"USBNextSlot",&UNK_018c0df0,0,&UNK_018c0df8,0);
  uVar4 = func_0x018c0bc4(uVar4,&"usingNextSlotUSBSkillID",&UNK_018c0e14,0,&UNK_018c0e1c,0);
  uVar4 = func_0x018c0bc4(uVar4,&"backup_USBSlot",&UNK_018c0e38,0,&UNK_018c0e40,0);
  uVar4 = func_0x018c0e5c(uVar4,&"switchProtectTime",&UNK_018c1044,0,&UNK_018c104c,0);
  uVar4 = func_0x018c10ac(uVar4,&"enableSwitchS1",&UNK_018c1294,0,&UNK_018c129c,0);
  uVar4 = func_0x018c10ac(uVar4,&"enableSwitchS2",&UNK_018c12b8,0,&UNK_018c12c0,0);
  uVar4 = func_0x018c0bc4(uVar4,&"curSkillIdSwitchS1",&UNK_018c12dc,0,&UNK_018c12e4,0);
  uVar4 = func_0x018c0bc4(uVar4,&"curSkillIdSwitchS2",&UNK_018c1300,0,&UNK_018c1308,0);
  uVar4 = func_0x018c0bc4(uVar4,&"cachedSkill_1",&UNK_018c1324,0,&UNK_018c132c,0);
  uVar4 = func_0x018c0bc4(uVar4,&"cachedSkill_2",&UNK_018c1334,0,&UNK_018c133c,0);
  uVar4 = func_0x018c10ac(uVar4,&"cachedSkill_1_isFreeSkill",&UNK_018c1344,0,&UNK_018c134c,0);
  uVar4 = func_0x018c10ac(uVar4,&"cachedSkill_2_isFreeSkill",&UNK_018c1354,0,&UNK_018c135c,0);
  puVar3 = (undefined8 *)func_0x018c0bc4(uVar4,&"flash_slot",&UNK_018c1364,0,&UNK_018c136c,0);
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

