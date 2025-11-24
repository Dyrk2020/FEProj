// flow-node-execute-sub_1FDB908 @ 0x1fdb908
__int64 __fastcall sub_1FDB908(
        __int64 a1,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        _QWORD *a5,
        _QWORD *a6,
        __int64 a7,
        __int64 a8,
        int a9,
        _QWORD *a10,
        __int64 a11,
        int a12,
        __int64 a13)
{
  char v13; // w24
  unsigned int v18; // w26
  __int64 result; // x0
  int v22; // w4
  int v23; // w5
  int v24; // w6
  int v25; // w7
  __int64 v26; // x8
  void *v27; // x19
  __int64 v28; // x20
  int v29; // w8
  _QWORD v30[16]; // [xsp+0h] [xbp-160h] BYREF
  __int64 v31; // [xsp+A0h] [xbp-C0h]
  __int64 v32[2]; // [xsp+100h] [xbp-60h] BYREF
  void *v33; // [xsp+110h] [xbp-50h] BYREF
  __int64 vars0; // [xsp+160h] [xbp+0h] BYREF

  v13 = a8;
  v18 = a3;
  if ( qword_82C9AE8 != 0 )
  {
    v30[0] = a1;
    v30[1] = a2;
    v30[2] = a3;
    v30[3] = a4;
    v30[4] = a5;
    v30[5] = a6;
    v30[6] = a7;
    v30[7] = a8;
    v30[8] = qword_82C9AE8;
    v30[9] = a6;
    v30[10] = a5;
    v30[11] = a4;
    v30[12] = a7;
    v30[13] = a2;
    v30[14] = (unsigned int)a8;
    v30[15] = a1;
    sub_5413D24(v30, &vars0, 160);
    return v30[0];
  }
  result = sub_13CDDB8();
  if ( result != 0 )
  {
    v26 = sub_14696AC(result, v18);
    if ( v26 != 0 )
      return sub_1FDA454(a1, v26, a4, a2, a5, a6, 0, 0, a7, v13 & 1, a9, 0, 0, 0, a10, a11, a12, 0, a13, 0);
    sub_1AAB328(v32, (int)&unk_564D083, 1656384442, 5, v18, v22, v23, v24, v25, v31);
    sub_2072F00(v32);
    v27 = v33;
    if ( v33 == nullptr )
      return 0;
    v28 = v32[0] - (_QWORD)v33;
    v29 = sub_1A6C4CC(
            &v33,
            v33,
            (unsigned int)(LODWORD(v32[0]) - (_DWORD)v33),
            "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
    result = 0;
    if ( v28 != 0 && ((v29 ^ 1) & 1) != 0 )
    {
      free(v27);
      return 0;
    }
  }
  return result;
}
