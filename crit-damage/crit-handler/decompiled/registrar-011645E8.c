// registrar 0x11645e8 (std_hash_caller=True) entries=3
__int64 sub_11645E8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CDD60);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CDD60, &unk_7223630);
  v0 = sub_1B13498(&unk_56BFE85, 27, 0, 0);
  v1 = sub_1B13498(&unk_56BFE85, 27, 0, 0);
  qword_82CDD68 = sub_42F2580(v0 ^ HIWORD(v1), sub_2137960);
  v2 = sub_1B13498(&unk_56BFEA1, 24, 0, 0);
  v3 = sub_1B13498(&unk_56BFEA1, 24, 0, 0);
  sub_42F2580(v2 ^ HIWORD(v3), sub_2137974);
  v4 = sub_1B13498(&unk_56BFEBA, 33, 0, 0);
  v5 = sub_1B13498(&unk_56BFEBA, 33, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_2137988);
  qword_82CDD70 = result;
  return result;
}
