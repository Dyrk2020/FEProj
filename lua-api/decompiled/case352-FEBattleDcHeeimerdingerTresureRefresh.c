// ===== case352-FEBattleDcHeeimerdingerTresureRefresh @ 016d1164 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case352-FEBattleDcHeeimerdingerTresureRefresh


void case352_FEBattleDcHeeimerdingerTresureRefresh(undefined8 param_1)

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
  func_0x0181cf74(&uStack_30,&"FEBattleDcHeeimerdingerTresureRefresh",&uStack_40,0x736d101);
  uVar2 = func_0x0181c94c(&uStack_30,&"time",&UNK_0181cb34,0,&UNK_0181cb3c,0);
  uVar2 = func_0x0181cb44(uVar2,&"iLaneType",&UNK_0181cd2c,0,&UNK_0181cd34,0);
  uVar2 = func_0x0181c94c(uVar2,&"xPos",&UNK_0181cd3c,0,&UNK_0181cd44,0);
  uVar2 = func_0x0181c94c(uVar2,&"zPos",&UNK_0181cd4c,0,&UNK_0181cd54,0);
  uVar2 = func_0x0181cb44(uVar2,&"camp",&UNK_0181cd5c,0,&UNK_0181cd64,0);
  uVar2 = func_0x0181cd6c(uVar2,&"resId",&UNK_0181cf54,0,&UNK_0181cf5c,0);
  puVar3 = (undefined8 *)func_0x0181cb44(uVar2,&"tresureObjId",&UNK_0181cf64,0,&UNK_0181cf6c,0);
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

