// flow-value-getter-sub_1ED50D4 @ 0x1ed50d4
__int64 __fastcall sub_1ED50D4(
        __int64 a1,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  _QWORD *v9; // x0
  unsigned int v10; // w1
  _QWORD v11[10]; // [xsp+0h] [xbp-B0h] BYREF
  __int64 vars0; // [xsp+B0h] [xbp+0h] BYREF

  if ( qword_82C6A58 != 0 )
  {
    v11[0] = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;
    v11[6] = a7;
    v11[7] = a8;
    v11[8] = qword_82C6A58;
    v11[9] = a1;
    sub_5413D24(v11, &vars0, 160);
    return v11[0];
  }
  else
  {
    v9 = *(_QWORD **)(a1 + 192);
    v10 = 0;
    if ( v9 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && v9 != nullptr )
    {
      if ( *v9 == 0xDDDDDDDDDDDDDDDDLL )
        return 0;
      else
        return (unsigned int)sub_1DE9338();
    }
    return v10;
  }
}
