// registrar 0x12c15dc (std_hash_caller=True) entries=1
__int64 sub_12C15DC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED5E8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED5E8, &unk_7223630);
  v0 = sub_1B13498("EGADestroyTurretAnalyzer_OnKill", 31, 0, 0);
  v1 = sub_1B13498("EGADestroyTurretAnalyzer_OnKill", 31, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4728E48);
  qword_82ED5F0 = result;
  return result;
}
