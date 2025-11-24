// registrar 0x12e3d40 (std_hash_caller=True) entries=2
__int64 sub_12E3D40()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8306400);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8306400, &unk_7223630);
  v0 = sub_1B13498(&unk_580E319, 32, 0, 0);
  v1 = sub_1B13498(&unk_580E319, 32, 0, 0);
  qword_8306408 = sub_42F2580(v0 ^ HIWORD(v1), sub_4BF8274);
  v2 = sub_1B13498(&unk_580E33A, 37, 0, 0);
  v3 = sub_1B13498(&unk_580E33A, 37, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4BF828C);
  qword_8306410 = result;
  return result;
}
