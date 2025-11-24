// registrar 0x12ad164 (std_hash_caller=True) entries=1
__int64 sub_12AD164()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E7C48);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E7C48, &unk_7223630);
  v0 = sub_1B13498("ChangeDifficultyOnLane_OnHurt", 29, 0, 0);
  v1 = sub_1B13498("ChangeDifficultyOnLane_OnHurt", 29, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_433C54C);
  qword_82E7C50 = result;
  return result;
}
