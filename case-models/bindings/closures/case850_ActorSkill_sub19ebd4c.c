// ===== case850_ActorSkill_sub19ebd4c @ 019ebd4c (DecompileAt3: cleared stale instructions at entry) =====


undefined8
case850_ActorSkill_sub19ebd4c
          (undefined8 *param_1,undefined8 param_2,undefined8 *param_3,undefined8 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined8 uVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  undefined1 auStack_50 [8];
  undefined1 auStack_48 [8];
  
  *param_1 = *param_3;
  *(undefined4 *)(param_1 + 1) = *(undefined4 *)(param_3 + 1);
  *(undefined4 *)(param_3 + 1) = 0;
  func_0x0174ae88(param_1,param_2,1);
  func_0x0124ec90(*param_1,0x19ec0d0,0);
  uVar5 = *param_1;
  uVar1 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&UNK_0575da29);
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar1);
  *(int *)(param_1 + 1) = *(int *)(param_1 + 1) + 1;
  func_0x0174ae88(param_1,param_2,0);
  func_0x0124f920(*param_1,0,0);
  func_0x01252d10(*param_1,0xfffffffe,0x5e7);
  func_0x0124c0c0(*param_1,0xfffffffe);
  func_0x01252d10(*param_1,0xfffffffe,0xc07);
  func_0x0124c0c0(*param_1,0xffffffff);
  func_0x01252d10(*param_1,0xfffffffd,0xc1a);
  func_0x0124ec90(*param_1,0x19ec0d0,0);
  uVar5 = *param_1;
  uVar1 = func_0x0124e920(uVar5,0xfffffffe);
  func_0x0124f120(uVar5,&UNK_0575da29);
  func_0x0124cfc0(uVar5,0xfffffffe,1);
  func_0x0124e060(uVar5,uVar1);
  *(int *)(param_1 + 1) = *(int *)(param_1 + 1) + 1;
  func_0x0174b264(param_1,param_2);
  *(int *)(param_1 + 1) = *(int *)(param_1 + 1) + 1;
  func_0x0124a650(*param_1,0xfff0b9d8,param_4);
  iVar2 = func_0x0124ff50(*param_1,0xffffffff);
  if (iVar2 == 0) {
    *(int *)(param_1 + 1) = *(int *)(param_1 + 1) + 1;
    uVar5 = func_0x01250920(0x10);
    func_0x0571b104(auStack_48,&UNK_0575da2e,auStack_50);
    func_0x056fed48(uVar5,auStack_48);
    uVar3 = func_0x0124dd00(uVar5,PTR_PTR_073186a0,PTR_DAT_07313bc8);
    func_0x0124da10(uVar5);
    if (0 < (int)*(uint *)(param_1 + 1)) {
      func_0x0124c4d0(*param_1,~*(uint *)(param_1 + 1));
    }
    func_0x01251d30(uVar3);
    uVar5 = func_0x014cfb78();
    uVar1 = func_0x0124e920(uVar5,1);
    puVar4 = (undefined8 *)func_0x0124e990(uVar5,uVar1);
    (**(code **)*puVar4)();
    return 0;
  }
  func_0x0124a650(*param_1,0xffffffff,0xc1a);
  func_0x0124a650(*param_1,0xffffffff,0xc07);
  func_0x01252d10(*param_1,0xfffffffa,0xdad);
  func_0x01252d10(*param_1,0xfffffffc,0xdad);
  func_0x01252d10(*param_1,0xfffffffe,0xdad);
  func_0x0124c0c0(*param_1,0xffffffff);
  func_0x01252d10(*param_1,0xfff0b9d8,0x736de41);
  func_0x0124c0c0(*param_1,0xfffffffe);
  func_0x01252d10(*param_1,0xfff0b9d8,0x736d207);
  func_0x0124c0c0(*param_1,0xfffffffd);
  uVar5 = func_0x01252d10(*param_1,0xfff0b9d8,0x736d208);
  return uVar5;
}

