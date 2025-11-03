// ===== case671-SkinResObject @ 017183c8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case671-SkinResObject


void case671_SkinResObject(undefined8 param_1)

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
  func_0x0193e720(&uStack_30,&"SkinResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0193e300(&uStack_30,&"iHeroID",&UNK_0193e4e8,0,&UNK_0193e4f0,0);
  uVar2 = func_0x0193e300(uVar2,&"iResVer",&UNK_0193e4f8,0,&UNK_0193e500,0);
  uVar2 = func_0x0193e508(uVar2,&"isReplaceResSplit",&UNK_0193e6f0,0,&UNK_0193e6f8,0);
  uVar2 = func_0x0193e300(uVar2,&"c4StatueResId",&UNK_0193e700,0,&UNK_0193e708,0);
  puVar3 = (undefined8 *)func_0x0193e300(uVar2,&"c4ChangeSkinResId",&UNK_0193e710,0,&UNK_0193e718,0);
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

