// registrar 0x12e2488 (std_hash_caller=True) entries=4
__int64 sub_12E2488()
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

  sub_55D64B4(&unk_8305370);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8305370, &unk_7223630);
  v0 = sub_1B13498(&unk_580CA15, 40, 0, 0);
  v1 = sub_1B13498(&unk_580CA15, 40, 0, 0);
  qword_8305378 = sub_42F2580(v0 ^ HIWORD(v1), sub_4BD3FB4);
  v2 = sub_1B13498(&unk_580CA3E, 35, 0, 0);
  v3 = sub_1B13498(&unk_580CA3E, 35, 0, 0);
  qword_8305380 = sub_42F2580(v2 ^ HIWORD(v3), sub_4BD409C);
  v4 = sub_1B13498(&unk_580CA62, 31, 0, 0);
  v5 = sub_1B13498(&unk_580CA62, 31, 0, 0);
  qword_8305388 = sub_42F2580(v4 ^ HIWORD(v5), sub_4BD415C);
  v6 = sub_1B13498(&unk_580CA82, 40, 0, 0);
  v7 = sub_1B13498(&unk_580CA82, 40, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4BD4218);
  qword_8305390 = result;
  return result;
}
