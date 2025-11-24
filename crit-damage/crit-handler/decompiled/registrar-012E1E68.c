// registrar 0x12e1e68 (std_hash_caller=True) entries=3
__int64 sub_12E1E68()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8304F20);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8304F20, &unk_7223630);
  v0 = sub_1B13498(&unk_580C3CC, 42, 0, 0);
  v1 = sub_1B13498(&unk_580C3CC, 42, 0, 0);
  qword_8304F28 = sub_42F2580(v0 ^ HIWORD(v1), sub_4BC9CCC);
  v2 = sub_1B13498(&unk_580C3F7, 40, 0, 0);
  v3 = sub_1B13498(&unk_580C3F7, 40, 0, 0);
  qword_8304F30 = sub_42F2580(v2 ^ HIWORD(v3), sub_4BC9CE4);
  v4 = sub_1B13498(&unk_580C420, 46, 0, 0);
  v5 = sub_1B13498(&unk_580C420, 46, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4BC9DB8);
  qword_8304F38 = result;
  return result;
}
