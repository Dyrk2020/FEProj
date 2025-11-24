// registrar 0x115f5b4 (std_hash_caller=True) entries=2
__int64 sub_115F5B4()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C7FA0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C7FA0, &unk_7223630);
  v0 = sub_1B13498(&unk_56AD1CF, 41, 0, 0);
  v1 = sub_1B13498(&unk_56AD1CF, 41, 0, 0);
  qword_82C7FA8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1F35D5C);
  v2 = sub_1B13498(&unk_56AD1F9, 52, 0, 0);
  v3 = sub_1B13498(&unk_56AD1F9, 52, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1F35E74);
  qword_82C7FB0 = result;
  return result;
}
