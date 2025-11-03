// ===== case716-VehicleResObject @ 01723a3c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case716-VehicleResObject


void case716_VehicleResObject(undefined8 param_1)

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
  func_0x019705d4(&uStack_30,&"VehicleResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0196fdd4(&uStack_30,&"bTraceToDriver",&UNK_0196ffbc,0,&UNK_0196ffc4,0);
  uVar2 = func_0x0196ffcc(uVar2,&"headIcon",&UNK_019701b4,0,0,0);
  uVar2 = func_0x0196ffcc(uVar2,&"modelPath",&UNK_019701bc,0,0,0);
  uVar2 = func_0x0196ffcc(uVar2,&"headBar",&UNK_019701c4,0,0,0);
  uVar2 = func_0x019701cc(uVar2,&"speed",&UNK_019703b4,0,&UNK_019703bc,0);
  uVar2 = func_0x019701cc(uVar2,&"lifeTime",&UNK_019703c4,0,&UNK_019703cc,0);
  uVar2 = func_0x019703d4(uVar2,&"bornFlow",&UNK_019705bc,0,0,0);
  uVar2 = func_0x019703d4(uVar2,&"dieFlow",&UNK_019705c4,0,0,0);
  puVar3 = (undefined8 *)func_0x019703d4(uVar2,&"idleFlow",&UNK_019705cc,0,0,0);
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

