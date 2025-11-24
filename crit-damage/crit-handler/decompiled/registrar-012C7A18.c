// registrar 0x12c7a18 (std_hash_caller=True) entries=1
__int64 sub_12C7A18()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F1FE8);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F1FE8, &unk_7223630);
  v0 = sub_1B13498("EffectModificationKillExp_ActorVarResetHandler", 46, 0, 0);
  v1 = sub_1B13498("EffectModificationKillExp_ActorVarResetHandler", 46, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_48AF940);
  qword_82F1FF0 = result;
  return result;
}
