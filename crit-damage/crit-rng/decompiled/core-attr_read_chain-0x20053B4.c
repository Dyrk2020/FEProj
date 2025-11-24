// ============================================================
// Hex-Rays C pseudocode - rttext IDB (runtime VA == static VA, delta=0)
// attr_getter_by_id @ 0x20053B4 (sub_20053B4)
// sub_20053B4(actor_component, attr_id) -> sub_1F66418(+1224, attr_id)
// ATTR_CRI_RATE=0xC / ATTR_CRI_DAMAGE_RATE=0xD sub_2C76D64 
// ============================================================
__int64 __fastcall sub_20053B4(__int64 a1)
{
  return sub_1F66418(a1 + 1224);
}

// ============================================================
// attr_array_get @ 0x1F66418 (sub_1F66418)
//  ID 8B  -> sub_20700BC 
// ============================================================
__int64 __fastcall sub_1F66418(__int64 a1, int a2)
{
  __int64 v2; // x8
  v2 = *(_QWORD *)(a1 + 40);
  if ( (int)((unsigned __int64)(*(_QWORD *)(a1 + 48) - v2) >> 3) <= a2 )
    return 0;
  else
    return sub_20700BC(*(_QWORD *)(v2 + 8LL * a2));
}

// ============================================================
// attr_entry_value @ 0x20700BC (sub_20700BC)
//  +152  -> sub_2126FBCbuff  +96 
// ============================================================
__int64 __fastcall sub_20700BC(_QWORD *a1)
{
  if ( a1[19] != 0 )
    return sub_2126FBC(a1[19], a1[16]);
  else
    return a1[12];
}
