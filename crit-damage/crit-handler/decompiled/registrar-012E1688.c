// registrar 0x12e1688 (std_hash_caller=True) entries=1
__int64 sub_12E1688()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8304900);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8304900, &unk_7223630);
  v0 = sub_1B13498("FlowActionSyncVisualFieldExposure_OnVisualFieldExposureChanged", 62, 0, 0);
  v1 = sub_1B13498("FlowActionSyncVisualFieldExposure_OnVisualFieldExposureChanged", 62, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_4BBAF04);
  qword_8304908 = result;
  return result;
}
