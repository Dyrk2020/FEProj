// registrar 0x12e0fb8 (std_hash_caller=True) entries=1
__int64 sub_12E0FB8()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_83043E0);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_83043E0, &unk_7223630);
  v0 = sub_1B13498("FlowActionCountDamage_OnHurt", 28, 0, 0);
  v1 = sub_1B13498("FlowActionCountDamage_OnHurt", 28, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_4BB0074);
  qword_83043E8 = result;
  return result;
}
