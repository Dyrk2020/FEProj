// registrar 0x1163ff0 (std_hash_caller=True) entries=1
__int64 sub_1163FF0()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CD5D8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CD5D8, &unk_7223630);
  v0 = sub_1B13498(&unk_56BEF16, 37, 0, 0);
  v1 = sub_1B13498(&unk_56BEF16, 37, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_2118AA8);
  qword_82CD5E0 = result;
  qword_82CD5C0 = 3;
  qword_82CD5C8 = -65536;
  return result;
}
