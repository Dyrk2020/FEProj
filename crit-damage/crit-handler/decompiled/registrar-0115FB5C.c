// registrar 0x115fb5c (std_hash_caller=True) entries=3
__int64 sub_115FB5C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C87A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C87A0, &unk_7223630);
  v0 = sub_1B13498("CppHotFixHelper_OnEvent1", 24, 0, 0);
  v1 = sub_1B13498("CppHotFixHelper_OnEvent1", 24, 0, 0);
  qword_82C87A8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1F69FC0);
  v2 = sub_1B13498("CppHotFixHelper_OnEvent2", 24, 0, 0);
  v3 = sub_1B13498("CppHotFixHelper_OnEvent2", 24, 0, 0);
  qword_82C87B0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1F69FD4);
  v4 = sub_1B13498("CppHotFixHelper_OnEvent3", 24, 0, 0);
  v5 = sub_1B13498("CppHotFixHelper_OnEvent3", 24, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1F69FE8);
  qword_82C87B8 = result;
  return result;
}
