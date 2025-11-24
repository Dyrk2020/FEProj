// CriticalThreshold-AI-parser-sub_4509368 @ 0x4509368
__int64 __fastcall sub_4509368(__int64 a1, _QWORD *a2, _QWORD *a3)
{
  _QWORD *v5; // x22
  _QWORD *v6; // x21
  bool v7; // w0
  _QWORD *v8; // x8
  _QWORD *v9; // x23
  void *v10; // x21
  __int64 v11; // x22
  int v12; // w0
  void *v13; // x21
  __int64 v14; // x22
  int v15; // w0
  _QWORD *v16; // x22
  _QWORD *v17; // x21
  bool v18; // w0
  _QWORD *v19; // x8
  _QWORD *v20; // x23
  void *v21; // x21
  __int64 v22; // x22
  int v23; // w0
  void *v24; // x21
  __int64 v25; // x22
  int v26; // w0
  _QWORD *v27; // x22
  _QWORD *v28; // x21
  bool v29; // w0
  _QWORD *v30; // x8
  _QWORD *v31; // x23
  void *v32; // x21
  __int64 v33; // x22
  int v34; // w0
  void *v35; // x21
  __int64 v36; // x22
  int v37; // w0
  _QWORD *v38; // x22
  _QWORD *v39; // x21
  bool v40; // w0
  _QWORD *v41; // x8
  _QWORD *v42; // x23
  void *v43; // x21
  __int64 v44; // x22
  int v45; // w0
  void *v46; // x21
  __int64 v47; // x22
  int v48; // w0
  _QWORD *v49; // x22
  _QWORD *v50; // x21
  bool v51; // w0
  _QWORD *v52; // x8
  _QWORD *v53; // x23
  void *v54; // x21
  __int64 v55; // x22
  int v56; // w0
  void *v57; // x21
  __int64 v58; // x22
  int v59; // w0
  _QWORD *v60; // x22
  _QWORD *v61; // x21
  bool v62; // w0
  _QWORD *v63; // x8
  _QWORD *v64; // x23
  void *v65; // x21
  __int64 v66; // x22
  int v67; // w0
  void *v68; // x21
  __int64 v69; // x22
  int v70; // w0
  _QWORD *v71; // x22
  _QWORD *v72; // x21
  bool v73; // w0
  _QWORD *v74; // x8
  _QWORD *v75; // x23
  void *v76; // x21
  __int64 v77; // x22
  int v78; // w0
  void *v79; // x21
  __int64 v80; // x22
  int v81; // w0
  _QWORD *v82; // x22
  _QWORD *v83; // x21
  bool v84; // w0
  _QWORD *v85; // x8
  _QWORD *v86; // x23
  void *v87; // x21
  __int64 v88; // x22
  int v89; // w0
  void *v90; // x21
  __int64 v91; // x22
  int v92; // w0
  _QWORD *v93; // x22
  _QWORD *v94; // x21
  bool v95; // w0
  _QWORD *v96; // x8
  _QWORD *v97; // x23
  void *v98; // x21
  __int64 v99; // x22
  int v100; // w0
  void *v101; // x21
  __int64 v102; // x22
  int v103; // w0
  _QWORD *v104; // x22
  _QWORD *v105; // x21
  bool v106; // w0
  _QWORD *v107; // x8
  _QWORD *v108; // x23
  void *v109; // x21
  __int64 v110; // x22
  int v111; // w0
  void *v112; // x21
  __int64 v113; // x22
  int v114; // w0
  _QWORD *v115; // x22
  _QWORD *v116; // x21
  bool v117; // w0
  _QWORD *v118; // x8
  _QWORD *v119; // x23
  void *v120; // x21
  __int64 v121; // x22
  int v122; // w0
  void *v123; // x21
  __int64 v124; // x22
  int v125; // w0
  _QWORD *v126; // x22
  _QWORD *v127; // x21
  bool v128; // w0
  _QWORD *v129; // x8
  _QWORD *v130; // x23
  void *v131; // x21
  __int64 v132; // x22
  int v133; // w0
  void *v134; // x21
  __int64 v135; // x22
  int v136; // w0
  _QWORD *v137; // x22
  _QWORD *v138; // x21
  bool v139; // w0
  _QWORD *v140; // x8
  _QWORD *v141; // x23
  void *v142; // x21
  __int64 v143; // x22
  int v144; // w0
  void *v145; // x21
  __int64 v146; // x22
  int v147; // w0
  _QWORD *v148; // x22
  _QWORD *v149; // x21
  bool v150; // w0
  _QWORD *v151; // x8
  _QWORD *v152; // x23
  void *v153; // x21
  __int64 v154; // x22
  int v155; // w0
  void *v156; // x21
  __int64 v157; // x22
  int v158; // w0
  _QWORD *v159; // x22
  _QWORD *v160; // x21
  bool v161; // w0
  _QWORD *v162; // x8
  _QWORD *v163; // x23
  void *v164; // x21
  __int64 v165; // x22
  int v166; // w0
  void *v167; // x21
  __int64 v168; // x22
  int v169; // w0
  _QWORD *v170; // x22
  _QWORD *v171; // x21
  bool v172; // w0
  _QWORD *v173; // x8
  _QWORD *v174; // x23
  void *v175; // x21
  __int64 v176; // x22
  int v177; // w0
  void *v178; // x19
  __int64 v179; // x20
  int v180; // w0
  _QWORD v182[2]; // [xsp+0h] [xbp-50h] BYREF
  _QWORD v183[2]; // [xsp+10h] [xbp-40h] BYREF

  fe_register_routine_rt_13D8460((__int64)v182, "StartOccupyEva_DragonDpsScale");
  v5 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_12;
  v6 = a2;
  do
  {
    v7 = sub_1561B20((__int64)(v5 + 4), (__int64)v182);
    v8 = v5 + 2;
    if ( !v7 )
    {
      v8 = v5 + 1;
      v6 = v5;
    }
    v5 = (_QWORD *)*v8;
  }
  while ( *v8 != 0 );
  if ( v6 == a2 )
  {
LABEL_12:
    v9 = a2;
    v10 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_16;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v6 + 4)) )
      v9 = a2;
    else
      v9 = v6;
    v10 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_16;
  }
  v11 = v182[0] - (_QWORD)v10;
  v12 = sub_1A6C4CC(
          v183,
          v10,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v10),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v11 != 0 && ((v12 ^ 1) & 1) != 0 )
    free(v10);
LABEL_16:
  if ( v9 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "StartOccupyEva_DragonDpsScale");
    a3[14] = *(_QWORD *)sub_3E722CC(a2, v182);
    v13 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v14 = v182[0] - v183[0];
      v15 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v14 != 0 && ((v15 ^ 1) & 1) != 0 )
        free(v13);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "StartOccupyEva_TeamFightConfidenceDifferenceLimit");
  v16 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_32;
  v17 = a2;
  do
  {
    v18 = sub_1561B20((__int64)(v16 + 4), (__int64)v182);
    v19 = v16 + 2;
    if ( !v18 )
    {
      v19 = v16 + 1;
      v17 = v16;
    }
    v16 = (_QWORD *)*v19;
  }
  while ( *v19 != 0 );
  if ( v17 == a2 )
  {
LABEL_32:
    v20 = a2;
    v21 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_36;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v17 + 4)) )
      v20 = a2;
    else
      v20 = v17;
    v21 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_36;
  }
  v22 = v182[0] - (_QWORD)v21;
  v23 = sub_1A6C4CC(
          v183,
          v21,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v21),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v22 != 0 && ((v23 ^ 1) & 1) != 0 )
    free(v21);
LABEL_36:
  if ( v20 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "StartOccupyEva_TeamFightConfidenceDifferenceLimit");
    a3[10] = *(_QWORD *)sub_3E722CC(a2, v182);
    v24 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v25 = v182[0] - v183[0];
      v26 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v25 != 0 && ((v26 ^ 1) & 1) != 0 )
        free(v24);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BattleRecheck_Radius");
  v27 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_52;
  v28 = a2;
  do
  {
    v29 = sub_1561B20((__int64)(v27 + 4), (__int64)v182);
    v30 = v27 + 2;
    if ( !v29 )
    {
      v30 = v27 + 1;
      v28 = v27;
    }
    v27 = (_QWORD *)*v30;
  }
  while ( *v30 != 0 );
  if ( v28 == a2 )
  {
LABEL_52:
    v31 = a2;
    v32 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_56;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v28 + 4)) )
      v31 = a2;
    else
      v31 = v28;
    v32 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_56;
  }
  v33 = v182[0] - (_QWORD)v32;
  v34 = sub_1A6C4CC(
          v183,
          v32,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v32),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v33 != 0 && ((v34 ^ 1) & 1) != 0 )
    free(v32);
LABEL_56:
  if ( v31 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BattleRecheck_Radius");
    a3[15] = *(_QWORD *)sub_3E722CC(a2, v182);
    v35 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v36 = v182[0] - v183[0];
      v37 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v36 != 0 && ((v37 ^ 1) & 1) != 0 )
        free(v35);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "AgentBetrayHpAbsValueLimit");
  v38 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_72;
  v39 = a2;
  do
  {
    v40 = sub_1561B20((__int64)(v38 + 4), (__int64)v182);
    v41 = v38 + 2;
    if ( !v40 )
    {
      v41 = v38 + 1;
      v39 = v38;
    }
    v38 = (_QWORD *)*v41;
  }
  while ( *v41 != 0 );
  if ( v39 == a2 )
  {
LABEL_72:
    v42 = a2;
    v43 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_76;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v39 + 4)) )
      v42 = a2;
    else
      v42 = v39;
    v43 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_76;
  }
  v44 = v182[0] - (_QWORD)v43;
  v45 = sub_1A6C4CC(
          v183,
          v43,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v43),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v44 != 0 && ((v45 ^ 1) & 1) != 0 )
    free(v43);
LABEL_76:
  if ( v42 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "AgentBetrayHpAbsValueLimit");
    a3[16] = *(_QWORD *)sub_3E722CC(a2, v182);
    v46 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v47 = v182[0] - v183[0];
      v48 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v47 != 0 && ((v48 ^ 1) & 1) != 0 )
        free(v46);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "AgentCanJoinHpAbsValueLimit");
  v49 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_92;
  v50 = a2;
  do
  {
    v51 = sub_1561B20((__int64)(v49 + 4), (__int64)v182);
    v52 = v49 + 2;
    if ( !v51 )
    {
      v52 = v49 + 1;
      v50 = v49;
    }
    v49 = (_QWORD *)*v52;
  }
  while ( *v52 != 0 );
  if ( v50 == a2 )
  {
LABEL_92:
    v53 = a2;
    v54 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_96;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v50 + 4)) )
      v53 = a2;
    else
      v53 = v50;
    v54 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_96;
  }
  v55 = v182[0] - (_QWORD)v54;
  v56 = sub_1A6C4CC(
          v183,
          v54,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v54),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v55 != 0 && ((v56 ^ 1) & 1) != 0 )
    free(v54);
LABEL_96:
  if ( v53 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "AgentCanJoinHpAbsValueLimit");
    a3[17] = *(_QWORD *)sub_3E722CC(a2, v182);
    v57 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v58 = v182[0] - v183[0];
      v59 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v58 != 0 && ((v59 ^ 1) & 1) != 0 )
        free(v57);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "AgentBetrayHpLimit");
  v60 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_112;
  v61 = a2;
  do
  {
    v62 = sub_1561B20((__int64)(v60 + 4), (__int64)v182);
    v63 = v60 + 2;
    if ( !v62 )
    {
      v63 = v60 + 1;
      v61 = v60;
    }
    v60 = (_QWORD *)*v63;
  }
  while ( *v63 != 0 );
  if ( v61 == a2 )
  {
LABEL_112:
    v64 = a2;
    v65 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_116;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v61 + 4)) )
      v64 = a2;
    else
      v64 = v61;
    v65 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_116;
  }
  v66 = v182[0] - (_QWORD)v65;
  v67 = sub_1A6C4CC(
          v183,
          v65,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v65),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v66 != 0 && ((v67 ^ 1) & 1) != 0 )
    free(v65);
LABEL_116:
  if ( v64 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "AgentBetrayHpLimit");
    a3[18] = *(_QWORD *)sub_3E722CC(a2, v182);
    v68 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v69 = v182[0] - v183[0];
      v70 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v69 != 0 && ((v70 ^ 1) & 1) != 0 )
        free(v68);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "AgentCanJoinHpLimit");
  v71 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_132;
  v72 = a2;
  do
  {
    v73 = sub_1561B20((__int64)(v71 + 4), (__int64)v182);
    v74 = v71 + 2;
    if ( !v73 )
    {
      v74 = v71 + 1;
      v72 = v71;
    }
    v71 = (_QWORD *)*v74;
  }
  while ( *v74 != 0 );
  if ( v72 == a2 )
  {
LABEL_132:
    v75 = a2;
    v76 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_136;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v72 + 4)) )
      v75 = a2;
    else
      v75 = v72;
    v76 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_136;
  }
  v77 = v182[0] - (_QWORD)v76;
  v78 = sub_1A6C4CC(
          v183,
          v76,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v76),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v77 != 0 && ((v78 ^ 1) & 1) != 0 )
    free(v76);
LABEL_136:
  if ( v75 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "AgentCanJoinHpLimit");
    a3[19] = *(_QWORD *)sub_3E722CC(a2, v182);
    v79 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v80 = v182[0] - v183[0];
      v81 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v80 != 0 && ((v81 ^ 1) & 1) != 0 )
        free(v79);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Base");
  v82 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_152;
  v83 = a2;
  do
  {
    v84 = sub_1561B20((__int64)(v82 + 4), (__int64)v182);
    v85 = v82 + 2;
    if ( !v84 )
    {
      v85 = v82 + 1;
      v83 = v82;
    }
    v82 = (_QWORD *)*v85;
  }
  while ( *v85 != 0 );
  if ( v83 == a2 )
  {
LABEL_152:
    v86 = a2;
    v87 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_156;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v83 + 4)) )
      v86 = a2;
    else
      v86 = v83;
    v87 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_156;
  }
  v88 = v182[0] - (_QWORD)v87;
  v89 = sub_1A6C4CC(
          v183,
          v87,
          (unsigned int)(LODWORD(v182[0]) - (_DWORD)v87),
          "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v88 != 0 && ((v89 ^ 1) & 1) != 0 )
    free(v87);
LABEL_156:
  if ( v86 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Base");
    a3[20] = *(_QWORD *)sub_3E722CC(a2, v182);
    v90 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v91 = v182[0] - v183[0];
      v92 = sub_1A6C4CC(
              v183,
              v183[0],
              (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
              "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v91 != 0 && ((v92 ^ 1) & 1) != 0 )
        free(v90);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Hight");
  v93 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_172;
  v94 = a2;
  do
  {
    v95 = sub_1561B20((__int64)(v93 + 4), (__int64)v182);
    v96 = v93 + 2;
    if ( !v95 )
    {
      v96 = v93 + 1;
      v94 = v93;
    }
    v93 = (_QWORD *)*v96;
  }
  while ( *v96 != 0 );
  if ( v94 == a2 )
  {
LABEL_172:
    v97 = a2;
    v98 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_176;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v94 + 4)) )
      v97 = a2;
    else
      v97 = v94;
    v98 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_176;
  }
  v99 = v182[0] - (_QWORD)v98;
  v100 = sub_1A6C4CC(
           v183,
           v98,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v98),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v99 != 0 && ((v100 ^ 1) & 1) != 0 )
    free(v98);
LABEL_176:
  if ( v97 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Hight");
    a3[21] = *(_QWORD *)sub_3E722CC(a2, v182);
    v101 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v102 = v182[0] - v183[0];
      v103 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v102 != 0 && ((v103 ^ 1) & 1) != 0 )
        free(v101);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Mid");
  v104 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_192;
  v105 = a2;
  do
  {
    v106 = sub_1561B20((__int64)(v104 + 4), (__int64)v182);
    v107 = v104 + 2;
    if ( !v106 )
    {
      v107 = v104 + 1;
      v105 = v104;
    }
    v104 = (_QWORD *)*v107;
  }
  while ( *v107 != 0 );
  if ( v105 == a2 )
  {
LABEL_192:
    v108 = a2;
    v109 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_196;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v105 + 4)) )
      v108 = a2;
    else
      v108 = v105;
    v109 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_196;
  }
  v110 = v182[0] - (_QWORD)v109;
  v111 = sub_1A6C4CC(
           v183,
           v109,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v109),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v110 != 0 && ((v111 ^ 1) & 1) != 0 )
    free(v109);
LABEL_196:
  if ( v108 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_Mid");
    a3[22] = *(_QWORD *)sub_3E722CC(a2, v182);
    v112 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v113 = v182[0] - v183[0];
      v114 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v113 != 0 && ((v114 ^ 1) & 1) != 0 )
        free(v112);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_River");
  v115 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_212;
  v116 = a2;
  do
  {
    v117 = sub_1561B20((__int64)(v115 + 4), (__int64)v182);
    v118 = v115 + 2;
    if ( !v117 )
    {
      v118 = v115 + 1;
      v116 = v115;
    }
    v115 = (_QWORD *)*v118;
  }
  while ( *v118 != 0 );
  if ( v116 == a2 )
  {
LABEL_212:
    v119 = a2;
    v120 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_216;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v116 + 4)) )
      v119 = a2;
    else
      v119 = v116;
    v120 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_216;
  }
  v121 = v182[0] - (_QWORD)v120;
  v122 = sub_1A6C4CC(
           v183,
           v120,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v120),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v121 != 0 && ((v122 ^ 1) & 1) != 0 )
    free(v120);
LABEL_216:
  if ( v119 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentScale_River");
    a3[23] = *(_QWORD *)sub_3E722CC(a2, v182);
    v123 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v124 = v182[0] - v183[0];
      v125 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v124 != 0 && ((v125 ^ 1) & 1) != 0 )
        free(v123);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentLimitWhenLineCheckForOpenTatics");
  v126 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_232;
  v127 = a2;
  do
  {
    v128 = sub_1561B20((__int64)(v126 + 4), (__int64)v182);
    v129 = v126 + 2;
    if ( !v128 )
    {
      v129 = v126 + 1;
      v127 = v126;
    }
    v126 = (_QWORD *)*v129;
  }
  while ( *v129 != 0 );
  if ( v127 == a2 )
  {
LABEL_232:
    v130 = a2;
    v131 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_236;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v127 + 4)) )
      v130 = a2;
    else
      v130 = v127;
    v131 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_236;
  }
  v132 = v182[0] - (_QWORD)v131;
  v133 = sub_1A6C4CC(
           v183,
           v131,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v131),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v132 != 0 && ((v133 ^ 1) & 1) != 0 )
    free(v131);
LABEL_236:
  if ( v130 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "BuildingLossHpPercentLimitWhenLineCheckForOpenTatics");
    a3[12] = *(_QWORD *)sub_3E722CC(a2, v182);
    v134 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v135 = v182[0] - v183[0];
      v136 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v135 != 0 && ((v136 ^ 1) & 1) != 0 )
        free(v134);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "RushTimePercent");
  v137 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_252;
  v138 = a2;
  do
  {
    v139 = sub_1561B20((__int64)(v137 + 4), (__int64)v182);
    v140 = v137 + 2;
    if ( !v139 )
    {
      v140 = v137 + 1;
      v138 = v137;
    }
    v137 = (_QWORD *)*v140;
  }
  while ( *v140 != 0 );
  if ( v138 == a2 )
  {
LABEL_252:
    v141 = a2;
    v142 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_256;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v138 + 4)) )
      v141 = a2;
    else
      v141 = v138;
    v142 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_256;
  }
  v143 = v182[0] - (_QWORD)v142;
  v144 = sub_1A6C4CC(
           v183,
           v142,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v142),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v143 != 0 && ((v144 ^ 1) & 1) != 0 )
    free(v142);
LABEL_256:
  if ( v141 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "RushTimePercent");
    a3[24] = *(_QWORD *)sub_3E722CC(a2, v182);
    v145 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v146 = v182[0] - v183[0];
      v147 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v146 != 0 && ((v147 ^ 1) & 1) != 0 )
        free(v145);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "CriticalThreshold");
  v148 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_272;
  v149 = a2;
  do
  {
    v150 = sub_1561B20((__int64)(v148 + 4), (__int64)v182);
    v151 = v148 + 2;
    if ( !v150 )
    {
      v151 = v148 + 1;
      v149 = v148;
    }
    v148 = (_QWORD *)*v151;
  }
  while ( *v151 != 0 );
  if ( v149 == a2 )
  {
LABEL_272:
    v152 = a2;
    v153 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_276;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v149 + 4)) )
      v152 = a2;
    else
      v152 = v149;
    v153 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_276;
  }
  v154 = v182[0] - (_QWORD)v153;
  v155 = sub_1A6C4CC(
           v183,
           v153,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v153),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v154 != 0 && ((v155 ^ 1) & 1) != 0 )
    free(v153);
LABEL_276:
  if ( v152 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "CriticalThreshold");
    a3[25] = *(_QWORD *)sub_3E722CC(a2, v182);
    v156 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v157 = v182[0] - v183[0];
      v158 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v157 != 0 && ((v158 ^ 1) & 1) != 0 )
        free(v156);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "ReonseConfirmCountThreshold_BigMonster");
  v159 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_292;
  v160 = a2;
  do
  {
    v161 = sub_1561B20((__int64)(v159 + 4), (__int64)v182);
    v162 = v159 + 2;
    if ( !v161 )
    {
      v162 = v159 + 1;
      v160 = v159;
    }
    v159 = (_QWORD *)*v162;
  }
  while ( *v162 != 0 );
  if ( v160 == a2 )
  {
LABEL_292:
    v163 = a2;
    v164 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_296;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v160 + 4)) )
      v163 = a2;
    else
      v163 = v160;
    v164 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_296;
  }
  v165 = v182[0] - (_QWORD)v164;
  v166 = sub_1A6C4CC(
           v183,
           v164,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v164),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v165 != 0 && ((v166 ^ 1) & 1) != 0 )
    free(v164);
LABEL_296:
  if ( v163 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "ReonseConfirmCountThreshold_BigMonster");
    a3[26] = *(_QWORD *)sub_3E722CC(a2, v182);
    v167 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v168 = v182[0] - v183[0];
      v169 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v168 != 0 && ((v169 ^ 1) & 1) != 0 )
        free(v167);
    }
  }
  fe_register_routine_rt_13D8460((__int64)v182, "ReonseConfirmCountThreshold_MiddleMonster");
  v170 = (_QWORD *)*a2;
  if ( *a2 == 0 )
    goto LABEL_312;
  v171 = a2;
  do
  {
    v172 = sub_1561B20((__int64)(v170 + 4), (__int64)v182);
    v173 = v170 + 2;
    if ( !v172 )
    {
      v173 = v170 + 1;
      v171 = v170;
    }
    v170 = (_QWORD *)*v173;
  }
  while ( *v173 != 0 );
  if ( v171 == a2 )
  {
LABEL_312:
    v174 = a2;
    v175 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_316;
  }
  else
  {
    if ( sub_1561B20((__int64)v182, (__int64)(v171 + 4)) )
      v174 = a2;
    else
      v174 = v171;
    v175 = (void *)v183[0];
    if ( v183[0] == 0 )
      goto LABEL_316;
  }
  v176 = v182[0] - (_QWORD)v175;
  v177 = sub_1A6C4CC(
           v183,
           v175,
           (unsigned int)(LODWORD(v182[0]) - (_DWORD)v175),
           "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
  if ( v176 != 0 && ((v177 ^ 1) & 1) != 0 )
    free(v175);
LABEL_316:
  if ( v174 != a2 )
  {
    fe_register_routine_rt_13D8460((__int64)v182, "ReonseConfirmCountThreshold_MiddleMonster");
    a3[27] = *(_QWORD *)sub_3E722CC(a2, v182);
    v178 = (void *)v183[0];
    if ( v183[0] != 0 )
    {
      v179 = v182[0] - v183[0];
      v180 = sub_1A6C4CC(
               v183,
               v183[0],
               (unsigned int)(LODWORD(v182[0]) - LODWORD(v183[0])),
               "static const char *memory_allocator<char>::TypeName() [T = char, U = char]");
      if ( v179 != 0 && ((v180 ^ 1) & 1) != 0 )
        free(v178);
    }
  }
  return 1;
}
