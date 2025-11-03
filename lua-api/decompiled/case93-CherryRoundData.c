// ===== case93-CherryRoundData @ 0169ba2c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case93-CherryRoundData


void case93_CherryRoundData(undefined8 param_1)

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
  func_0x017845a4(&uStack_30,&"CherryRoundData",&uStack_40,0x736d101);
  uVar2 = func_0x01784114(&uStack_30,&"round",&UNK_017842fc,0,&UNK_01784304,0);
  uVar2 = func_0x01784114(uVar2,&"type",&UNK_0178430c,0,&UNK_01784314,0);
  uVar2 = func_0x01784114(uVar2,&"forgeType",&UNK_0178431c,0,&UNK_01784324,0);
  uVar2 = func_0x0178432c(uVar2,&"reduceHp",&UNK_01784514,0,&UNK_0178451c,0);
  uVar2 = func_0x0178432c(uVar2,&"addMoney",&UNK_01784524,0,&UNK_0178452c,0);
  uVar2 = func_0x0178432c(uVar2,&"addExp",&UNK_01784534,0,&UNK_0178453c,0);
  uVar2 = func_0x0178432c(uVar2,&"duration",&UNK_01784544,0,&UNK_0178454c,0);
  uVar2 = func_0x0178432c(uVar2,&"triggerTime",&UNK_01784554,0,&UNK_0178455c,0);
  uVar2 = func_0x01784114(uVar2,&"sceneId",&UNK_01784564,0,&UNK_0178456c,0);
  uVar2 = func_0x0178432c(uVar2,&"rebornTime",&UNK_01784574,0,&UNK_0178457c,0);
  uVar2 = func_0x0178432c(uVar2,&"killRewardRate",&UNK_01784584,0,&UNK_0178458c,0);
  puVar3 = (undefined8 *)func_0x01784114(uVar2,&"enterCameraBehavior",&UNK_01784594,0,&UNK_0178459c,0);
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

