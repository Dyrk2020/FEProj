// registrar 0x115cbcc (std_hash_caller=True) entries=1
__int64 sub_115CBCC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C3950);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C3950, &unk_7223630);
  v0 = sub_1B13498("SkillInterrupt_OnActorHurt", 26, 0, 0);
  v1 = sub_1B13498("SkillInterrupt_OnActorHurt", 26, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1D90280);
  qword_82C3958 = result;
  return result;
}
