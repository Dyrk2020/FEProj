// registrar 0x12c210c (std_hash_caller=True) entries=1
__int64 sub_12C210C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED8F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED8F0, &unk_7223630);
  v0 = sub_1B13498("GlobalDataMonitor_OnDie", 23, 0, 0);
  v1 = sub_1B13498("GlobalDataMonitor_OnDie", 23, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4754B64);
  qword_82ED8F8 = result;
  return result;
}
