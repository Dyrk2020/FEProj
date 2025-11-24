// registrar 0x12e8664 (std_hash_caller=True) entries=1
__int64 sub_12E8664()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8308D40);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8308D40, &unk_7223630);
  v0 = sub_1B13498("ParallelFlowActionTriggerSurrenderVote_SurrenderVoteHandler", 59, 0, 0);
  v1 = sub_1B13498("ParallelFlowActionTriggerSurrenderVote_SurrenderVoteHandler", 59, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4C71160);
  qword_8308D48 = result;
  return result;
}
