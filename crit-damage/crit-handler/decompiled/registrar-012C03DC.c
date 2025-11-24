// registrar 0x12c03dc (std_hash_caller=True) entries=2
__int64 sub_12C03DC()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82ED210);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82ED210, &unk_7223630);
  v0 = sub_1B13498("OfflineDataCollector_OnUseSkill", 31, 0, 0);
  v1 = sub_1B13498("OfflineDataCollector_OnUseSkill", 31, 0, 0);
  qword_82ED218 = sub_42F2580(v0 ^ HIWORD(v1), &loc_46DB58C);
  v2 = sub_1B13498("OfflineDataCollector_OnAttacHandler", 35, 0, 0);
  v3 = sub_1B13498("OfflineDataCollector_OnAttacHandler", 35, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_46DB5A4);
  qword_82ED220 = result;
  return result;
}
