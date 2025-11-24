// registrar 0x1160048 (std_hash_caller=True) entries=1
__int64 sub_1160048()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C8D68);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C8D68, &unk_7223630);
  v0 = sub_1B13498("ActorComponentHurtDelay_OnDie", 29, 0, 0);
  v1 = sub_1B13498("ActorComponentHurtDelay_OnDie", 29, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1F887C8);
  qword_82C8D70 = result;
  return result;
}
