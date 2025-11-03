// ===== case77-MonsterBehaviorLevelVfxConfig @ 0169915c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case77-MonsterBehaviorLevelVfxConfig


void case77_MonsterBehaviorLevelVfxConfig(undefined8 param_1)

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
  func_0x0177b09c(&uStack_30,&"MonsterBehaviorLevelVfxConfig",&uStack_40,0x736d101);
  uVar2 = func_0x0177a694(&uStack_30,&"nodeId",&UNK_0177a87c,0,&UNK_0177a884,0);
  uVar2 = func_0x0177a88c(uVar2,&"vfxPath",&UNK_0177aa74,0,0,0);
  uVar2 = func_0x0177a88c(uVar2,&"joint",&UNK_0177aa7c,0,0,0);
  uVar2 = func_0x0177aa84(uVar2,&"attachParent",&UNK_0177ac6c,0,&UNK_0177ac74,0);
  uVar2 = func_0x0177aa84(uVar2,&"ignoreRotate",&UNK_0177ac7c,0,&UNK_0177ac84,0);
  uVar2 = func_0x0177ac8c(uVar2,&"scale",&UNK_0177ae74,0,&UNK_0177ae88,0);
  puVar3 = (undefined8 *)func_0x0177aea4(uVar2,&"aliveTime",&UNK_0177b08c,0,&UNK_0177b094,0);
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

