// registrar 0x12f02a8 (std_hash_caller=True) entries=1
__int64 sub_12F02A8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_830D440);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_830D440, &unk_7223630);
  v0 = sub_1B13498(&aN11frameengine_4048[9926], 50, 0, 0);
  v1 = sub_1B13498(&aN11frameengine_4048[9926], 50, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4D774C4);
  qword_830D448 = result;
  return result;
}
