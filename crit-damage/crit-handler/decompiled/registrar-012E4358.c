// registrar 0x12e4358 (std_hash_caller=True) entries=1
__int64 sub_12E4358()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83067A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83067A0, &unk_7223630);
  v0 = sub_1B13498(&unk_580E82D, 36, 0, 0);
  v1 = sub_1B13498(&unk_580E82D, 36, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_4C007C4);
  qword_83067A8 = result;
  return result;
}
