// trigger-helper-sub_4AFF72C @ 0x4aff72c
void __fastcall sub_4AFF72C(__int64 a1)
{
  __int64 v2; // x0
  _QWORD *v3; // x0

  sub_4B064E4();
  v2 = *(_QWORD *)(a1 + 256);
  if ( v2 != 0 )
  {
    v3 = (_QWORD *)(*(__int64 (__fastcall **)(__int64))(*(_QWORD *)v2 + 32LL))(v2);
    *(_QWORD *)(a1 + 328) = v3;
    if ( v3 != (_QWORD *)0xDDDDDDDDDDDDDDDDLL && v3 != nullptr && *v3 != 0xDDDDDDDDDDDDDDDDLL )
      sub_1E8CD34(v3, 126, (__int64)sub_4AFFB60, qword_82FFD18, a1, 0);
  }
}
