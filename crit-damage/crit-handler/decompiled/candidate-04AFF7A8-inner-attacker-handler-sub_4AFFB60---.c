// inner-attacker-handler (sub_4AFFB60 ->) @ 0x4aff7a8
__int64 __fastcall sub_4AFF7A8(__int64 result, __int64 a2, __int64 a3)
{
  __int64 v3; // x19
  __int64 v5; // x8
  __int64 v6; // x0
  __int64 v7; // x0
  __int64 v8; // x0
  __int64 v9; // x9
  void (*v10)(void); // x8
  __int64 v11; // x20
  void (__fastcall *v12)(__int64, __int64); // x21
  __int64 v13; // x0
  __int64 v14; // x0
  __int64 v15; // x1
  __int64 v16; // x9
  __int64 v17; // x20
  void (__fastcall *v18)(__int64, _QWORD); // x21
  unsigned int v19; // w0
  _QWORD *v20; // x0
  __int64 v21; // x1
  _QWORD *v22; // x8
  __int64 v23; // x0
  __int64 v24; // x0
  __int64 v25; // x0

  v3 = result;
  if ( *(_BYTE *)(result + 56) == 0 && a3 != 0 && *(_BYTE *)(result + 58) == 0 )
  {
    v5 = *(_QWORD *)(result + 264);
    *(_QWORD *)(result + 320) = *(_QWORD *)(a3 + 24);
    if ( v5 != 0 )
    {
      v6 = sub_1ED4D6C();
      (*(void (__fastcall **)(_QWORD *__return_ptr, _QWORD, __int64))(**(_QWORD **)(v3 + 264) + 32LL))(
        *(_QWORD **)(v3 + 264),
        *(_QWORD *)(v3 + 264),
        v6);
    }
    v7 = *(_QWORD *)(v3 + 272);
    if ( v7 != 0 )
      (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)v7 + 32LL))(v7, *(_QWORD *)(a3 + 16));
    v8 = *(_QWORD *)(v3 + 296);
    if ( v8 != 0 )
    {
      v9 = *(_QWORD *)(*(_QWORD *)(v3 + 320) + 176LL);
      if ( v9 != 0 && v9 != 0xDDDDDDDDDDDDDDDDLL )
        v10 = *(void (**)(void))(*(_QWORD *)v8 + 32LL);
      else
        v10 = *(void (**)(void))(*(_QWORD *)v8 + 32LL);
      v10();
    }
    v11 = *(_QWORD *)(v3 + 288);
    if ( v11 != 0 )
    {
      v12 = *(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v11 + 32LL);
      v13 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)v3 + 248LL))(v3);
      v12(v11, v13);
    }
    v14 = *(_QWORD *)(v3 + 280);
    if ( v14 != 0xDDDDDDDDDDDDDDDDLL && v14 != 0 && *(_QWORD *)v14 != 0xDDDDDDDDDDDDDDDDLL )
    {
      v15 = 0;
      v16 = *(_QWORD *)(*(_QWORD *)(v3 + 320) + 192LL);
      if ( v16 != 0xDDDDDDDDDDDDDDDDLL && v16 != 0 )
      {
        if ( *(_QWORD *)v16 == 0xDDDDDDDDDDDDDDDDLL )
          v15 = 0;
        else
          v15 = *(unsigned int *)(v16 + 56);
      }
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v14 + 32LL))(v14, v15);
    }
    v17 = *(_QWORD *)(v3 + 304);
    if ( v17 != 0xDDDDDDDDDDDDDDDDLL && v17 != 0 && *(_QWORD *)v17 != 0xDDDDDDDDDDDDDDDDLL )
    {
      v18 = *(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)v17 + 32LL);
      v19 = sub_1ED50D4(*(_QWORD *)(v3 + 320));
      v18(v17, v19);
    }
    if ( *(_QWORD *)(v3 + 312) == 0 )
      goto LABEL_42;
    v20 = *(_QWORD **)(*(_QWORD *)(v3 + 320) + 176LL);
    if ( v20 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL
      || v20 == nullptr
      || *v20 == 0xDDDDDDDDDDDDDDDDLL
      || ((__int64 (*)(void))sub_1D06B44)() == 0 )
    {
      goto LABEL_42;
    }
    if ( *(_QWORD *)(sub_1D06B44(*(_QWORD *)(*(_QWORD *)(v3 + 320) + 176LL)) + 64) == 0xDDDDDDDDDDDDDDDDLL )
    {
      v21 = 0;
      v22 = *(_QWORD **)(v3 + 328);
      if ( v22 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL )
        goto LABEL_42;
    }
    else
    {
      v21 = *(unsigned int *)(sub_1D06B44(*(_QWORD *)(*(_QWORD *)(v3 + 320) + 176LL)) + 72);
      v22 = *(_QWORD **)(v3 + 328);
      if ( v22 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL )
      {
LABEL_42:
        v25 = sub_4B0703C(v3, *(_QWORD *)(*(_QWORD *)(v3 + 320) + 280LL), *(_QWORD *)(*(_QWORD *)(v3 + 320) + 288LL));
        return sub_4B067C0(v3, 0, v25);
      }
    }
    if ( v22 != nullptr && *v22 != 0xDDDDDDDDDDDDDDDDLL )
    {
      v23 = v22[64];
      if ( v23 != 0 )
      {
        v24 = sub_1FA40D8(v23, v21);
        (*(void (__fastcall **)(_QWORD *__return_ptr, _QWORD, __int64))(**(_QWORD **)(v3 + 312) + 32LL))(
          *(_QWORD **)(v3 + 312),
          *(_QWORD *)(v3 + 312),
          v24);
      }
    }
    goto LABEL_42;
  }
  return result;
}
