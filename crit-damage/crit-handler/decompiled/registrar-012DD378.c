// registrar 0x12dd378 (std_hash_caller=True) entries=1
__int64 sub_12DD378()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8301300);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8301300, &unk_7223630);
  v0 = sub_1B13498("FlowActionBackInTime_OnBackInTime", 33, 0, 0);
  v1 = sub_1B13498("FlowActionBackInTime_OnBackInTime", 33, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_4B36A18);
  qword_8301308 = result;
  return result;
}
