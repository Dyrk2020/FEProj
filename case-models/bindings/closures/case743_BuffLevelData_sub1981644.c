// ===== case743_BuffLevelData_sub1981644 @ 01981644 (DecompileAt3: cleared stale instructions at entry) =====


undefined8 *
case743_BuffLevelData_sub1981644
          (undefined8 *param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,long param_5
          ,ulong param_6)

{
  undefined4 uVar1;
  undefined8 *puVar2;
  long *plVar3;
  undefined8 uVar4;
  
  puVar2 = (undefined8 *)func_0x0124cba0(*param_1,0x10);
  *puVar2 = param_3;
  puVar2[1] = param_4;
  func_0x0124ec90(*param_1,&UNK_0198229c,1);
  func_0x0124c0c0(*param_1,0xffffffff);
  uVar4 = *param_1;
  func_0x0124a650(uVar4,0xfffffffb,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar1 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,param_2);
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar1);
  func_0x0124c4d0(uVar4,0xfffffffd);
  uVar4 = *param_1;
  func_0x0124a650(uVar4,0xfffffffd,0x6e7);
  func_0x0124c0c0(uVar4,0xfffffffe);
  uVar1 = func_0x0124e920(uVar4,0xfffffffe);
  func_0x0124f120(uVar4,param_2);
  func_0x0124cfc0(uVar4,0xfffffffe,1);
  func_0x0124e060(uVar4,uVar1);
  func_0x0124c4d0(uVar4,0xfffffffd);
  if ((param_5 != 0) || (param_6 != 0 && (param_6 & 1) != 0)) {
    plVar3 = (long *)func_0x0124cba0(*param_1,0x10);
    *plVar3 = param_5;
    plVar3[1] = param_6;
    func_0x0124ec90(*param_1,&UNK_01982310,1);
    uVar4 = *param_1;
    func_0x0124a650(uVar4,0xfffffffd,0x5e7);
    func_0x0124c0c0(uVar4,0xfffffffe);
    uVar1 = func_0x0124e920(uVar4,0xfffffffe);
    func_0x0124f120(uVar4,param_2);
    func_0x0124cfc0(uVar4,0xfffffffe,1);
    func_0x0124e060(uVar4,uVar1);
    func_0x0124c4d0(uVar4,0xfffffffd);
  }
  return param_1;
}

