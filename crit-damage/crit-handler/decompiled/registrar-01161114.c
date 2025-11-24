// registrar 0x1161114 (std_hash_caller=True) entries=1
__int64 sub_1161114()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CA170);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CA170, &unk_7223630);
  v0 = sub_1B13498("ActorComponentSummmon_OnCallerDie", 33, 0, 0);
  v1 = sub_1B13498("ActorComponentSummmon_OnCallerDie", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FF7264);
  qword_82CA178 = result;
  return result;
}
