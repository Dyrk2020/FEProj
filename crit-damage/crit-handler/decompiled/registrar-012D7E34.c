// registrar 0x12d7e34 (std_hash_caller=True) entries=1
__int64 sub_12D7E34()
{
  int v0; // w21
  unsigned int v1; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_82FE290);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_82FE290, &unk_7223630);
  v0 = sub_1B13498("FlowActionShopBuyTrigger_OnShopBuy", 34, 0, 0);
  v1 = sub_1B13498("FlowActionShopBuyTrigger_OnShopBuy", 34, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AD42D0);
  qword_82FE298 = result;
  return result;
}
