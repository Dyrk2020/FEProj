// registrar 0x12bcb20 (std_hash_caller=True) entries=5
__int64 sub_12BCB20()
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
  __int64 result; // x0

  sub_55D64B4(&unk_82EC280);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EC280, &unk_7223630);
  qword_82EC290 = (__int64)sub_45A233C;
  qword_82EC2A0 = (__int64)sub_45A23FC;
  qword_82EC2B0 = (__int64)sub_45A24BC;
  qword_82EC2C0 = (__int64)sub_45A2664;
  qword_82EC2D0 = (__int64)&loc_45A26C0;
  v0 = sub_1B13498(&unk_57DC766, 38, 0, 0);
  v1 = sub_1B13498(&unk_57DC766, 38, 0, 0);
  qword_82EC288 = sub_42F2580(v0 ^ HIWORD(v1), qword_82EC290);
  v2 = sub_1B13498(&unk_57DC78D, 39, 0, 0);
  v3 = sub_1B13498(&unk_57DC78D, 39, 0, 0);
  qword_82EC298 = sub_42F2580(v2 ^ HIWORD(v3), qword_82EC2A0);
  v4 = sub_1B13498(&unk_57DC7B5, 50, 0, 0);
  v5 = sub_1B13498(&unk_57DC7B5, 50, 0, 0);
  qword_82EC2A8 = sub_42F2580(v4 ^ HIWORD(v5), qword_82EC2B0);
  v6 = sub_1B13498(&unk_57DC7E8, 34, 0, 0);
  v7 = sub_1B13498(&unk_57DC7E8, 34, 0, 0);
  qword_82EC2B8 = sub_42F2580(v6 ^ HIWORD(v7), qword_82EC2C0);
  v8 = sub_1B13498(&unk_57DC80B, 34, 0, 0);
  v9 = sub_1B13498(&unk_57DC80B, 34, 0, 0);
  result = sub_42F2580(v8 ^ HIWORD(v9), qword_82EC2D0);
  qword_82EC2C8 = result;
  return result;
}
