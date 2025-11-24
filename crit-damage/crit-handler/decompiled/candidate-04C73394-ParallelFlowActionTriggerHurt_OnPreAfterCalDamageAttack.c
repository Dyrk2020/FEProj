// ParallelFlowActionTriggerHurt_OnPreAfterCalDamageAttack @ 0x4c73394
__int64 __fastcall sub_4C73394(__int64 a1, __int64 a2, __int64 a3)
{
  __int64 v5; // x2

  sub_4CCB38C(a2);
  if ( a3 != 0 )
  {
    v5 = *(_QWORD *)(a3 + 24);
    if ( v5 != 0 )
    {
      *(_BYTE *)(v5 + 17) = 1;
      sub_4C729A4(a2, *(_QWORD *)(a3 + 16), v5);
    }
  }
  return sub_4CCB3B4(a2);
}
