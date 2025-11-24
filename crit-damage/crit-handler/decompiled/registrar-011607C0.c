// registrar 0x11607c0 (std_hash_caller=True) entries=1
__int64 sub_11607C0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C99D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C99D0, &unk_7223630);
  v0 = sub_1B13498("ActorComponentMarkMgr_OnDie", 27, 0, 0);
  v1 = sub_1B13498("ActorComponentMarkMgr_OnDie", 27, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1FD5180);
  qword_82C99D8 = result;
  return result;
}
