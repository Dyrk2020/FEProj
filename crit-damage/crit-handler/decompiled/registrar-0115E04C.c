// registrar 0x115e04c (std_hash_caller=True) entries=1
__int64 sub_115E04C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C5670);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C5670, &unk_7223630);
  v0 = sub_1B13498("BattleScoringHighlight_OnReciveHighlightEvent", 45, 0, 0);
  v1 = sub_1B13498("BattleScoringHighlight_OnReciveHighlightEvent", 45, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_1E5F4E4);
  qword_82C5678 = result;
  return result;
}
