// ===== case633-BattleWardInfo @ 0170eeac =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case633-BattleWardInfo


void case633_BattleWardInfo(undefined8 param_1)

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
  func_0x0190e944(&uStack_30,&"BattleWardInfo",&uStack_40,0x736d101);
  uVar2 = func_0x0190e2fc(&uStack_30,&"objId",&UNK_0190e4e4,0,&UNK_0190e4ec,0);
  uVar2 = func_0x0190e2fc(uVar2,&"createBattleTime",&UNK_0190e4f4,0,&UNK_0190e4fc,0);
  uVar2 = func_0x0190e2fc(uVar2,&"destroyBattleTime",&UNK_0190e504,0,&UNK_0190e50c,0);
  uVar2 = func_0x0190e2fc(uVar2,&"dieReason",&UNK_0190e514,0,&UNK_0190e51c,0);
  uVar2 = func_0x0190e2fc(uVar2,&"wardType",&UNK_0190e524,0,&UNK_0190e52c,0);
  uVar2 = func_0x0190e534(uVar2,&"wardPosition",&UNK_0190e71c,0,&UNK_0190e730,0);
  puVar3 = (undefined8 *)func_0x0190e74c(uVar2,&"ll",&UNK_0190e934,0,&UNK_0190e93c,0);
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

