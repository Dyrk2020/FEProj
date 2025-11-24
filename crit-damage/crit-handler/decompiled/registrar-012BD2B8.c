// registrar 0x12bd2b8 (std_hash_caller=True) entries=4
__int64 sub_12BD2B8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EC430);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EC430, &unk_7223630);
  v0 = sub_1B13498(&unk_57DF30C, 59, 0, 0);
  v1 = sub_1B13498(&unk_57DF30C, 59, 0, 0);
  qword_82EC438 = sub_42F2580(v0 ^ HIWORD(v1), sub_45FED2C);
  v2 = sub_1B13498(&unk_57DF348, 68, 0, 0);
  v3 = sub_1B13498(&unk_57DF348, 68, 0, 0);
  qword_82EC440 = sub_42F2580(v2 ^ HIWORD(v3), sub_45FEDE4);
  v4 = sub_1B13498(&unk_57DF38D, 60, 0, 0);
  v5 = sub_1B13498(&unk_57DF38D, 60, 0, 0);
  qword_82EC448 = sub_42F2580(v4 ^ HIWORD(v5), sub_45FEDF8);
  v6 = sub_1B13498(&unk_57DF3CA, 62, 0, 0);
  v7 = sub_1B13498(&unk_57DF3CA, 62, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_45FEE0C);
  qword_82EC450 = result;
  return result;
}
