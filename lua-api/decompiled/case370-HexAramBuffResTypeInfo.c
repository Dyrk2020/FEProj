// ===== case370-HexAramBuffResTypeInfo @ 016d60e4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case370-HexAramBuffResTypeInfo


void case370_HexAramBuffResTypeInfo(undefined8 param_1)

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
  func_0x0182d7d0(&uStack_30,&"HexAramBuffResTypeInfo",&uStack_40,0x736d101);
  uVar2 = func_0x0182d380(&uStack_30,&"roomId",&UNK_0182d568,0,&UNK_0182d570,0);
  uVar2 = func_0x0182d380(uVar2,&"roleId",&UNK_0182d578,0,&UNK_0182d580,0);
  uVar2 = func_0x0182d588(uVar2,&"heroId",&UNK_0182d770,0,&UNK_0182d778,0);
  uVar2 = func_0x0182d588(uVar2,&"modeId",&UNK_0182d780,0,&UNK_0182d788,0);
  uVar2 = func_0x0182d588(uVar2,&"normal_Pool_Num",&UNK_0182d790,0,&UNK_0182d798,0);
  uVar2 = func_0x0182d588(uVar2,&"generic_Pool_Num",&UNK_0182d7a0,0,&UNK_0182d7a8,0);
  uVar2 = func_0x0182d588(uVar2,&"favorite_Pool_Num",&UNK_0182d7b0,0,&UNK_0182d7b8,0);
  puVar3 = (undefined8 *)func_0x0182d588(uVar2,&"recommend_Pool_Num",&UNK_0182d7c0,0,&UNK_0182d7c8,0);
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

