// ===== case736-MonsterBehaviorFSMResObject @ 01726a5c =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case736-MonsterBehaviorFSMResObject


void case736_MonsterBehaviorFSMResObject(undefined8 param_1)

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
  func_0x0197dc30(&uStack_30,&"MonsterBehaviorFSMResObject",&uStack_40,0x736d101);
  uVar2 = func_0x0197d9f8(&uStack_30,&"searchEnemyRadius",&UNK_0197dbe0,0,&UNK_0197dbe8,0);
  uVar2 = func_0x0197d9f8(uVar2,&"hatredEnemyRadius",&UNK_0197dbf0,0,&UNK_0197dbf8,0);
  uVar2 = func_0x0197d9f8(uVar2,&"forceTargetMaxDuration",&UNK_0197dc00,0,&UNK_0197dc08,0);
  uVar2 = func_0x0197d9f8(uVar2,&"forceTargetMaxDistance",&UNK_0197dc10,0,&UNK_0197dc18,0);
  puVar3 = (undefined8 *)func_0x0197d9f8(uVar2,&"callForHelpRadius",&UNK_0197dc20,0,&UNK_0197dc28,0);
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

