// ===== case268-GlobalChaosZoneBuffConfig @ 016b9794 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case268-GlobalChaosZoneBuffConfig


void case268_GlobalChaosZoneBuffConfig(undefined8 param_1)

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
  func_0x017e1834(&uStack_30,&"GlobalChaosZoneBuffConfig",&uStack_40,0x736d101);
  uVar2 = func_0x017e1404(&uStack_30,&"level",&UNK_017e15ec,0,&UNK_017e15f4,0);
  uVar2 = func_0x017e15fc(uVar2,&"maxHpMul",&UNK_017e17e4,0,&UNK_017e17ec,0);
  uVar2 = func_0x017e15fc(uVar2,&"maxHpAdd",&UNK_017e17f4,0,&UNK_017e17fc,0);
  uVar2 = func_0x017e15fc(uVar2,&"tenacity",&UNK_017e1804,0,&UNK_017e180c,0);
  uVar2 = func_0x017e15fc(uVar2,&"armourAdd",&UNK_017e1814,0,&UNK_017e181c,0);
  puVar3 = (undefined8 *)func_0x017e15fc(uVar2,&"magicDefAdd",&UNK_017e1824,0,&UNK_017e182c,0);
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

