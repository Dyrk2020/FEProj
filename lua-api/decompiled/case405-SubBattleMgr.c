// ===== case405-SubBattleMgr @ 016e1fe8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case405-SubBattleMgr


void case405_SubBattleMgr(undefined8 param_1)

{
  uint uVar1;
  undefined8 *puVar2;
  undefined8 uStack_40;
  uint uStack_38;
  undefined8 uStack_30;
  uint uStack_28;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_40 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_38 = 1;
  gate_check(&uStack_40);
  func_0x0184fcfc(&uStack_30,&"SubBattleMgr",&uStack_40,0x736d101);
  puVar2 = (undefined8 *)func_0x0184faf0(&uStack_30,&"battleCount",&UNK_0184fcd8,0,&UNK_0184fce0,0);
  *(int *)(puVar2 + 1) = *(int *)(puVar2 + 1) + -3;
  func_0x0124c4d0(*puVar2,0xfffffffc);
  uVar1 = *(uint *)(puVar2 + 1);
  *(undefined4 *)(puVar2 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar2,~uVar1);
  }
  if (0 < (int)uStack_28) {
    func_0x0124c4d0(uStack_30,~uStack_28);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  return;
}

