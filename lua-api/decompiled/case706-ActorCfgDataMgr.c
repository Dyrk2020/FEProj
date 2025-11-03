// ===== case706-ActorCfgDataMgr @ 01721e90 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case706-ActorCfgDataMgr


void case706_ActorCfgDataMgr(undefined8 param_1)

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
  func_0x01967c40(&uStack_30,&"ActorCfgDataMgr",&uStack_40,0x736d101);
  uVar2 = func_0x01967430(&uStack_30,&"changedModel",&UNK_01967618,0,&UNK_01967620,0);
  uVar2 = func_0x01967628(uVar2,&"dcID",&UNK_01967810,0,&UNK_01967818,0);
  uVar2 = func_0x01967430(uVar2,&"isChangeInherit",&UNK_01967820,0,&UNK_01967828,0);
  uVar2 = func_0x01967830(uVar2,&"jointsOffset",&UNK_01967a18,0,&UNK_01967a2c,0);
  uVar2 = func_0x01967a48(uVar2,&"cfgData",&UNK_01967c30,0,0,0);
  puVar3 = (undefined8 *)func_0x01967a48(uVar2,&"originData",&UNK_01967c38,0,0,0);
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

