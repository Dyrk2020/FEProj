// registrar 0x12f1480 (std_hash_caller=True) entries=1
__int64 sub_12F1480()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830E4C0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830E4C0, &unk_7223630);
  v0 = sub_1B13498("MonsterSacrificeProcessor_OnFightStateChange", 44, 0, 0);
  v1 = sub_1B13498("MonsterSacrificeProcessor_OnFightStateChange", 44, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &sub_4E17044);
  qword_830E4C8 = result;
  return result;
}
