// registrar 0x12e9198 (std_hash_caller=True) entries=4
__int64 sub_12E9198()
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

  sub_55D64B4(&unk_83090A0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83090A0, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitHandler", 41, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitHandler", 41, 0, 0);
  qword_83090A8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_4C77B54);
  v2 = sub_1B13498("ParallelFlowActionTriggerHit_OnMissHitHandler", 45, 0, 0);
  v3 = sub_1B13498("ParallelFlowActionTriggerHit_OnMissHitHandler", 45, 0, 0);
  qword_83090B0 = sub_42F2580(v2 ^ HIWORD(v3), sub_4C77C58);
  v4 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitBlockHandler", 46, 0, 0);
  v5 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitBlockHandler", 46, 0, 0);
  qword_83090B8 = sub_42F2580(v4 ^ HIWORD(v5), sub_4C77D28);
  v6 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitSpellShieldHandler", 52, 0, 0);
  v7 = sub_1B13498("ParallelFlowActionTriggerHit_OnHitSpellShieldHandler", 52, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_4C77DFC);
  qword_83090C0 = result;
  return result;
}
