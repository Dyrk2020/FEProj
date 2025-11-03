// ===== case512-ActorComponentFow @ 016f6304 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case512-ActorComponentFow


void case512_ActorComponentFow(undefined8 param_1)

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
  func_0x0189f4b8(&uStack_30,&"ActorComponentFow",&uStack_40,0x736d101);
  uVar2 = func_0x0189f094(&uStack_30,&"bIgnoreGrassLastTime",&UNK_0189f27c,0,&UNK_0189f284,0);
  uVar2 = func_0x0189f094(uVar2,&"bIgnoreTerrainLastTime",&UNK_0189f28c,0,&UNK_0189f294,0);
  uVar2 = func_0x0189f094(uVar2,&"bInGrassLastTime",&UNK_0189f29c,0,&UNK_0189f2a4,0);
  puVar3 = (undefined8 *)func_0x0189f2c0(uVar2,&"lastMapIndex",&UNK_0189f4a8,0,&UNK_0189f4b0,0);
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

