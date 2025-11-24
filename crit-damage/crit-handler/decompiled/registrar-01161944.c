// registrar 0x1161944 (std_hash_caller=True) entries=1
__int64 sub_1161944()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CAC58);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CAC58, &unk_7223630);
  v0 = sub_1B13498("ActorComponentEdgeLengthCDRecorder_OnActorDie", 45, 0, 0);
  v1 = sub_1B13498("ActorComponentEdgeLengthCDRecorder_OnActorDie", 45, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_202FD80);
  qword_82CAC60 = result;
  return result;
}
