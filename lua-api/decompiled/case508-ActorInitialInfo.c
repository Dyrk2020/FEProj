// ===== case508-ActorInitialInfo @ 016f5928 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case508-ActorInitialInfo


void case508_ActorInitialInfo(undefined8 param_1)

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
  func_0x0189b044(&uStack_30,&"ActorInitialInfo",&uStack_40,0x736d101);
  uVar2 = func_0x0189a58c(&uStack_30,&"aiTag",&UNK_0189a774,0,&UNK_0189a77c,0);
  uVar2 = func_0x0189a58c(uVar2,&"isPreload",&UNK_0189a784,0,&UNK_0189a78c,0);
  uVar2 = func_0x0189a794(uVar2,&"ownerObjId",&UNK_0189a97c,0,&UNK_0189a984,0);
  uVar2 = func_0x0189a98c(uVar2,&"resId",&UNK_0189ab74,0,&UNK_0189ab7c,0);
  uVar2 = func_0x0189a98c(uVar2,&"skinId",&UNK_0189ab84,0,&UNK_0189ab8c,0);
  uVar2 = func_0x0189a98c(uVar2,&"summonMonsterSkillLevel",&UNK_0189ab94,0,&UNK_0189ab9c,0);
  uVar2 = func_0x0189aba4(uVar2,&"roleId",&UNK_0189ad8c,0,&UNK_0189ad94,0);
  uVar2 = func_0x0189ad9c(uVar2,&"pos",&UNK_0189af84,0,&UNK_0189af98,0);
  uVar2 = func_0x0189ad9c(uVar2,&"forward",&UNK_0189afb4,0,&UNK_0189afc8,0);
  uVar2 = func_0x0189a98c(uVar2,&"camp",&UNK_0189afe4,0,&UNK_0189afec,0);
  uVar2 = func_0x0189a98c(uVar2,&"Handler",&UNK_0189aff4,0,&UNK_0189affc,0);
  uVar2 = func_0x0189a98c(uVar2,&"petId",&UNK_0189b004,0,&UNK_0189b00c,0);
  uVar2 = func_0x0189a58c(uVar2,&"isHero",&UNK_0189b014,0,&UNK_0189b01c,0);
  uVar2 = func_0x0189a58c(uVar2,&"ignoreRuneSkills",&UNK_0189b024,0,&UNK_0189b02c,0);
  puVar3 = (undefined8 *)func_0x0189a58c(uVar2,&"ignoreSummonerSkill",&UNK_0189b034,0,&UNK_0189b03c,0);
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

