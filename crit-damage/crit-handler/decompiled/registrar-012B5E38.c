// registrar 0x12b5e38 (std_hash_caller=True) entries=3
__int64 sub_12B5E38()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EA0C0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA0C0, &unk_7223630);
  v0 = sub_1B13498("SeekFruitTreeForSupplyC_onStartSimulate", 39, 0, 0);
  v1 = sub_1B13498("SeekFruitTreeForSupplyC_onStartSimulate", 39, 0, 0);
  qword_82EA0C8 = sub_42F2580(v0 ^ HIWORD(v1), sub_447E258);
  v2 = sub_1B13498("SeekFruitTreeForSupplyC_onHeroJoin", 34, 0, 0);
  v3 = sub_1B13498("SeekFruitTreeForSupplyC_onHeroJoin", 34, 0, 0);
  qword_82EA0D0 = sub_42F2580(v2 ^ HIWORD(v3), sub_447E26C);
  v4 = sub_1B13498("SeekFruitTreeForSupplyC_onEndSimulate", 37, 0, 0);
  v5 = sub_1B13498("SeekFruitTreeForSupplyC_onEndSimulate", 37, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_447E280);
  qword_82EA0D8 = result;
  return result;
}
