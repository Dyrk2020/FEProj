// c32INpcAttackAuxiliaryProces(type-fragment) @ 0x488d4c0
__int64 __fastcall sub_488D4C0(
        __int64 a1,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  __int64 v8; // x30
  __int64 result; // x0
  __int64 v10; // x0
  __int64 v11; // t1
  __int64 v12; // x1
  _QWORD v13[12]; // [xsp+0h] [xbp-C0h] BYREF
  __int64 vars0; // [xsp+C0h] [xbp+0h] BYREF

  if ( qword_82F1438 != 0 )
  {
    v13[0] = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a5;
    v13[5] = a6;
    v13[6] = a7;
    v13[7] = a8;
    v13[8] = qword_82F1438;
    v13[9] = v8;
    v13[10] = a2;
    v13[11] = a3;
    sub_5413D24(v13, &vars0, 160);
    return v13[0];
  }
  else
  {
    result = *(_QWORD *)(a3 + 16);
    if ( result != 0 && *(_DWORD *)(result + 20) == *(_DWORD *)(a2 + 80) )
    {
      v11 = *(_QWORD *)(result + 32);
      v10 = result + 32;
      v12 = *(_QWORD *)(a2 + 88) + v11 + ((v11 * *(_QWORD *)(a2 + 96)) >> 14);
      if ( qword_726E800 != 0 )
      {
        return sub_1E93AD4(v10, v12, 0);
      }
      else
      {
        qword_726E800 = v8;
        byte_726E808 = 0;
        result = sub_1E93AD4(v10, v12, 0);
        byte_726E808 = 0;
        qword_726E800 = 0;
      }
    }
  }
  return result;
}
