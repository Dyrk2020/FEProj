// dispatch-core-sub_1E8CD34 @ 0x1e8cd34
void __fastcall sub_1E8CD34(_QWORD *a1, __int64 a2, __int64 a3, __int64 a4, __int64 a5, unsigned int a6)
{
  _QWORD *v6; // x24
  int v11; // w21
  __int64 v12; // x0
  __int64 v13; // x0
  __int64 v14; // x1
  int v15; // w4
  int v16; // w5
  int v17; // w6
  int v18; // w7
  unsigned int v19; // w25
  __int64 v20; // x0
  void *v21; // x19
  __int64 v22; // x20
  int v23; // w0
  __int64 v24[2]; // [xsp+0h] [xbp-60h] BYREF
  void *v25; // [xsp+10h] [xbp-50h] BYREF

  v6 = a1;
  v11 = a2;
  if ( a1[12] != 0 )
    goto LABEL_2;
  v13 = (*(__int64 (__fastcall **)(_QWORD *))(*a1 + 320LL))(a1);
  v19 = v13;
  if ( (int)v13 <= v11 )
  {
    sub_1AAB328(v24, (int)"(--LOG_ID:%lu# %d# %d--)", 1353376532, v11, v13, v15, v16, v17, v18, v24[0]);
    sub_2072F00(v24);
    v21 = v25;
    if ( v25 != nullptr )
    {
      v22 = v24[0] - (_QWORD)v25;
      v23 = sub_1A6C4CC(
              &v25,
              v25,
              (unsigned int)(LODWORD(v24[0]) - (_DWORD)v25),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v22 != 0 && ((v23 ^ 1) & 1) != 0 )
        free(v21);
    }
  }
  else
  {
    v20 = sub_13CDEA8(v13, v14);
    a1 = (_QWORD *)sub_1A8435C(v20, *((unsigned int *)v6 + 5), v19);
    v6[12] = a1;
    if ( a1 != nullptr )
    {
LABEL_2:
      v12 = sub_13CDEA8(a1, a2);
      sub_1A844A4(v12, v6[12], (unsigned int)v11, a3, a4, a5, a6);
    }
  }
}
