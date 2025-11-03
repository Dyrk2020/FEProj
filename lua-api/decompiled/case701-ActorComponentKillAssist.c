// ===== case701-ActorComponentKillAssist @ 01720f7c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case701-ActorComponentKillAssist


void case701_ActorComponentKillAssist(undefined8 param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 *puVar5;
  undefined8 uStack_50;
  uint uStack_48;
  undefined8 uStack_40;
  uint uStack_38;
  
  func_0x0124ba40(param_1,&UNK_0174a87c);
  uStack_50 = param_1;
  func_0x01251aa0(param_1,&"_G");
  uStack_48 = 1;
  gate_check(&uStack_50);
  func_0x01962aa8(&uStack_40,&"ActorComponentKillAssist",&uStack_50,0x736d101);
  uVar3 = func_0x01962160(&uStack_40,&"contDieTimes",&UNK_01962348,0,&UNK_01962350,0);
  uVar3 = func_0x0196236c(uVar3,&"totalKill",&UNK_01962554,0,&UNK_0196255c,0);
  uVar3 = func_0x0196236c(uVar3,&"totalDie",&UNK_01962564,0,&UNK_0196256c,0);
  uVar3 = func_0x0196236c(uVar3,&"totalAssistants",&UNK_01962574,0,&UNK_0196257c,0);
  uVar3 = func_0x0196236c(uVar3,&"totalTower",&UNK_01962584,0,&UNK_0196258c,0);
  puVar4 = (undefined8 *)func_0x0196236c(uVar3,&"totalSoldiers",&UNK_01962594,0,&UNK_0196259c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019625b8;
  func_0x0124ec90(*puVar4,&UNK_0196357c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"SkillUseCount");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"SkillUseCount");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0196236c(puVar4,&"maxAccKills",&UNK_019625c0,0,&UNK_019625c8,0);
  uVar3 = func_0x0196236c(uVar3,&"killsWhenLive",&UNK_019625e4,0,&UNK_019625ec,0);
  uVar3 = func_0x01962608(uVar3,&"magiclHurt",&UNK_019627f0,0,&UNK_019627f8,0);
  uVar3 = func_0x01962608(uVar3,&"totalSuffer",&UNK_01962800,0,&UNK_01962808,0);
  uVar3 = func_0x01962608(uVar3,&"totalHurt",&UNK_01962810,0,&UNK_01962818,0);
  uVar3 = func_0x01962608(uVar3,&"realHurt",&UNK_01962878,0,&UNK_01962880,0);
  uVar3 = func_0x01962608(uVar3,&"phyHurt",&UNK_01962888,0,&UNK_01962890,0);
  puVar4 = (undefined8 *)func_0x01962898(uVar3,&"_killCaster",&UNK_01962a80,0,&UNK_01962a8c,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01962a98;
  func_0x0124ec90(*puVar4,&UNK_0196408c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"hurtedInfoList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"hurtedInfoList");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_01962aa0;
  func_0x0124ec90(*puVar4,&UNK_019641b0,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"lastBerserkGiver");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"lastBerserkGiver");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  *(int *)(puVar4 + 1) = *(int *)(puVar4 + 1) + -3;
  func_0x0124c4d0(*puVar4,0xfffffffc);
  uVar1 = *(uint *)(puVar4 + 1);
  *(undefined4 *)(puVar4 + 1) = 0;
  if (0 < (int)uVar1) {
    func_0x0124c4d0(*puVar4,~uVar1);
  }
  if (0 < (int)uStack_38) {
    func_0x0124c4d0(uStack_40,~uStack_38);
  }
  if (0 < (int)uStack_48) {
    func_0x0124c4d0(uStack_50,~uStack_48);
  }
  return;
}

