// registrar 0x12dd210 (std_hash_caller=True) entries=4
__int64 sub_12DD210()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  int v6; // w21
  unsigned int v7; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8301280);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8301280, &unk_7223630);
  v0 = sub_1B13498("FlowActionSyncActorLocation_OnPositionChange", 44, 0, 0);
  v1 = sub_1B13498("FlowActionSyncActorLocation_OnPositionChange", 44, 0, 0);
  qword_8301288 = sub_42F2580(v0 ^ HIWORD(v1), sub_4B35844);
  v2 = sub_1B13498("FlowActionSyncActorLocation_OnForwardChange", 43, 0, 0);
  v3 = sub_1B13498("FlowActionSyncActorLocation_OnForwardChange", 43, 0, 0);
  qword_8301290 = sub_42F2580(v2 ^ HIWORD(v3), sub_4B3585C);
  v4 = sub_1B13498("FlowActionSyncActorLocation_OnUpdateSync", 40, 0, 0);
  v5 = sub_1B13498("FlowActionSyncActorLocation_OnUpdateSync", 40, 0, 0);
  qword_8301298 = sub_42F2580(v4 ^ HIWORD(v5), sub_4B3591C);
  v6 = sub_1B13498("FlowActionSyncActorLocation_OnActorFlash", 40, 0, 0);
  v7 = sub_1B13498("FlowActionSyncActorLocation_OnActorFlash", 40, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4B359EC);
  qword_83012A0 = result;
  return result;
}
