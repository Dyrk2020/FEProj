// registrar 0x12b63d8 (std_hash_caller=True) entries=3
__int64 sub_12B63D8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  int v4; // w21
  unsigned int v5; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82EA200);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA200, &unk_7223630);
  v0 = sub_1B13498("SeekFruitForSupplyC_onStartSimulate", 35, 0, 0);
  v1 = sub_1B13498("SeekFruitForSupplyC_onStartSimulate", 35, 0, 0);
  qword_82EA208 = sub_42F2580(v0 ^ HIWORD(v1), sub_4486E1C);
  v2 = sub_1B13498("SeekFruitForSupplyC_onHeroJoin", 30, 0, 0);
  v3 = sub_1B13498("SeekFruitForSupplyC_onHeroJoin", 30, 0, 0);
  qword_82EA210 = sub_42F2580(v2 ^ HIWORD(v3), sub_4486E30);
  v4 = sub_1B13498("SeekFruitForSupplyC_onEndSimulate", 33, 0, 0);
  v5 = sub_1B13498("SeekFruitForSupplyC_onEndSimulate", 33, 0, 0);
  result = sub_42F2580(v4 ^ HIWORD(v5), sub_4486E44);
  qword_82EA218 = result;
  return result;
}
