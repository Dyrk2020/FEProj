// flow-step-engine-sub_4B067C0 @ 0x4b067c0
__int64 __fastcall sub_4B067C0(__int64 *a1, __int64 a2, __int64 a3)
{
  __int64 v3; // x23
  __int64 v4; // x24
  __int64 v5; // x25
  __int64 v6; // x26
  __int64 v7; // x27
  __int64 v8; // x28
  _QWORD *v12; // x8
  __int64 result; // x0
  __int64 v14; // x22
  __int64 v15; // x0
  __int64 v16; // x0
  __int64 v17; // x1
  __int64 v18; // x2
  __int64 v19; // x3
  __int64 v20; // x4
  __int64 v21; // x5
  __int64 v22; // x6
  __int64 v23; // x7
  __int64 v24; // x8
  _QWORD *v25; // x0
  __int64 v26; // x1
  __int64 v27; // x2
  __int64 v28; // x3
  __int64 v29; // x4
  __int64 v30; // x5
  __int64 v31; // x6
  __int64 v32; // x7
  int v33; // w8
  __int64 v34; // x21
  _QWORD *v35; // x8
  __int64 v36; // x0
  __int64 v37; // x8
  __int64 v38; // x9
  unsigned __int64 v39; // x27
  unsigned __int64 v40; // x9
  int v41; // w28
  __int64 v42; // x24
  __int64 v43; // x23
  __int64 v44; // x21
  unsigned int v45; // w22
  __int64 v46; // x23
  __int64 v47; // x0
  __int64 v48; // x24
  __int64 v49; // x25
  __int64 v50; // x0
  int v51; // w24
  __int64 v52; // x23
  __int64 v53; // x0
  __int64 v54; // x25
  __int64 v55; // x26
  __int64 v56; // x0
  __int64 v57; // x8
  __int64 v58; // x9
  unsigned __int64 v59; // x20
  unsigned __int64 v60; // x9
  int v61; // w21
  char v62; // w0
  int v63; // w8
  _QWORD *v64; // [xsp+0h] [xbp-130h] BYREF
  __int64 v65; // [xsp+8h] [xbp-128h]
  __int64 v66; // [xsp+10h] [xbp-120h]
  __int64 v67; // [xsp+18h] [xbp-118h]
  __int64 v68; // [xsp+20h] [xbp-110h]
  __int64 v69; // [xsp+28h] [xbp-108h]
  __int64 v70; // [xsp+30h] [xbp-100h]
  __int64 v71; // [xsp+38h] [xbp-F8h]
  __int64 v72; // [xsp+40h] [xbp-F0h]
  __int64 *v73; // [xsp+48h] [xbp-E8h]
  __int64 v74; // [xsp+50h] [xbp-E0h]
  __int64 v75; // [xsp+58h] [xbp-D8h]
  __int64 v76; // [xsp+60h] [xbp-D0h]
  __int64 v77; // [xsp+68h] [xbp-C8h]
  __int64 v78; // [xsp+70h] [xbp-C0h]
  __int64 v79; // [xsp+78h] [xbp-B8h]
  __int64 v80; // [xsp+80h] [xbp-B0h]
  __int64 v81; // [xsp+88h] [xbp-A8h]
  __int64 v82; // [xsp+90h] [xbp-A0h]
  __int64 v83; // [xsp+C8h] [xbp-68h] BYREF
  char v84; // [xsp+D0h] [xbp-60h]
  char v85; // [xsp+D1h] [xbp-5Fh]
  int v86; // [xsp+D4h] [xbp-5Ch]
  int v87; // [xsp+D8h] [xbp-58h]
  int v88; // [xsp+DCh] [xbp-54h]
  _QWORD vars0[2]; // [xsp+130h] [xbp+0h] BYREF

  v12 = (_QWORD *)(*(__int64 (__fastcall **)(__int64 *))(*a1 + 192))(a1);
  result = 0;
  if ( v12 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL || v12 == nullptr )
    return result;
  if ( *v12 == 0xDDDDDDDDDDDDDDDDLL )
    return 0;
  v14 = sub_32ECF64(v12[19]);
  if ( v14 != sub_3E8A374(a1) )
    return 0;
  if ( *((_BYTE *)a1 + 56) != 0 )
    return 0;
  if ( *((_BYTE *)a1 + 58) != 0 )
    return 0;
  if ( sub_3E8A408(a1) != 0 )
  {
    v15 = sub_3E8A408(a1);
    if ( (sub_1D0BE98(v15) & 1) != 0 )
      return 0;
  }
  ++*((_DWORD *)a1 + 15);
  v16 = sub_4B0619C(a1, a1 + 18, 1);
  if ( (v16 & 1) == 0 )
  {
    (*(void (__fastcall **)(__int64 *))(*a1 + 296))(a1);
    return 0;
  }
  if ( qword_8300118 != 0 )
  {
    v64 = (_QWORD *)v16;
    v65 = v17;
    v66 = v18;
    v67 = v19;
    v68 = v20;
    v69 = v21;
    v70 = v22;
    v71 = v23;
    v72 = qword_8300118;
    v73 = a1;
    v74 = a2;
    v75 = a3;
    v76 = v14;
    v77 = v3;
    v78 = v4;
    v79 = v5;
    v80 = v6;
    v81 = v7;
    v82 = v8;
    sub_5413D24(&v64, vars0, 160);
    return (__int64)v64;
  }
  v24 = *a1;
  a1[30] = a3;
  v25 = (_QWORD *)(*(__int64 (__fastcall **)(__int64 *))(v24 + 192))(a1);
  if ( v25 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && v25 != nullptr && *v25 != 0xDDDDDDDDDDDDDDDDLL )
    v25[37] = a3;
  if ( a2 == 0 )
  {
    v25 = (_QWORD *)(*(__int64 (__fastcall **)(__int64 *))(*a1 + 192))(a1);
    a2 = v25[16];
  }
  v33 = *((_DWORD *)a1 + 16);
  *((_BYTE *)a1 + 58) = 1;
  v34 = *((unsigned __int8 *)a1 + 232);
  *((_DWORD *)a1 + 16) = v33 + 1;
  if ( qword_8300120 != 0 )
  {
    v64 = v25;
    v65 = v26;
    v66 = v27;
    v67 = v28;
    v68 = v29;
    v69 = v30;
    v70 = v31;
    v71 = v32;
    v72 = qword_8300120;
    v73 = a1;
    v74 = a2;
    v75 = v34;
    v76 = v14;
    v77 = v3;
    v78 = v4;
    v79 = v5;
    v80 = v6;
    v81 = v7;
    v82 = v8;
    sub_5413D24(&v64, vars0, 160);
    return (__int64)v64;
  }
  v35 = (_QWORD *)sub_3E8A8E0(a1);
  v36 = 0xFFFFFFFFLL;
  if ( v35 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && v35 != nullptr )
  {
    if ( *v35 == 0xDDDDDDDDDDDDDDDDLL )
      v36 = 0xFFFFFFFFLL;
    else
      v36 = sub_1F30C7C(v35);
  }
  v83 = a2;
  v84 = v34;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = v36;
  v37 = a1[10];
  v38 = a1[11];
  v39 = (unsigned __int64)(v38 - v37) >> 3;
  if ( (int)v39 >= 1 )
  {
    if ( v38 != v37 )
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = *(_QWORD *)(v37 + 8 * v40);
        if ( v42 == 0 )
          goto LABEL_47;
        v36 = *(_QWORD *)(v42 + 48);
        if ( v36 == 0 )
          goto LABEL_47;
        v36 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)v36 + 32LL))(v36);
        if ( v36 == 0 )
          goto LABEL_47;
        v36 = *(_QWORD *)(v42 + 40);
        if ( v36 == 0 )
          goto LABEL_47;
        v36 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)v36 + 32LL))(v36);
        if ( v36 == 0 )
          goto LABEL_47;
        v43 = (*(__int64 (__fastcall **)(_QWORD))(**(_QWORD **)(v42 + 48) + 32LL))(*(_QWORD *)(v42 + 48));
        v36 = (__int64)(*(_QWORD *(__fastcall **)(_QWORD *__return_ptr, _QWORD))(**(_QWORD **)(v42 + 40) + 32LL))(
                         *(_QWORD **)(v42 + 40),
                         *(_QWORD *)(v42 + 40));
        v44 = v36;
        if ( v43 == 0 || v36 == 0 )
          goto LABEL_47;
        if ( *(_QWORD *)(v42 + 56) == 0xDDDDDDDDDDDDDDDDLL )
        {
          v45 = 0;
          if ( *(_BYTE *)(v42 + 8) != 0 )
            goto LABEL_43;
        }
        else
        {
          v45 = *(_DWORD *)(v42 + 72);
          if ( *(_BYTE *)(v42 + 8) != 0 )
          {
LABEL_43:
            if ( *(_BYTE *)(v42 + 16) != 0 )
              v51 = (*(__int64 (__fastcall **)(_QWORD))(**(_QWORD **)(v42 + 24) + 32LL))(*(_QWORD *)(v42 + 24));
            else
              v51 = *(_DWORD *)(v42 + 20);
            v52 = sub_1E833D8(v43);
            v53 = sub_3E8A408(a1);
            v54 = a1[28];
            v55 = v53;
            v56 = sub_3E8A8E0(a1);
            v36 = ((__int64 (__fastcall *)(__int64, __int64, _QWORD, __int64, __int64, _QWORD, __int64, __int64, int, __int64, __int64 *, _DWORD, __int64))sub_1FDB908)(
                    v52,
                    a2,
                    v45,
                    v44,
                    v55,
                    0,
                    v54,
                    1,
                    v51,
                    v56,
                    &v83,
                    0,
                    a1[30]);
LABEL_47:
            if ( v41 >= (int)v39 )
              goto LABEL_50;
            goto LABEL_48;
          }
        }
        v46 = sub_1E833D8(v43);
        v47 = sub_3E8A408(a1);
        v48 = a1[28];
        v49 = v47;
        v50 = sub_3E8A8E0(a1);
        v36 = ((__int64 (__fastcall *)(__int64, __int64, _QWORD, __int64, __int64, _QWORD, __int64, _QWORD, _DWORD, __int64, __int64 *, _DWORD, __int64))sub_1FDB908)(
                v46,
                a2,
                v45,
                v44,
                v49,
                0,
                v48,
                0,
                0,
                v50,
                &v83,
                0,
                a1[30]);
        if ( v41 >= (int)v39 )
          goto LABEL_50;
LABEL_48:
        v37 = a1[10];
        v40 = v41++;
      }
      while ( (a1[11] - v37) >> 3 > v40 );
    }
    v36 = sub_4B07124();
  }
LABEL_50:
  v57 = a1[14];
  v58 = a1[15];
  v59 = (unsigned __int64)(v58 - v57) >> 3;
  if ( (int)v59 >= 1 )
  {
    if ( v58 == v57 )
    {
LABEL_57:
      sub_4B07128(v36);
    }
    else
    {
      v60 = 0;
      v61 = 1;
      while ( 1 )
      {
        v36 = *(_QWORD *)(v57 + 8 * v60);
        if ( v36 != 0 )
          v36 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)v36 + 88LL))(v36);
        if ( v61 >= (int)v59 )
          break;
        v57 = a1[14];
        v60 = v61++;
        if ( (a1[15] - v57) >> 3 <= v60 )
          goto LABEL_57;
      }
    }
  }
  if ( *((_BYTE *)a1 + 57) != 0 )
    v62 = 1;
  else
    v62 = sub_4B0619C(a1, a1 + 22, 0);
  v63 = *((unsigned __int8 *)a1 + 55);
  *((_BYTE *)a1 + 57) = v62 & 1;
  if ( v63 != 0 && (v62 & 1) != 0 )
    sub_4B0609C(a1, 1);
  *((_BYTE *)a1 + 58) = 0;
  return 1;
}
