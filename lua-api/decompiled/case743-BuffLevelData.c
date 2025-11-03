// ===== case743-BuffLevelData @ 01727634 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case743-BuffLevelData


void case743_BuffLevelData(undefined8 param_1)

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
  func_0x01981a44(&uStack_30,&"BuffLevelData",&uStack_40,0x736d101);
  uVar2 = func_0x01981254(&uStack_30,&"isAutoHurtOriSkill",&UNK_0198143c,0,&UNK_01981444,0);
  uVar2 = func_0x0198144c(uVar2,&"duration",&UNK_01981634,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&"cd",&UNK_0198163c,0,0,0);
  uVar2 = func_0x01981644(uVar2,&"limitTargetCountVar",&UNK_0198182c,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&"effectInterval",&UNK_01981834,0,0,0);
  uVar2 = func_0x01981644(uVar2,&"maxEffectTimesVar",&UNK_0198183c,0,0,0);
  uVar2 = func_0x0198144c(uVar2,&"effectDelayTime",&UNK_01981844,0,0,0);
  puVar3 = (undefined8 *)func_0x0198184c(uVar2,&"disappearEffect",&UNK_01981a34,0,&UNK_01981a3c,0);
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

