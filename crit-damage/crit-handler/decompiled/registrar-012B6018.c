// registrar 0x12b6018 (std_hash_caller=True) entries=4
__int64 sub_12B6018()
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

  sub_55D64B4(&unk_82EA120);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82EA120, &unk_7223630);
  v0 = sub_1B13498("HeroRandomGainEventProcess_ReadyToRestSkillHandler", 50, 0, 0);
  v1 = sub_1B13498("HeroRandomGainEventProcess_ReadyToRestSkillHandler", 50, 0, 0);
  qword_82EA128 = sub_42F2580(v0 ^ HIWORD(v1), sub_44834A0);
  v2 = sub_1B13498("HeroRandomGainEventProcess_ReadyToRestEquipmentForgeHandler", 59, 0, 0);
  v3 = sub_1B13498("HeroRandomGainEventProcess_ReadyToRestEquipmentForgeHandler", 59, 0, 0);
  qword_82EA130 = sub_42F2580(v2 ^ HIWORD(v3), sub_44834B4);
  v4 = sub_1B13498("HeroRandomGainEventProcess_ReadyToSelectFlySwordHandler", 55, 0, 0);
  v5 = sub_1B13498("HeroRandomGainEventProcess_ReadyToSelectFlySwordHandler", 55, 0, 0);
  qword_82EA138 = sub_42F2580(v4 ^ HIWORD(v5), sub_4483544);
  v6 = sub_1B13498("HeroRandomGainEventProcess_ReadyToSelectEnhanceNumHandler", 57, 0, 0);
  v7 = sub_1B13498("HeroRandomGainEventProcess_ReadyToSelectEnhanceNumHandler", 57, 0, 0);
  result = sub_42F2580(v6 ^ HIWORD(v7), sub_44835E0);
  qword_82EA140 = result;
  return result;
}
