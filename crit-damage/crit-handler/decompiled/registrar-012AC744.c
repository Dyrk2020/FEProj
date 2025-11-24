// registrar 0x12ac744 (std_hash_caller=True) entries=3
__int64 sub_12AC744()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82E79F0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82E79F0, &unk_7223630);
  v0 = sub_1B13498("PileAttackingRefreshGameState_OnAttackHander", 44, 0, 0);
  v1 = sub_1B13498("PileAttackingRefreshGameState_OnAttackHander", 44, 0, 0);
  qword_82E79F8 = sub_42F2580(v0 ^ HIWORD(v1), sub_432A310);
  v2 = sub_1B13498("PileAttackingRefreshGameState_OnKillHander", 42, 0, 0);
  v3 = sub_1B13498("PileAttackingRefreshGameState_OnKillHander", 42, 0, 0);
  qword_82E7A00 = sub_42F2580(v2 ^ HIWORD(v3), sub_432A32C);
  v4 = sub_1B13498("PileAttackingRefreshGameState_OnDieHander", 41, 0, 0);
  v5 = sub_1B13498("PileAttackingRefreshGameState_OnDieHander", 41, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_432A3BC);
  qword_82E7A08 = result;
  return result;
}
