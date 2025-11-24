// dispatch-vector-bridge-sub_1A8435C @ 0x1a8435c
_QWORD *__fastcall sub_1A8435C(__int64 a1, int a2, int a3)
{
  __int64 *v4; // x8
  __int64 v7; // x10
  __int64 v8; // x9
  __int64 *v9; // x10
  _QWORD *v10; // x21
  _QWORD *v11; // x0
  __int64 v12; // x1
  __int64 v13; // x9
  unsigned __int64 v14; // x8
  __int64 v15; // x8
  __int64 v16; // x9
  unsigned __int64 v17; // x8
  __int64 v18; // x0
  _QWORD v20[2]; // [xsp+0h] [xbp-40h] BYREF
  _QWORD v21[2]; // [xsp+10h] [xbp-30h] BYREF

  v4 = *(__int64 **)(a1 + 8);
  v7 = *v4;
  if ( *v4 == 0 )
    goto LABEL_12;
  v8 = *(_QWORD *)(a1 + 8);
  do
  {
    if ( *(_DWORD *)(v7 + 32) < a2 )
    {
      v9 = (__int64 *)(v7 + 16);
    }
    else
    {
      v8 = v7;
      v9 = (__int64 *)(v7 + 8);
    }
    v7 = *v9;
  }
  while ( v7 != 0 );
  if ( (__int64 *)v8 == v4 )
    goto LABEL_12;
  if ( *(_DWORD *)(v8 + 32) > a2 )
    v8 = *(_QWORD *)(a1 + 8);
  if ( (__int64 *)v8 == v4 || (v10 = *(_QWORD **)(v8 + 40)) == nullptr )
  {
LABEL_12:
    v11 = (_QWORD *)sub_1A85628(a1);
    v10 = v11;
    if ( v11 != nullptr )
    {
      v21[0] = 0;
      v13 = *v11;
      v12 = v11[1];
      v14 = (int)((v12 - *v11) >> 3);
      if ( v14 <= a3 )
      {
        v17 = a3 - v14;
        if ( v17 != 0 )
        {
          if ( (v11[2] - v12) >> 3 >= v17 )
            sub_1A86DAC(v11, v12, v17, v21, v20);
          else
            sub_1A8705C(v11, v12, v21, v20, v17, 0);
        }
      }
      else
      {
        v15 = v13 + 8LL * a3;
        if ( v15 != v12 )
        {
          v16 = v12 + 8 * (1LL - a3) - v13;
          do
            v16 -= 8;
          while ( v16 != 0 );
          v11[1] = v15;
        }
      }
      v18 = *(_QWORD *)(a1 + 8);
      LODWORD(v21[0]) = a2;
      v21[1] = v10;
      sub_1A872A4(v20, v18, v21);
    }
  }
  return v10;
}
