// registrar 0x12d245c (std_hash_caller=True) entries=6
__int64 sub_12D245C()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  int v8; // w21
  unsigned int v9; // w0
  int v10; // w21
  unsigned int v11; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FA7F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FA7F0, &unk_7223630);
  v0 = sub_1B13498(&unk_57FC32E, 31, 0, 0);
  v1 = sub_1B13498(&unk_57FC32E, 31, 0, 0);
  qword_82FA7F8 = sub_42F2580(v0 ^ HIWORD(v1), sub_4A517EC);
  v2 = sub_1B13498(&unk_57FC34E, 35, 0, 0);
  v3 = sub_1B13498(&unk_57FC34E, 35, 0, 0);
  qword_82FA800 = sub_42F2580(v2 ^ HIWORD(v3), sub_4A518DC);
  v4 = sub_1B13498(&unk_57FC372, 29, 0, 0);
  v5 = sub_1B13498(&unk_57FC372, 29, 0, 0);
  qword_82FA808 = sub_42F2580(v4 ^ HIWORD(v5), sub_4A518F4);
  v6 = sub_1B13498(&unk_57FC390, 32, 0, 0);
  v7 = sub_1B13498(&unk_57FC390, 32, 0, 0);
  qword_82FA810 = sub_42F2580(v6 ^ HIWORD(v7), sub_4A5190C);
  v8 = sub_1B13498(&unk_57FC3B1, 35, 0, 0);
  v9 = sub_1B13498(&unk_57FC3B1, 35, 0, 0);
  qword_82FA818 = sub_42F2580(v8 ^ HIWORD(v9), sub_4A51924);
  v10 = sub_1B13498(&unk_57FC3D5, 38, 0, 0);
  v11 = sub_1B13498(&unk_57FC3D5, 38, 0, 0);
  result = sub_42F2580(v10 ^ HIWORD(v11), sub_4A5193C);
  qword_82FA820 = result;
  return result;
}
