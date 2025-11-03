// ===== case721-VirtualChampionResObject @ 01724508 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case721-VirtualChampionResObject


void case721_VirtualChampionResObject(undefined8 param_1)

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
  func_0x01973f24(&uStack_30,&"VirtualChampionResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0197390c(&uStack_30,&"tomatoNormalSkillVirtualSkillAssetObject",&UNK_01973af4,0,0,0);
  uVar2 = func_0x0197390c(uVar2,&"tomatoUltSkillVirtualSkillAssetObject",&UNK_01973afc,0,0,0);
  uVar2 = func_0x01973b04(uVar2,&"tomatoMagType",&UNK_01973cec,0,&UNK_01973cf4,0);
  uVar2 = func_0x01973b04(uVar2,&"tomatoReloadType",&UNK_01973cfc,0,&UNK_01973d04,0);
  uVar2 = func_0x01973b04(uVar2,&"tomatoMagSize",&UNK_01973d0c,0,&UNK_01973d14,0);
  uVar2 = func_0x01973d1c(uVar2,&"tomatoMagReloadTime",&UNK_01973f04,0,&UNK_01973f0c,0);
  puVar3 = (undefined8 *)func_0x01973d1c(uVar2,&"tomatoBulletReloadTime",&UNK_01973f14,0,&UNK_01973f1c,0);
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

