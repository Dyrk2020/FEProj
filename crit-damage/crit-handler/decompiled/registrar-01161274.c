// registrar 0x1161274 (std_hash_caller=True) entries=2
__int64 sub_1161274()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CA320);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CA320, &unk_7223630);
  v0 = sub_1B13498("ActorComponentFow_OnReborn", 26, 0, 0);
  v1 = sub_1B13498("ActorComponentFow_OnReborn", 26, 0, 0);
  qword_82CA328 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FFF214);
  v2 = sub_1B13498("ActorComponentFow_OnDie", 23, 0, 0);
  v3 = sub_1B13498("ActorComponentFow_OnDie", 23, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1FFF288);
  qword_82CA330 = result;
  return result;
}
