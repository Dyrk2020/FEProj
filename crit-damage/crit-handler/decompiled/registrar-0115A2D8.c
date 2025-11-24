// registrar 0x115a2d8 (std_hash_caller=True) entries=1
__int64 sub_115A2D8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BE2B8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BE2B8, &unk_7223630);
  v0 = sub_1B13498("TeamAiExcuteMonitorOnEventRecived", 33, 0, 0);
  v1 = sub_1B13498("TeamAiExcuteMonitorOnEventRecived", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &sub_1B4B908);
  qword_82BE2C0 = result;
  return result;
}
