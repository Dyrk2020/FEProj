// FlowActionAttackDelayDieTrigger_OnActorDie @ 0x4aba60c
__int64 __fastcall sub_4ABA60C(
        __int64 a1,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  __int64 result; // x0
  _QWORD v10[10]; // [xsp+0h] [xbp-B0h] BYREF
  __int64 vars0; // [xsp+B0h] [xbp+0h] BYREF

  if ( qword_82FD320 != 0 )
  {
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;
    v10[5] = a6;
    v10[6] = a7;
    v10[7] = a8;
    v10[8] = qword_82FD320;
    v10[9] = a2;
    sub_5413D24(v10, &vars0, 160);
    return v10[0];
  }
  else
  {
    result = sub_1572A10();
    if ( result - *(_QWORD *)(a2 + 312) <= *(_QWORD *)(a2 + 272) )
      return sub_4B067C0(a2, 0, 0);
  }
  return result;
}
