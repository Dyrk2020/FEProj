// registrar 0x12eff34 (std_hash_caller=True) entries=1
__int64 sub_12EFF34()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830D170);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830D170, &unk_7223630);
  v0 = sub_1B13498(&aN11frameengine_4048[9308], 14, 0, 0);
  v1 = sub_1B13498(&aN11frameengine_4048[9308], 14, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4D70234);
  qword_830D178 = result;
  return result;
}
