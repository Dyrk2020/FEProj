// registrar 0x12c6a30 (std_hash_caller=True) entries=2
__int64 sub_12C6A30()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F1390);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1390, &unk_7223630);
  v0 = sub_1B13498(&unk_57EFD38, 28, 0, 0);
  v1 = sub_1B13498(&unk_57EFD38, 28, 0, 0);
  qword_82F1398 = sub_42F2580(v0 ^ HIWORD(v1), sub_488BC68);
  v2 = sub_1B13498(&unk_57EFD55, 24, 0, 0);
  v3 = sub_1B13498(&unk_57EFD55, 24, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_488BD20);
  qword_82F13A0 = result;
  return result;
}
