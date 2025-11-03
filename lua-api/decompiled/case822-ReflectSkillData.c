// ===== case822-ReflectSkillData @ 01737f0c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case822-ReflectSkillData


void case822_ReflectSkillData(undefined8 param_1)

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
  func_0x019ca3c8(&uStack_40,&"ReflectSkillData",&uStack_50,0x736d101);
  uVar3 = func_0x019c9928(&uStack_40,&"curSkillGuid",&UNK_019c9b10,0,&UNK_019c9b18,0);
  uVar3 = func_0x019c9928(uVar3,&"sourceSkillGuid",&UNK_019c9b34,0,&UNK_019c9b3c,0);
  uVar3 = func_0x019c9928(uVar3,&"createSkillResId",&UNK_019c9b58,0,&UNK_019c9b60,0);
  uVar3 = func_0x019c9b7c(uVar3,&"sourceCaster",&UNK_019c9d64,0,0,0);
  uVar3 = func_0x019c9b7c(uVar3,&"caster",&UNK_019c9d6c,0,0,0);
  uVar3 = func_0x019c9b7c(uVar3,&"skinActor",&UNK_019c9d74,0,0,0);
  puVar4 = (undefined8 *)func_0x019c9b7c(uVar3,&"lastReflectCaster",&UNK_019c9d7c,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019c9d84;
  func_0x0124ec90(*puVar4,&UNK_019cb058,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"reflectSkill");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"reflectSkill");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = func_0x019c9d8c(puVar4,&"targetPosition",&UNK_019c9f74,0,&UNK_019c9f88,0);
  uVar3 = func_0x019c9928(uVar3,&"sharedRefCount",&UNK_019c9fac,0,&UNK_019c9fb4,0);
  uVar3 = func_0x019c9fd0(uVar3,&"refBuffList",&UNK_019ca1b8,0,0,0);
  puVar4 = (undefined8 *)func_0x019c9fd0(uVar3,&"refTriggerBuffList",&UNK_019ca1c0,0,0,0);
  puVar5 = (undefined8 *)func_0x0124cba0(*puVar4,0x10);
  puVar5[1] = 0;
  *puVar5 = &UNK_019ca1c8;
  func_0x0124ec90(*puVar4,&UNK_019cbd60,1);
  func_0x0124c0c0(*puVar4,0xffffffff);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"reflectMgr");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  uVar3 = *puVar4;
  func_0x0124a650(uVar3,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar3,0xfffffffe);
  uVar2 = func_0x0124e920(uVar3,0xfffffffe);
  func_0x0124f120(uVar3,&"reflectMgr");
  func_0x0124cfc0(uVar3,0xfffffffe,1);
  func_0x0124e060(uVar3,uVar2);
  func_0x0124c4d0(uVar3,0xfffffffd);
  puVar4 = (undefined8 *)func_0x019ca1d0(puVar4,&"destoryStartTime",&UNK_019ca3b8,0,&UNK_019ca3c0,0);
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

