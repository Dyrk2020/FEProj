// ===== case45-PiXiuNodeSetting @ 01693d78 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case45-PiXiuNodeSetting


void case45_PiXiuNodeSetting(undefined8 param_1)

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
  func_0x01767d3c(&uStack_30,&"PiXiuNodeSetting",&uStack_40,0x736d101);
  uVar2 = func_0x01767ab4(&uStack_30,&"level",&UNK_01767c9c,0,&UNK_01767ca4,0);
  uVar2 = func_0x01767ab4(uVar2,&"glodNum",&UNK_01767cac,0,&UNK_01767cb4,0);
  uVar2 = func_0x01767ab4(uVar2,&"iconID",&UNK_01767cbc,0,&UNK_01767cc4,0);
  uVar2 = func_0x01767ab4(uVar2,&"award1",&UNK_01767ccc,0,&UNK_01767cd4,0);
  uVar2 = func_0x01767ab4(uVar2,&"award2",&UNK_01767cdc,0,&UNK_01767ce4,0);
  uVar2 = func_0x01767ab4(uVar2,&"award3",&UNK_01767cec,0,&UNK_01767cf4,0);
  uVar2 = func_0x01767ab4(uVar2,&"award4",&UNK_01767cfc,0,&UNK_01767d04,0);
  uVar2 = func_0x01767ab4(uVar2,&"award5",&UNK_01767d0c,0,&UNK_01767d14,0);
  uVar2 = func_0x01767ab4(uVar2,&"award6",&UNK_01767d1c,0,&UNK_01767d24,0);
  puVar3 = (undefined8 *)func_0x01767ab4(uVar2,&"buffID",&UNK_01767d2c,0,&UNK_01767d34,0);
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

