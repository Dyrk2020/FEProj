// registrar 0x12d233c (std_hash_caller=True) entries=1
__int64 sub_12D233C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FA700);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA700, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC271, 40, 0, 0);
  v1 = sub_1B13498(&unk_57FC271, 40, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4A4F310);
  qword_82FA708 = result;
  return result;
}
