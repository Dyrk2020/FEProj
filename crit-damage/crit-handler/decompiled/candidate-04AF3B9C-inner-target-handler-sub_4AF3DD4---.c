// inner-target-handler (sub_4AF3DD4 ->) @ 0x4af3b9c
__int64 __fastcall sub_4AF3B9C(__int64 result, __int64 a2, __int64 a3)
{
  _QWORD *v3; // x19
  __int64 v4; // x8
  __int64 v5; // x0
  __int64 v6; // x20
  void (__fastcall *v7)(__int64, __int64); // x21
  __int64 v8; // x0
  __int64 v9; // x20
  void (__fastcall *v10)(__int64, _QWORD); // x21
  unsigned int v11; // w0
  __int64 v12; // x20
  void (__fastcall *v13)(__int64, _QWORD); // x21
  unsigned int v14; // w0
  __int64 v15; // x0

  v3 = (_QWORD *)result;
  if ( *(_BYTE *)(result + 56) == 0 && a3 != 0 && *(_BYTE *)(result + 58) == 0 )
  {
    v4 = *(_QWORD *)(a3 + 16);
    v5 = *(_QWORD *)(result + 264);
    v3[37] = v4;
    if ( v5 != 0 )
      (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)v5 + 32LL))(v5, *(_QWORD *)(v4 + 200));
    v6 = v3[34];
    if ( v6 != 0 )
    {
      v7 = *(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 32LL);
      v8 = (*(__int64 (__fastcall **)(_QWORD *))(*v3 + 248LL))(v3);
      v7(v6, v8);
    }
    v9 = v3[36];
    if ( v9 != 0 )
    {
      v10 = *(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)v9 + 32LL);
      v11 = sub_1ED50D4(v3[37]);
      v10(v9, v11);
    }
    v12 = v3[35];
    if ( v12 != 0 )
    {
      v13 = *(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)v12 + 32LL);
      v14 = sub_1ED4FFC(v3[37]);
      v13(v12, v14);
    }
    v15 = sub_4B0703C(v3, *(_QWORD *)(v3[37] + 280LL), *(_QWORD *)(v3[37] + 288LL));
    return sub_4B067C0(v3, 0, v15);
  }
  return result;
}
