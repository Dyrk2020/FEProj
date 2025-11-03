// ===== case349-FEBattleDcHeeimerdingerTresureHit @ 016d0bac =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case349-FEBattleDcHeeimerdingerTresureHit


void case349_FEBattleDcHeeimerdingerTresureHit(undefined8 param_1)

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
  func_0x01819e4c(&uStack_30,&"FEBattleDcHeeimerdingerTresureHit",&uStack_40,0x736d101);
  uVar2 = func_0x01819854(&uStack_30,&"roleId",&UNK_01819a3c,0,&UNK_01819a44,0);
  uVar2 = func_0x01819a4c(uVar2,&"itemId",&UNK_01819c34,0,&UNK_01819c3c,0);
  uVar2 = func_0x01819c44(uVar2,&"time",&UNK_01819e2c,0,&UNK_01819e34,0);
  puVar3 = (undefined8 *)func_0x01819a4c(uVar2,&"tresureObjId",&UNK_01819e3c,0,&UNK_01819e44,0);
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

