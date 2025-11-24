// registrar 0x12d23cc (std_hash_caller=True) entries=1
__int64 sub_12D23CC()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FA760);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA760, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC2CF, 40, 0, 0);
  v1 = sub_1B13498(&unk_57FC2CF, 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4A4FC74);
  qword_82FA768 = result;
  return result;
}
