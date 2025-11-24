// registrar 0x12b73d8 (std_hash_caller=True) entries=1
__int64 sub_12B73D8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EA5C8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA5C8, &unk_7223630);
  v0 = sub_1B13498("CheckTimeToBeCatchUpC_filterSkill", 33, 0, 0);
  v1 = sub_1B13498("CheckTimeToBeCatchUpC_filterSkill", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4497D7C);
  qword_82EA5D0 = result;
  return result;
}
