// PileAttackingRefreshGameState_OnKillHander @ 0x432a32c
__int64 __fastcall sub_432A32C(__int64 a1, __int64 a2)
{
  __int64 result; // x0
  __int64 v4; // x19
  __int64 v5; // x0

  *(_BYTE *)(*(_QWORD *)(a2 + 224) + 242LL) = 1;
  result = sub_13CE4A0();
  if ( *(_DWORD *)(result + 17200) != 0 )
    *(_BYTE *)(*(_QWORD *)(a2 + 224) + 243LL) = 1;
  if ( *(_BYTE *)(a2 + 216) == 0 )
  {
    result = sub_431CBDC(a2);
    v4 = *(_QWORD *)(*(_QWORD *)(result + 8) + 1160LL);
    if ( v4 != 0 && (*(_BYTE *)(*(_QWORD *)(v4 + 480) + 224LL) & 8) != 0 )
    {
      v5 = sub_13CE4A0();
      return sub_4325C30(v5 + 16744, *(unsigned int *)(v4 + 408), *(_QWORD *)(v4 + 824) + 72LL);
    }
  }
  return result;
}
