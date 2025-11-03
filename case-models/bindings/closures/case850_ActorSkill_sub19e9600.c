// ===== case850_ActorSkill_sub19e9600 @ 019e9600 (DecompileAt3: cleared stale instructions at entry) =====


void case850_ActorSkill_sub19e9600(long param_1,char param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  char acStack_14 [4];
  
  if (*(char *)(param_1 + 0x18) != param_2) {
    uVar3 = *(uint *)(param_1 + 8);
    *(char *)(param_1 + 0x18) = param_2;
    uVar2 = uVar3;
    if ((int)uVar3 < 0) {
      uVar2 = *(uint *)(param_1 - (short)uVar3);
    }
    uVar1 = 0;
    if ((int)uVar3 < 0) {
      uVar1 = uVar3 >> 0x10 & 0x7fff;
    }
    acStack_14[0] = param_2;
    if ((int)uVar2 < 0) {
      func_0x01b83618(0,1,&UNK_0574b398,0x100000074746472);
    }
    else if (uVar2 != 0) {
      func_0x01b1d810(uVar2,uVar1,2,acStack_14);
    }
  }
  return;
}

