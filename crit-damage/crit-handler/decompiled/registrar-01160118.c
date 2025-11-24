// registrar 0x1160118 (std_hash_caller=True) entries=3
__int64 sub_1160118()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C8ED0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C8ED0, &unk_7223630);
  v0 = sub_1B13498("HeroComponentEquipmentForge_EquipOnBuy", 38, 0, 0);
  v1 = sub_1B13498("HeroComponentEquipmentForge_EquipOnBuy", 38, 0, 0);
  qword_82C8ED8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1F900A0);
  v2 = sub_1B13498("HeroComponentEquipmentForge_EquipOnSold", 39, 0, 0);
  v3 = sub_1B13498("HeroComponentEquipmentForge_EquipOnSold", 39, 0, 0);
  qword_82C8EE0 = sub_42F2580(v2 ^ HIWORD(v3), sub_1F90160);
  v4 = sub_1B13498("HeroComponentEquipmentForge_ModifyEquipSlot", 43, 0, 0);
  v5 = sub_1B13498("HeroComponentEquipmentForge_ModifyEquipSlot", 43, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_1F90214);
  qword_82C8EE8 = result;
  return result;
}
