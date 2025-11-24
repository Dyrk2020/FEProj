// registrar 0x11611a4 (std_hash_caller=True) entries=1
__int64 sub_11611A4()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CA220);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CA220, &unk_7223630);
  v0 = sub_1B13498("ActorComponentAttackStateMgr_OnReset", 36, 0, 0);
  v1 = sub_1B13498("ActorComponentAttackStateMgr_OnReset", 36, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FF9984);
  qword_82CA228 = result;
  return result;
}
