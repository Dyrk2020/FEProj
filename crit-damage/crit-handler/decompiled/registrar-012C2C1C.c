// registrar 0x12c2c1c (std_hash_caller=True) entries=1
__int64 sub_12C2C1C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EDBB0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EDBB0, &unk_7223630);
  v0 = sub_1B13498("AramSLGlobalDataMonitor_OnDie", 29, 0, 0);
  v1 = sub_1B13498("AramSLGlobalDataMonitor_OnDie", 29, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_477ACC0);
  qword_82EDBB8 = result;
  return result;
}
