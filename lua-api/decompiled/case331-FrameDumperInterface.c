// ===== case331-FrameDumperInterface @ 016cce8c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case331-FrameDumperInterface


void case331_FrameDumperInterface(undefined8 param_1)

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
  func_0x0180fd94(&uStack_30,&"FrameDumperInterface",&uStack_40,0x736d101);
  uVar2 = func_0x0180f77c(&uStack_30,&"stopOnFrameCheckError",&UNK_0180f964,0,&UNK_0180f96c,0);
  uVar2 = func_0x0180f77c(uVar2,&"hasFrameCheckError",&UNK_0180f974,0,&UNK_0180f97c,0);
  uVar2 = func_0x0180f77c(uVar2,&"needDumpDataSyncPool",&UNK_0180f984,0,&UNK_0180f98c,0);
  uVar2 = func_0x0180f994(uVar2,&"needSendFrameDump",&UNK_0180fb7c,0,&UNK_0180fb84,0);
  uVar2 = func_0x0180fb8c(uVar2,&"onAIDumpReqFinish",&UNK_0180fd74,0,&UNK_0180fd7c,0);
  puVar3 = (undefined8 *)func_0x0180f994(uVar2,&"dumpMemSaveFlag",&UNK_0180fd84,0,&UNK_0180fd8c,0);
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

