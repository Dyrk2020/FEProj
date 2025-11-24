// registrar 0x1165574 (std_hash_caller=True) entries=1
__int64 sub_1165574()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82CF1C0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82CF1C0, &unk_7223630);
  v0 = sub_1B13498("RuinEquipShelves_OnRuinEquipFreeCount", 37, 0, 0);
  v1 = sub_1B13498("RuinEquipShelves_OnRuinEquipFreeCount", 37, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_21EAC90);
  qword_82CF1C8 = result;
  return result;
}
