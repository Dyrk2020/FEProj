// registrar 0x1160618 (std_hash_caller=True) entries=1
__int64 sub_1160618()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9830);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9830, &unk_7223630);
  v0 = sub_1B13498("ActorComponentFootPrint_OnReborn", 32, 0, 0);
  v1 = sub_1B13498("ActorComponentFootPrint_OnReborn", 32, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FCD3E8);
  qword_82C9838 = result;
  return result;
}
