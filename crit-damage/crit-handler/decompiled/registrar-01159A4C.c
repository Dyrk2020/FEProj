// registrar 0x1159a4c (std_hash_caller=True) entries=2
__int64 sub_1159A4C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82BDFB0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82BDFB0, &unk_7223630);
  v0 = sub_1B13498("AiSystem_OnRiftElementChange", 28, 0, 0);
  v1 = sub_1B13498("AiSystem_OnRiftElementChange", 28, 0, 0);
  qword_82BDFB8 = sub_42F2580(v0 ^ HIWORD(v1), sub_1B13298);
  v2 = sub_1B13498("AiSystem_OnMapSwitchMapLayer", 28, 0, 0);
  v3 = sub_1B13498("AiSystem_OnMapSwitchMapLayer", 28, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1B132AC);
  qword_82BDFC0 = result;
  return result;
}
