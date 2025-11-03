// ===== case691-MoveToProxy @ 0171cf00 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case691-MoveToProxy


void case691_MoveToProxy(undefined8 param_1)

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
  func_0x01955988(&uStack_30,&"MoveToProxy",&uStack_40,0x736d101);
  uVar2 = func_0x019554b8(&uStack_30,&"destination0",&UNK_019556a0,0,&UNK_019556cc,0);
  uVar2 = func_0x019554b8(uVar2,&"destination1",&UNK_019556f0,0,&UNK_0195571c,0);
  uVar2 = func_0x019554b8(uVar2,&"lastArrivedDestination",&UNK_01955740,0,&UNK_01955754,0);
  uVar2 = func_0x01955770(uVar2,&"lastArrivedDestinationFrame",&UNK_01955958,0,&UNK_01955960,0);
  uVar2 = func_0x01955770(uVar2,&"lastMoveStopFrame",&UNK_01955968,0,&UNK_01955970,0);
  puVar3 = (undefined8 *)func_0x01955770(uVar2,&"lastPositionSaltationFrame",&UNK_01955978,0,&UNK_01955980,0);
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

