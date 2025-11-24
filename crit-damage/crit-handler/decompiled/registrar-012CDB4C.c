// registrar 0x12cdb4c (std_hash_caller=True) entries=1
__int64 sub_12CDB4C()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82F7000);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82F7000, &unk_7223630);
  v0 = sub_1B13498("FlowActionBulletGetCollisionInfo_OnHitActor", 43, 0, 0);
  v1 = sub_1B13498("FlowActionBulletGetCollisionInfo_OnHitActor", 43, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), &loc_49A5C1C);
  qword_82F7008 = result;
  return result;
}
