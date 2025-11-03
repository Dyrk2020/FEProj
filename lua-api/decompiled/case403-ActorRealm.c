// ===== case403-ActorRealm @ 016e1ae8 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case403-ActorRealm


void case403_ActorRealm(undefined8 param_1)

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
  func_0x0184d5b4(&uStack_40,&"ActorRealm",&uStack_50,0x736d101);
  uVar3 = func_0x0184ca98(&uStack_40,&"id",&UNK_0184cc80,0,&UNK_0184cc88,0);
  uVar3 = func_0x0184cca4(uVar3,&"owner",&UNK_0184ce8c,0,0,0);
  uVar3 = func_0x0184cca4(uVar3,&"target",&UNK_0184ce94,0,0,0);
  uVar3 = func_0x0184ce9c(uVar3,&"center",&UNK_0184d084,0,&UNK_0184d098,0);
  uVar3 = func_0x0184d0bc(uVar3,&"radius",&UNK_0184d2a4,0,&UNK_0184d2ac,0);
  puVar4 = (undefined8 *)func_0x0184d30c(uVar3,&"beforeRelease",&UNK_0184d4f4,0,&UNK_0184d4fc,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_0184d58c;
  func_0x0124ec90(*puVar4,&UNK_0184ed50,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"members");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"members");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x0184d0bc(puVar4,&"delayDestoryTime",&UNK_0184d594,0,&UNK_0184d59c,0);
  puVar4 = (undefined8 *)func_0x0184d0bc(uVar3,&"startDestoryTime",&UNK_0184d5a4,0,&UNK_0184d5ac,0);
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

