// registrar 0x115e1dc (std_hash_caller=True) entries=1
__int64 sub_115E1DC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C5770);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C5770, &unk_7223630);
  v0 = sub_1B13498("BSDCPerfectControl_OnActorApplyBuff", 35, 0, 0);
  v1 = sub_1B13498("BSDCPerfectControl_OnActorApplyBuff", 35, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1E67F7C);
  qword_82C5778 = result;
  return result;
}
