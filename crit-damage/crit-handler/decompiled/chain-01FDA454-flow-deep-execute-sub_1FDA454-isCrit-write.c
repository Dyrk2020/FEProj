// flow-deep-execute-sub_1FDA454-isCrit-write @ 0x1fda454
__int64 __fastcall sub_1FDA454(
        __int64 a1,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        _QWORD *a5,
        _QWORD *a6,
        __int64 a7,
        __int64 a8,
        __int64 a9,
        char a10,
        int a11,
        __int64 a12,
        unsigned int a13,
        unsigned __int8 a14,
        _QWORD *a15,
        __int64 a16,
        int a17,
        char a18,
        __int64 a19,
        char a20)
{
  char v20; // w20
  __int64 v29; // x0
  __int64 v30; // x27
  __int64 v31; // x0
  __int64 v32; // x1
  int v33; // w3
  int v34; // w4
  int v35; // w5
  int v36; // w6
  int v37; // w7
  __int64 v38; // x8
  __int64 *v39; // x23
  __int64 v40; // x9
  int v41; // w8
  __int64 v42; // x11
  __int64 v43; // x10
  __int64 *v44; // x11
  __int64 v45; // x10
  __int64 *v46; // x9
  __int64 v47; // x19
  __int64 v48; // x8
  unsigned __int64 v49; // x9
  int v50; // w11
  __int64 v51; // x23
  int v52; // w19
  __int64 v53; // x28
  _QWORD *v54; // x28
  __int64 v55; // x24
  _QWORD *v56; // x27
  _QWORD *v57; // x26
  __int64 v58; // x19
  __int64 v59; // x8
  __int64 v60; // x0
  __int64 v61; // x0
  int v62; // w3
  int v63; // w4
  int v64; // w5
  int v65; // w6
  int v66; // w7
  __int64 (__fastcall **v67)(); // x8
  unsigned __int64 v68; // x9
  int v69; // w11
  __int64 v70; // x23
  int v71; // w27
  __int64 v73; // x8
  __int64 (__fastcall **v74)(); // x19
  int v75; // w8
  unsigned int v76; // w9
  __int64 v77; // x8
  unsigned __int64 v78; // x9
  __int64 v79; // x23
  int v80; // w28
  void *v81; // x28
  __int64 v82; // x23
  int v83; // w0
  _QWORD *v84; // x10
  int v85; // w23
  int v87; // w23
  int v88; // w19
  __int64 v89; // x0
  int v90; // w4
  int v91; // w5
  int v92; // w6
  int v93; // w7
  __int64 v94; // x25
  __int64 *v95; // x1
  int v96; // w8
  int v97; // w0
  __int64 v98; // x0
  int v99; // w3
  int v100; // w4
  int v101; // w5
  int v102; // w6
  int v103; // w7
  __int64 *v104; // x1
  int v105; // w8
  int v106; // w0
  void *v107; // x19
  __int64 v108; // x20
  int v109; // w0
  bool v110; // zf
  char v111; // w9
  __int64 v112; // x19
  unsigned int v113; // w10
  unsigned __int64 v114; // x10
  _QWORD *v115; // x13
  __int64 v116; // x9
  __int64 v117; // x0
  __int64 v118; // x0
  char *v119; // x8
  signed __int64 v120; // x20
  int v121; // w0
  _QWORD v122[18]; // [xsp+0h] [xbp-200h] BYREF
  char v123[8]; // [xsp+A0h] [xbp-160h]
  int v124; // [xsp+A8h] [xbp-158h]
  __int64 v125; // [xsp+B0h] [xbp-150h]
  _QWORD *v126; // [xsp+B8h] [xbp-148h]
  __int64 v127; // [xsp+C0h] [xbp-140h]
  int v128; // [xsp+C8h] [xbp-138h]
  int v129; // [xsp+CCh] [xbp-134h]
  _QWORD *v130; // [xsp+D0h] [xbp-130h]
  _QWORD *v131; // [xsp+D8h] [xbp-128h]
  int v132[2]; // [xsp+E0h] [xbp-120h]
  __int64 v133[2]; // [xsp+E8h] [xbp-118h] BYREF
  int v134[4]; // [xsp+F8h] [xbp-108h] BYREF
  __int64 v135[2]; // [xsp+108h] [xbp-F8h] BYREF
  int v136[4]; // [xsp+118h] [xbp-E8h] BYREF
  __int64 v137[2]; // [xsp+128h] [xbp-D8h] BYREF
  int v138[4]; // [xsp+138h] [xbp-C8h] BYREF
  __int64 (__fastcall **v139)(); // [xsp+148h] [xbp-B8h] BYREF
  __int64 (__fastcall **v140)(); // [xsp+150h] [xbp-B0h]
  char *v141; // [xsp+158h] [xbp-A8h] BYREF
  __int64 v142; // [xsp+160h] [xbp-A0h]
  __int64 v143; // [xsp+168h] [xbp-98h]
  __int64 (__fastcall **v144)(); // [xsp+170h] [xbp-90h] BYREF
  int v145; // [xsp+178h] [xbp-88h]
  _QWORD *v146; // [xsp+180h] [xbp-80h]
  __int64 v147; // [xsp+188h] [xbp-78h]
  __int64 v148; // [xsp+190h] [xbp-70h]
  __int64 v149; // [xsp+198h] [xbp-68h] BYREF
  __int64 v150; // [xsp+1A0h] [xbp-60h] BYREF
  char v151[8]; // [xsp+1A8h] [xbp-58h] BYREF
  __int64 vars0; // [xsp+200h] [xbp+0h] BYREF

  v20 = a8;
  if ( qword_82C9AF0 != 0 )
  {
    v122[0] = a1;
    v122[1] = a2;
    v122[2] = a3;
    v122[3] = a4;
    v122[4] = a5;
    v122[5] = a6;
    v122[6] = a7;
    v122[7] = a8;
    v122[8] = qword_82C9AF0;
    v122[9] = a7;
    v122[10] = (unsigned int)a8;
    v122[11] = a1;
    v122[14] = a6;
    v122[15] = a4;
    v122[16] = a5;
    v122[17] = a3;
    sub_5413D24(v122, &vars0, 160);
    return v122[0];
  }
  v29 = *(_QWORD *)(a1 + 40);
  if ( *(_BYTE *)(v29 + 16) != 0
    || *(_BYTE *)(v29 + 232) != 0
    || a3 != 0xDDDDDDDDDDDDDDDDLL && a3 != 0 && *(_QWORD *)a3 != 0xDDDDDDDDDDDDDDDDLL && *(_BYTE *)(a3 + 232) != 0 )
  {
    return 0;
  }
  if ( *(_BYTE *)(a2 + 26) == 0 )
  {
    v38 = *(_QWORD *)(v29 + 480);
    if ( (*(_BYTE *)(v38 + 81) != 0
       || (*(int *)(v38 + 204) < 1 || *(__int64 *)(v38 + 1024) <= 0 && *(_BYTE *)(v38 + 65) == 0)
       && *(_DWORD *)(v38 + 1308) == 2)
      && ((unsigned int)(*(_DWORD *)(v38 + 72) - 1) > 1 || *(_BYTE *)(a2 + 28) == 0) )
    {
      return 0;
    }
  }
  if ( *(_BYTE *)(a2 + 25) == 0 )
  {
    *(_QWORD *)v132 = a7;
    v31 = ((__int64 (*)(void))sub_1E85108)();
    if ( (v31 & 1) == 0 )
      goto LABEL_56;
LABEL_21:
    v39 = *(__int64 **)(*(_QWORD *)(a1 + 40) + 368LL);
    if ( v39 == nullptr )
      goto LABEL_56;
    v40 = *v39;
    if ( *v39 == 0 )
      goto LABEL_56;
    v41 = *(_DWORD *)(a2 + 12);
    v42 = *v39;
    v43 = *(_QWORD *)(*(_QWORD *)(a1 + 40) + 368LL);
    do
    {
      if ( *(_DWORD *)(v42 + 32) < v41 )
      {
        v44 = (__int64 *)(v42 + 16);
      }
      else
      {
        v43 = v42;
        v44 = (__int64 *)(v42 + 8);
      }
      v42 = *v44;
    }
    while ( v42 != 0 );
    if ( (__int64 *)v43 == v39 )
      goto LABEL_56;
    if ( v41 < *(_DWORD *)(v43 + 32) )
      v43 = *(_QWORD *)(*(_QWORD *)(a1 + 40) + 368LL);
    if ( (__int64 *)v43 == v39 )
      goto LABEL_56;
    v45 = *(_QWORD *)(*(_QWORD *)(a1 + 40) + 368LL);
    do
    {
      if ( *(_DWORD *)(v40 + 32) < v41 )
      {
        v46 = (__int64 *)(v40 + 16);
      }
      else
      {
        v45 = v40;
        v46 = (__int64 *)(v40 + 8);
      }
      v40 = *v46;
    }
    while ( v40 != 0 );
    if ( (__int64 *)v45 == v39 )
    {
      v47 = *(_QWORD *)(*(_QWORD *)(a1 + 40) + 368LL);
    }
    else
    {
      if ( v41 >= *(_DWORD *)(v45 + 32) )
        v47 = v45;
      else
        v47 = *(_QWORD *)(*(_QWORD *)(a1 + 40) + 368LL);
      if ( (__int64 *)v47 != v39 )
      {
LABEL_50:
        v48 = *(_QWORD *)(a1 + 320);
        v49 = (unsigned __int64)(*(_QWORD *)(a1 + 328) - v48) >> 3;
        if ( (int)v49 - 1 >= 0 )
        {
          v50 = *(_DWORD *)(v47 + 40);
          v51 = 8LL * ((int)v49 - 1);
          v52 = v49 - 2;
          LODWORD(v131) = v50;
          v53 = *(_QWORD *)(v48 + v51);
          if ( *(_BYTE *)(v53 + 21) != 0 )
            goto LABEL_55;
LABEL_52:
          v31 = sub_1D0A918(v53, (unsigned int)v131);
          if ( (v31 & 1) != 0 )
          {
            if ( v53 != 0 )
              return 0;
          }
          else
          {
LABEL_55:
            while ( (v52 & 0x80000000) == 0 )
            {
              v51 -= 8;
              --v52;
              v53 = *(_QWORD *)(*(_QWORD *)(a1 + 320) + v51);
              if ( *(_BYTE *)(v53 + 21) == 0 )
                goto LABEL_52;
            }
          }
        }
        goto LABEL_56;
      }
    }
    sub_1A83618(
      0,
      1,
      (int)"key not found",
      v33,
      v34,
      v35,
      v36,
      v37,
      v123[0],
      v124,
      v125,
      (int)v126,
      v127,
      v128,
      (int)v130,
      (int)v131,
      v132[0],
      v133[0],
      v133[1],
      v134[0],
      v134[2],
      v135[0],
      v135[1],
      v136[0],
      v136[2],
      v137[0],
      v137[1],
      v138[0],
      v138[2],
      (int)v139,
      (__int64)v140,
      (int)v141,
      v142);
    LODWORD(v144) = *(_DWORD *)(a2 + 12);
    v139 = (__int64 (__fastcall **)())v47;
    v145 = 0;
    v31 = (__int64)sub_153D328(&v150, v39, &v139, &v144);
    v47 = v150;
    goto LABEL_50;
  }
  if ( (sub_1E85064() & 1) != 0 )
    return 0;
  *(_QWORD *)v132 = a7;
  v31 = sub_1E85108(*(_QWORD *)(a1 + 40));
  if ( (v31 & 1) != 0 )
    goto LABEL_21;
LABEL_56:
  v54 = nullptr;
  if ( a6 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && a6 != nullptr )
  {
    if ( *a6 == 0xDDDDDDDDDDDDDDDDLL )
      v54 = nullptr;
    else
      v54 = a6;
  }
  v55 = 0;
  if ( a3 != 0xDDDDDDDDDDDDDDDDLL && a3 != 0 )
  {
    if ( *(_QWORD *)a3 == 0xDDDDDDDDDDDDDDDDLL )
    {
      v55 = 0;
    }
    else
    {
      v31 = sub_13CE148(v31);
      if ( v31 != 0
        && *(_BYTE *)((v31 = sub_13CE148(v31)) + 17) == 0
        && *(_DWORD *)(a2 + 260) == 35
        && (*(_BYTE *)(*(_QWORD *)(*(_QWORD *)(a1 + 40) + 480LL) + 224LL) & 8) != 0
        && ((v31 = sub_1E880E8(a3)) & 1) == 0 )
      {
        v31 = sub_1E880B0(a3, *(_QWORD *)(a1 + 40));
        v55 = a3;
        if ( (v31 & 1) != 0 )
          return 0;
      }
      else
      {
        v55 = a3;
      }
    }
  }
  v56 = nullptr;
  if ( a5 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && a5 != nullptr )
  {
    if ( *a5 == 0xDDDDDDDDDDDDDDDDLL )
      v56 = nullptr;
    else
      v56 = a5;
  }
  if ( a4 != 0 )
  {
    v31 = sub_206EB94(a4 + 16);
    v57 = (_QWORD *)v31;
  }
  else
  {
    v57 = nullptr;
  }
  *(_BYTE *)(a1 + 520) = 0;
  v145 = 0;
  v144 = off_6ACAB90;
  v146 = v57;
  v147 = a2;
  v148 = a1 + 512;
  v58 = *(_QWORD *)(a1 + 40);
  v59 = *(_QWORD *)(v58 + 96);
  if ( v59 != 0 )
  {
    v60 = sub_13CDEA8(v31, v32);
    v31 = sub_1A85058(v60, *(unsigned int *)(v58 + 20), *(_QWORD *)(v58 + 96), 42, a1, &v144);
    LODWORD(v59) = *(unsigned __int8 *)(a1 + 520);
  }
  if ( v55 != 0 && (_DWORD)v59 == 0 )
  {
    LODWORD(v140) = 0;
    v139 = off_6ACAC20;
    v141 = (char *)v57;
    v142 = a2;
    v143 = a1 + 512;
    v59 = *(_QWORD *)(v55 + 96);
    if ( v59 != 0 )
    {
      v61 = sub_13CDEA8(v31, v32);
      sub_1A85058(v61, *(unsigned int *)(v55 + 20), *(_QWORD *)(v55 + 96), 43, a1, &v139);
      LODWORD(v59) = *(unsigned __int8 *)(a1 + 520);
    }
  }
  if ( (_DWORD)v59 == 0 )
  {
    v139 = nullptr;
    v140 = nullptr;
    v141 = nullptr;
    LODWORD(v142) = 8;
    *(_QWORD *)v123 = a16;
    if ( (sub_1FDBBF0(a1, a2, v55, a4) & 1) != 0 )
    {
      v67 = v139;
      v129 = a14;
      v131 = v56;
      v68 = (unsigned __int64)((char *)v140 - (char *)v139) >> 3;
      v69 = v68 - 1;
      if ( (int)v68 - 1 < 0 )
        goto LABEL_98;
      if ( v140 - v139 > (unsigned __int64)v69 )
      {
        v70 = v69;
        v71 = v68 - 2;
        while ( 1 )
        {
          sub_1D07508(v67[v70], 0);
          if ( v71 < 0 )
            break;
          v67 = v139;
          --v70;
          if ( v140 - v139 <= (unsigned __int64)v71-- )
            goto LABEL_92;
        }
LABEL_98:
        v75 = *(_DWORD *)(a2 + 32);
        v126 = v54;
        if ( v75 == 1 )
        {
          v30 = sub_1FDC4A4(a1, *(unsigned int *)(a2 + 12), v55);
          goto LABEL_115;
        }
        if ( v75 == 2 )
        {
          v76 = *(_DWORD *)(a2 + 12);
          if ( a4 != 0 )
          {
            v30 = sub_1FDC28C(a1, v76, *(unsigned int *)(a4 + 56), v55);
            goto LABEL_115;
          }
          sub_1AAB328(v137, (int)"(--LOG_ID:%lu# %d--)", 2051822730, v76, v62, v63, v64, v65, v66, v123[0]);
          sub_2072F00(v137);
          v81 = *(void **)v138;
          if ( *(_QWORD *)v138 == 0 )
            goto LABEL_114;
          v82 = v137[0] - *(_QWORD *)v138;
          v83 = sub_1A6C4CC(
                  v138,
                  *(_QWORD *)v138,
                  (unsigned int)(LODWORD(v137[0]) - v138[0]),
                  "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
          v30 = 0;
          if ( v82 != 0 && ((v83 ^ 1) & 1) != 0 )
          {
            free(v81);
            goto LABEL_114;
          }
        }
        else
        {
          v77 = *(_QWORD *)(a1 + 320);
          v78 = (unsigned __int64)(*(_QWORD *)(a1 + 328) - v77) >> 3;
          if ( (int)v78 - 1 < 0 )
          {
LABEL_114:
            v30 = 0;
            goto LABEL_115;
          }
          v79 = 8LL * ((int)v78 - 1);
          v80 = v78 - 2;
          LODWORD(v130) = *(_DWORD *)(a2 + 12);
          v30 = *(_QWORD *)(v77 + v79);
          if ( *(_BYTE *)(v30 + 21) != 0 )
            goto LABEL_108;
LABEL_105:
          if ( (sub_1D0A918(v30, (unsigned int)v130) & 1) == 0 )
          {
LABEL_108:
            while ( (v80 & 0x80000000) == 0 )
            {
              v79 -= 8;
              --v80;
              v30 = *(_QWORD *)(*(_QWORD *)(a1 + 320) + v79);
              if ( *(_BYTE *)(v30 + 21) == 0 )
                goto LABEL_105;
            }
            goto LABEL_114;
          }
        }
LABEL_115:
        v84 = a15;
        v125 = a16;
        v85 = qword_726E170;
        v130 = a15;
        if ( (a10 & 1) != 0 )
          goto LABEL_134;
        a11 = 1;
        if ( v57 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && v57 != nullptr )
        {
          if ( *v57 == 0xDDDDDDDDDDDDDDDDLL )
          {
            a11 = 1;
            if ( a15 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL )
              goto LABEL_134;
            goto LABEL_131;
          }
          if ( (sub_206EB24(a4 + 16) & 1) != 0 )
          {
            if ( *(int *)(a4 + 60) <= 1 )
              a11 = 1;
            else
              a11 = *(_DWORD *)(a4 + 60);
          }
          else
          {
            a11 = 1;
          }
          v84 = v130;
        }
        if ( v84 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL )
        {
LABEL_131:
          if ( v84 != nullptr && *v84 != 0xDDDDDDDDDDDDDDDDLL )
            a11 = sub_1F303E4(v84);
        }
LABEL_134:
        v127 = a19;
        v87 = v85 + 11608;
        if ( v30 != 0 )
        {
          v88 = *(_DWORD *)(v30 + 60);
          if ( v88 >= a11 || v88 >= *(char *)(*(_QWORD *)(sub_1D065B0(v30) + 8) + 24LL) )
          {
            sub_1D07E7C(v30);
            sub_1D1287C(v30 + 368, a4);
            sub_18CFB48(v30 + 576, 0, 0);
            if ( v130 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL || v130 == nullptr || *v130 == 0xDDDDDDDDDDDDDDDDLL )
              sub_1D0B2A0(v30);
            else
              sub_1D07258(v30);
LABEL_163:
            sub_1D07154(v30, v55, a12, a13, v130, a18 & 1, v127);
            v110 = ((v57 != nullptr) & (unsigned int)sub_1D0DF40(v30)) == 1;
            v111 = v129 & 1;
            if ( v110 )
            {
              v112 = v125;
              v113 = *(_DWORD *)(*(_QWORD *)(v57[191] + 8LL) + 108LL) - 3;
              if ( v113 >= 7 )
                LOBYTE(v114) = 0;
              else
                v114 = 0x1000000010001uLL >> (8 * (unsigned __int8)v113);
            }
            else
            {
              v112 = v125;
              if ( (v131 == nullptr || *((_BYTE *)v131 + 24) == 0) && *(_BYTE *)(a2 + 486) == 0 )
              {
LABEL_173:
                *(_BYTE *)(v30 + 506) = v111;
                *(_BYTE *)(v30 + 507) = *(_BYTE *)(v112 + 8);
                v115 = v131;
                v110 = v131 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL;
                *(_QWORD *)(v30 + 508) = *(_QWORD *)(v112 + 12);
                *(_DWORD *)(v30 + 520) = a17;
                if ( v110 || v115 == nullptr || *v115 == 0xDDDDDDDDDDDDDDDDLL )
                  sub_18CFB48(v30 + 576, a20 & 1, 0);
                else
                  sub_18CFB48(v30 + 576, (*((_BYTE *)v115 + 576) != 0) | (unsigned __int8)(a20 & 1), 0);
                if ( *(_BYTE *)(v112 + 9) != 0 || *(_BYTE *)(v30 + 24) != 0 )
                  *(_BYTE *)(v30 + 516) = 1;
                if ( (sub_1D0DFC8(v30) & 1) != 0 )
                  sub_2227A28(a1 + 992, v30);
                sub_22BC89C(v30 + 328, v126);
                v116 = *(_QWORD *)v132;
                *(_BYTE *)(v30 + 22) = v20 & 1;
                *(_QWORD *)(v30 + 216) = v116;
                v117 = sub_1D08F38(v30, a9);
                v118 = sub_13CEA50(v117);
                sub_2144DF4(v118, v55, v30);
LABEL_183:
                v74 = v139;
                v73 = (__int64)v140;
                if ( v140 == v139 )
                  goto LABEL_186;
                goto LABEL_184;
              }
              LOBYTE(v114) = 1;
            }
            *(_BYTE *)(v30 + 24) = v114;
            goto LABEL_173;
          }
          v89 = sub_4857270(v87, *(_DWORD *)(a2 + 12), a11, v55, a4);
          v94 = v89;
          if ( v89 != 0 )
          {
            sub_1D06CA0(v89, *(_QWORD *)(a1 + 40), v55, v130, v127);
            v149 = v94;
            sub_33EB1EC(a1 + 304, *(unsigned int *)(a1 + 316), a1 + 320, 22838, &v149);
            v150 = v149;
            v95 = *(__int64 **)(a1 + 328);
            if ( v95 == *(__int64 **)(a1 + 336) )
            {
              sub_1D02840(a1 + 320, v95, &v150, v151, 1, 1);
              v96 = *(_DWORD *)(a1 + 312);
              v97 = v96;
              if ( (v96 & 0x80000000) == 0 )
                goto LABEL_162;
            }
            else
            {
              *v95 = v149;
              *(_QWORD *)(a1 + 328) += 8LL;
              v96 = *(_DWORD *)(a1 + 312);
              v97 = v96;
              if ( (v96 & 0x80000000) == 0 )
              {
LABEL_162:
                sub_42DA068(v97);
                sub_1D07508(v30, 1);
                v30 = v94;
                goto LABEL_163;
              }
            }
            v97 = *(_DWORD *)(a1 + 304 - (__int16)v96);
            goto LABEL_162;
          }
          sub_1AAB328(v133, (int)&unk_564D083, 1586451005, 2, *(_DWORD *)(a2 + 12), v90, v91, v92, v93, v123[0]);
          sub_2072F00(v133);
          v107 = *(void **)v134;
          if ( *(_QWORD *)v134 == 0 )
          {
LABEL_96:
            v30 = 0;
            v74 = v139;
            v73 = (__int64)v140;
            if ( v140 != v139 )
            {
LABEL_184:
              v119 = (char *)v74 - v73;
              do
                v119 += 8;
              while ( v119 != nullptr );
            }
LABEL_186:
            if ( v74 != nullptr )
            {
              v120 = v141 - (char *)v74;
              v121 = sub_1A6C4CC(
                       &v141,
                       v74,
                       (unsigned int)((_DWORD)v141 - (_DWORD)v74),
                       "static const char *memory_allocator<LPtr<FrameEngine::Logic::ActorBuff> >::TypeName() [T = LPtr<F"
                       "rameEngine::Logic::ActorBuff>, U = LPtr<FrameEngine::Logic::ActorBuff>]");
              if ( v120 != 0 && ((v121 ^ 1) & 1) != 0 )
                free(v74);
            }
            return v30;
          }
          v108 = v133[0] - *(_QWORD *)v134;
          v109 = sub_1A6C4CC(
                   v134,
                   *(_QWORD *)v134,
                   (unsigned int)(LODWORD(v133[0]) - v134[0]),
                   "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
LABEL_156:
          v30 = 0;
          if ( v108 == 0 || ((v109 ^ 1) & 1) == 0 )
            goto LABEL_183;
          free(v107);
          goto LABEL_96;
        }
        v98 = sub_4857270(v87, *(_DWORD *)(a2 + 12), a11, v55, a4);
        v30 = v98;
        if ( v98 == 0 )
        {
          sub_1AAB328(
            v135,
            (int)"(--LOG_ID:%lu# %d--)",
            1586451005,
            *(_DWORD *)(a2 + 12),
            v99,
            v100,
            v101,
            v102,
            v103,
            v123[0]);
          sub_2072F00(v135);
          v107 = *(void **)v136;
          if ( *(_QWORD *)v136 == 0 )
            goto LABEL_96;
          v108 = v135[0] - *(_QWORD *)v136;
          v109 = sub_1A6C4CC(
                   v136,
                   *(_QWORD *)v136,
                   (unsigned int)(LODWORD(v135[0]) - v136[0]),
                   "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
          goto LABEL_156;
        }
        sub_1D06CA0(v98, *(_QWORD *)(a1 + 40), v55, v130, v127);
        v149 = v30;
        sub_33EB1EC(a1 + 304, *(unsigned int *)(a1 + 316), a1 + 320, 22838, &v149);
        v150 = v149;
        v104 = *(__int64 **)(a1 + 328);
        if ( v104 == *(__int64 **)(a1 + 336) )
        {
          sub_1D02840(a1 + 320, v104, &v150, v151, 1, 1);
          v105 = *(_DWORD *)(a1 + 312);
          v106 = v105;
          if ( (v105 & 0x80000000) == 0 )
            goto LABEL_152;
        }
        else
        {
          *v104 = v149;
          *(_QWORD *)(a1 + 328) += 8LL;
          v105 = *(_DWORD *)(a1 + 312);
          v106 = v105;
          if ( (v105 & 0x80000000) == 0 )
          {
LABEL_152:
            sub_42DA068(v106);
            goto LABEL_163;
          }
        }
        v106 = *(_DWORD *)(a1 + 304 - (__int16)v105);
        goto LABEL_152;
      }
LABEL_92:
      sub_1FDEC84();
    }
    if ( v57 != nullptr && *(_DWORD *)(a2 + 260) == 35 )
      sub_1DC41FC(v57, *(_QWORD *)(a1 + 40), v57[175], v54);
    goto LABEL_96;
  }
  return 0;
}
