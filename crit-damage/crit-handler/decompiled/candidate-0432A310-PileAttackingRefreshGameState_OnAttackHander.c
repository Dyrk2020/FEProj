// PileAttackingRefreshGameState_OnAttackHander @ 0x432a310
void __fastcall sub_432A310(__int64 a1, __int64 a2, __int64 a3)
{
  if ( a3 != 0 )
    *(_QWORD *)(a2 + 256) += *(_QWORD *)(*(_QWORD *)(a3 + 24) + 144LL);
}
