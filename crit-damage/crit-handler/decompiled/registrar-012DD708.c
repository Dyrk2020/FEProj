// registrar 0x12dd708 (std_hash_caller=True) entries=2
__int64 sub_12DD708()
{
  int v0; // w21
  unsigned int v1; // w0
  int v2; // w21
  unsigned int v3; // w0
  __int64 result; // x0

  sub_55D64B4(&unk_8301630);
  __cxa_atexit((void (*)(void *))sub_55D6B8C, &unk_8301630, &unk_7223630);
  v0 = sub_1B13498("FlowActionClearGridFow_OnBeforeFowChanged", 41, 0, 0);
  v1 = sub_1B13498("FlowActionClearGridFow_OnBeforeFowChanged", 41, 0, 0);
  qword_8301638 = sub_42F2580(v0 ^ HIWORD(v1), sub_4B3F748);
  v2 = sub_1B13498("FlowActionClearGridFow_OnAfterFowChanged", 40, 0, 0);
  v3 = sub_1B13498("FlowActionClearGridFow_OnAfterFowChanged", 40, 0, 0);
  result = sub_42F2580(v2 ^ HIWORD(v3), sub_4B3F75C);
  qword_8301640 = result;
  return result;
}
