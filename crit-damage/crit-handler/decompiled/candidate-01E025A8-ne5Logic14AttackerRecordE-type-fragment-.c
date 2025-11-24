// ne5Logic14AttackerRecordE(type-fragment) @ 0x1e025a8
__int64 __fastcall sub_1E025A8(
        __int64 result,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  _QWORD v8[10]; // [xsp+0h] [xbp-B0h] BYREF
  __int64 vars0; // [xsp+B0h] [xbp+0h] BYREF

  if ( qword_82C4888 != 0 )
  {
    v8[0] = result;
    v8[1] = a2;
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a5;
    v8[5] = a6;
    v8[6] = a7;
    v8[7] = a8;
    v8[8] = qword_82C4888;
    v8[9] = result;
    sub_5413D24(v8, &vars0, 160);
    return v8[0];
  }
  else if ( *(_BYTE *)(result + 16) == 0 )
  {
    result = *(_QWORD *)(result + 680);
    if ( result != 0 )
      return ((__int64 (*)(void))loc_1E0E56C)();
  }
  return result;
}
