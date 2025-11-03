// ===== case252-BattleNegativeEventResObject @ 016b6f00 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case252-BattleNegativeEventResObject


void case252_BattleNegativeEventResObject(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 *puVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x017d7df8(&uStack_40,&"BattleNegativeEventResObject",&uStack_50,0x736d101);
  puVar3 = (undefined8 *)func_0x017d77f8(&uStack_40,&"id",&UNK_017d79e0,0,&UNK_017d79e8,0);
  puVar4 = (undefined8 *)func_0x0124cba0(*puVar3,0x10);
  puVar4[1] = 0;
  *puVar4 = &UNK_017d79f0;
  func_0x0124ec90(*puVar3,&UNK_017d83dc,1);
  func_0x0124c0c0(*puVar3,0xffffffff);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"desc");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = *puVar3;
  func_0x0124a650(uVar5,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar5,0xfffffffe);
  uVar2 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&"desc");
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar2);
  func_0x0124c4d0(uVar5,0xfffffffd);
  uVar5 = func_0x017d79f8(puVar3,&"isCommon",&UNK_017d7be0,0,&UNK_017d7be8,0);
  uVar5 = func_0x017d7bf0(uVar5,&"flowAsset",&UNK_017d7dd8,0,0,0);
  uVar5 = func_0x017d7bf0(uVar5,&"parallelFlowAsset",&UNK_017d7de0,0,0,0);
  puVar3 = (undefined8 *)func_0x017d77f8(uVar5,&"negativeScore",&UNK_017d7de8,0,&UNK_017d7df0,0);
  *(int *)(puVar3 + 1) = *(int *)(puVar3 + 1) + -3;
  func_0x0124c4d0(*puVar3,0xfffffffc);
  uVar1 = *(uint *)(puVar3 + 1);
  *(undefined4 *)(puVar3 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar3,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

