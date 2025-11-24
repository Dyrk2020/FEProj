// registrar 0x12e45a8 (std_hash_caller=True) entries=1
__int64 sub_12E45A8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83069A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83069A0, &unk_7223630);
  v0 = sub_1B13498(&unk_580EAEC, 68, 0, 0);
  v1 = sub_1B13498(&unk_580EAEC, 68, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4C04C8C);
  qword_83069A8 = result;
  return result;
}
