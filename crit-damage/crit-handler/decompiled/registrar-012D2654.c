// registrar 0x12d2654 (std_hash_caller=True) entries=3
__int64 sub_12D2654()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FA870);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA870, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC42C, 38, 0, 0);
  v1 = sub_1B13498(&unk_57FC42C, 38, 0, 0);
  qword_82FA878 = sub_42F2580(v0 ^ HIWORD(v1), &sub_4A5450C);
  v2 = sub_1B13498(&unk_57FC453, 35, 0, 0);
  v3 = sub_1B13498(&unk_57FC453, 35, 0, 0);
  qword_82FA880 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A54600);
  v4 = sub_1B13498(&unk_57FC477, 38, 0, 0);
  v5 = sub_1B13498(&unk_57FC477, 38, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4A54618);
  qword_82FA888 = result;
  return result;
}
