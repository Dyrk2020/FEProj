// FlowActionAttackDelayDieTrigger_OnInflict @ 0x4aba50c
__int64 __fastcall sub_4ABA50C(
        __int64 result,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  int v10; // w21
  _QWORD v11[10]; // [xsp+0h] [xbp-C0h] BYREF
  __int64 vars0; // [xsp+C0h] [xbp+0h] BYREF

  if ( qword_82FD318 != 0 )
  {
    v11[0] = result;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;
    v11[6] = a7;
    v11[7] = a8;
    v11[8] = qword_82FD318;
    v11[9] = a2;
    sub_5413D24(v11, &vars0, 160);
    return v11[0];
  }
  else if ( *(_BYTE *)(a2 + 56) == 0 && *(_BYTE *)(a2 + 58) == 0 )
  {
    result = *(_QWORD *)(a2 + 296);
    if ( result != 0xDDDDDDDDDDDDDDDDLL && result != 0 && *(_QWORD *)result != 0xDDDDDDDDDDDDDDDDLL )
    {
      v10 = *(_DWORD *)(a2 + 304);
      result = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)result + 168LL))(result);
      if ( v10 == (_DWORD)result && *(_QWORD *)(a2 + 296) == *(_QWORD *)(a3 + 16) )
      {
        result = sub_1572A10();
        *(_QWORD *)(a2 + 312) = result;
      }
    }
  }
  return result;
}
