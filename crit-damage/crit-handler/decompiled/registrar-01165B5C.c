// registrar 0x1165b5c (std_hash_caller=True) entries=1
__int64 sub_1165B5C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CFBA0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CFBA0, &unk_7223630);
  v0 = sub_1B13498("BattleFow_OnHomeBaseDestroyed", 29, 0, 0);
  v1 = sub_1B13498("BattleFow_OnHomeBaseDestroyed", 29, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_2226F28);
  qword_82CFBA8 = result;
  return result;
}
