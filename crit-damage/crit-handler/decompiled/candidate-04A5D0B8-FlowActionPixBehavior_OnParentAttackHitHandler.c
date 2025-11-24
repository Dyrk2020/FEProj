// FlowActionPixBehavior_OnParentAttackHitHandler @ 0x4a5d0b8
__int64 __fastcall sub_4A5D0B8(
        __int64 result,
        __int64 a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  __int64 v10; // x8
  __int64 v11; // x21
  __int64 v12; // x1
  _QWORD v13[10]; // [xsp+0h] [xbp-C0h] BYREF
  __int64 vars0; // [xsp+C0h] [xbp+0h] BYREF

  if ( qword_82FAB40 != 0 )
  {
    v13[0] = result;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a5;
    v13[5] = a6;
    v13[6] = a7;
    v13[7] = a8;
    v13[8] = qword_82FAB40;
    v13[9] = a2;
    sub_5413D24(v13, &vars0, 160);
    return v13[0];
  }
  else if ( a3 != 0 )
  {
    v10 = *(_QWORD *)(a3 + 16);
    if ( v10 != 0 )
    {
      result = sub_206EB94(v10 + 16);
      v11 = result;
      if ( result != 0 )
      {
        result = sub_1DBF92C(result);
        if ( (result & 1) != 0 )
        {
          result = sub_1DBF29C(v11);
          if ( (result & 1) != 0 )
          {
            v12 = *(_QWORD *)(a3 + 24);
            if ( v12 != 0 )
              return sub_4A5C754(a2, v12, 1);
          }
        }
      }
    }
  }
  return result;
}
