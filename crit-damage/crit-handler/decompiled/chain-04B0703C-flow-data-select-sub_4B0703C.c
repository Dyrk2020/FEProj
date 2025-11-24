// flow-data-select-sub_4B0703C @ 0x4b0703c
_QWORD *__fastcall sub_4B0703C(
        __int64 a1,
        _QWORD *a2,
        _QWORD *a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        __int64 a7,
        __int64 a8)
{
  _QWORD *v8; // x20
  _QWORD v10[10]; // [xsp+0h] [xbp-B0h] BYREF
  __int64 vars0; // [xsp+B0h] [xbp+0h] BYREF

  v8 = a2;
  if ( qword_8300110 != 0 )
  {
    v10[0] = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = a5;
    v10[5] = a6;
    v10[6] = a7;
    v10[7] = a8;
    v10[8] = qword_8300110;
    v10[9] = a3;
    sub_5413D24(v10, &vars0, 160);
    return (_QWORD *)v10[0];
  }
  else if ( (a2 == (_QWORD *)0xDDDDDDDDDDDDDDDDLL || a2 == nullptr || *a2 == 0xDDDDDDDDDDDDDDDDLL)
         && (v8 = nullptr, a3 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL)
         && a3 != nullptr )
  {
    if ( *a3 == 0xDDDDDDDDDDDDDDDDLL )
      return nullptr;
    else
      return a3;
  }
  else
  {
    return v8;
  }
}
