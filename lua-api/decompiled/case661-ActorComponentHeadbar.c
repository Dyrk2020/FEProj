// ===== case661-ActorComponentHeadbar @ 01716830 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case661-ActorComponentHeadbar


void case661_ActorComponentHeadbar(undefined8 param_1)

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
  func_0x01933348(&uStack_40,&"ActorComponentHeadbar",&uStack_50,0x736d101);
  uVar3 = func_0x0193206c(&uStack_40,&"showRecentlyDamage",&UNK_01932254,0,&UNK_0193225c,0);
  uVar3 = func_0x0193206c(uVar3,&"showAdditionalDisplay",&UNK_019322ec,0,&UNK_019322f4,0);
  puVar4 = (undefined8 *)func_0x01932384(uVar3,&"headbarScale",&UNK_0193256c,0,&UNK_01932580,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019325a4;
  func_0x0124ec90(*puVar4,&UNK_01933d7c,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"changeFollowActor");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"changeFollowActor");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x01932384(puVar4,&"changeFollowActorOffset",&UNK_019325ac,0,&UNK_019325c0,0);
  uVar3 = func_0x019325e4(uVar3,&"executeValue",&UNK_019327cc,0,&UNK_019327d4,0);
  uVar3 = func_0x0193206c(uVar3,&"forceShowExcuteIndicator",&UNK_01932864,0,&UNK_0193286c,0);
  uVar3 = func_0x019328fc(uVar3,&"visiStack",&UNK_01932ae4,0,&UNK_01932aec,0);
  uVar3 = func_0x0193206c(uVar3,&"stateIconShowing",&UNK_01932b7c,0,&UNK_01932b84,0);
  uVar3 = func_0x019328fc(uVar3,&"leftVfxUniqueId",&UNK_01932c18,0,&UNK_01932c20,0);
  uVar3 = func_0x01932c28(uVar3,&"stateIconOffsetVisiTo",&UNK_01932e10,0,&UNK_01932e18,0);
  uVar3 = func_0x01932eac(uVar3,&"stateIconOffset",&UNK_01933094,0,&UNK_019330a0,0);
  uVar3 = func_0x019325e4(uVar3,&"equipKillPercent",&UNK_019330c8,0,&UNK_019330d0,0);
  uVar3 = func_0x0193206c(uVar3,&"hideShoppingVfx",&UNK_01933168,0,&UNK_01933170,0);
  uVar3 = func_0x019328fc(uVar3,&"resourceBarColor",&UNK_01933208,0,&UNK_01933210,0);
  puVar4 = (undefined8 *)func_0x019325e4(uVar3,&"resourceBarProgress",&UNK_019332a8,0,&UNK_019332b0,0);
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

