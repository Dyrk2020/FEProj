// ===== case819-BulletShaderData @ 017376a4 =====
// NOTE: &UNK_<ghidra-addr> references that resolve to printable strings in the
// runtime string pools (plaintext or dword-XOR 0x30 islands, delta sweep) were
// rewritten as &"<string>" by postprocess.py; code/data addresses remain as &UNK_.
// existing function case819-BulletShaderData


void case819_BulletShaderData(undefined8 param_1)

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
  func_0x019c7068(&uStack_30,&"BulletShaderData",&uStack_40,0x736d101);
  uVar2 = func_0x019c6a48(&uStack_30,&"propertyType",&UNK_019c6c30,0,&UNK_019c6c38,0);
  uVar2 = func_0x019c6a48(uVar2,&"paramKey",&UNK_019c6c40,0,&UNK_019c6c48,0);
  uVar2 = func_0x019c6c50(uVar2,&"paramValue",&UNK_019c6e38,0,&UNK_019c6e40,0);
  puVar3 = (undefined8 *)func_0x019c6e48(uVar2,&"color",&UNK_019c7030,0,&UNK_019c7044,0);
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

