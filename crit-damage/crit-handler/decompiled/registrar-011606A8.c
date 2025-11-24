// registrar 0x11606a8 (std_hash_caller=True) entries=2
__int64 sub_11606A8()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82C98D0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82C98D0, &unk_7223630);
  v0 = sub_1B13498("ActorComponentTrait_OnGainAdd", 29, 0, 0);
  v1 = sub_1B13498("ActorComponentTrait_OnGainAdd", 29, 0, 0);
  qword_82C98D8 = sub_42F2580(v0 ^ HIWORD(v1), &loc_1FD022C);
  v2 = sub_1B13498("ActorComponentTrait_OnGainRemove", 32, 0, 0);
  v3 = sub_1B13498("ActorComponentTrait_OnGainRemove", 32, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_1FD0244);
  qword_82C98E0 = result;
  return result;
}
