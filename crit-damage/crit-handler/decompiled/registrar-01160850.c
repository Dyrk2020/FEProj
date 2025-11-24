// registrar 0x1160850 (std_hash_caller=True) entries=1
__int64 sub_1160850()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C9A20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C9A20, &unk_7223630);
  v0 = sub_1B13498("HeroComponentExpMoneyShared_OnActorDie", 38, 0, 0);
  v1 = sub_1B13498("HeroComponentExpMoneyShared_OnActorDie", 38, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1FD66B8);
  qword_82C9A28 = result;
  return result;
}
