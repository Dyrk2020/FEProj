// ===== case414-BattleTeamTotalKillInfo @ 016e3980 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case414-BattleTeamTotalKillInfo


void case414_BattleTeamTotalKillInfo(undefined8 param_1)

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
  func_0x01856c8c(&uStack_30,&"BattleTeamTotalKillInfo",&uStack_40,0x736d101);
  uVar2 = func_0x01856940(&uStack_30,&"totalKillHeros",&UNK_01856b28,0,&UNK_01856b30,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillSoldiers",&UNK_01856b4c,0,&UNK_01856b54,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillTowers",&UNK_01856b5c,0,&UNK_01856b64,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillDragons",&UNK_01856b80,0,&UNK_01856b88,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillHexRex",&UNK_01856ba4,0,&UNK_01856bac,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillHexPoro",&UNK_01856bc8,0,&UNK_01856bd0,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillHexCannon",&UNK_01856bec,0,&UNK_01856bf4,0);
  uVar2 = func_0x01856940(uVar2,&"totaKkillHexBaron",&UNK_01856c10,0,&UNK_01856c18,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillRexMecha",&UNK_01856c34,0,&UNK_01856c3c,0);
  uVar2 = func_0x01856940(uVar2,&"totalKillYordlePig",&UNK_01856c58,0,&UNK_01856c60,0);
  puVar3 = (undefined8 *)func_0x01856940(uVar2,&"riftheralTotalKillTowers",&UNK_01856c7c,0,&UNK_01856c84,0);
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

