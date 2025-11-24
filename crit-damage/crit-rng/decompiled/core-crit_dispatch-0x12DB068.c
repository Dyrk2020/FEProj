// ============================================================
// Hex-Rays C pseudocode - rttext IDB (runtime VA == static VA)
// EquipResObject.criRate / criDamage getter ——  [V]
//  sub_15A8690case 165 EquipResObject Lua 
//   sub_16A9224(..., "criRate",  getter sub_16A948C, setter sub_16A9494, ...)
//   sub_16A9224(..., "criDamage",getter sub_16A949C, setter sub_16A94A4, ...)
// ============================================================

// criRate  getter u32 @ +124
__int64 __fastcall sub_16A948C(__int64 a1)
{
  return *(unsigned int *)(a1 + 124);
}

// criDamage getter u32 @ +128
__int64 __fastcall sub_16A949C(__int64 a1)
{
  return *(unsigned int *)(a1 + 128);
}

// ============================================================
// FixRandom —— FrameEngine::FixRandomLua case 409 ·  0x175307C
//  sub_15E2B00fix_seed(getter sub_1752E00/setter sub_1752E08)
// useed(getter sub_1753050/setter sub_1753058)battle(sub_1753A9C)
// Lua userdata +16 = fix_seed+24 = useed
// ============================================================
__int64 __fastcall sub_1752E00(__int64 a1)   // fix_seed getter
{
  return *(_QWORD *)(a1 + 16);
}
__int64 __fastcall sub_1753050(__int64 a1)   // useed getter
{
  return *(_QWORD *)(a1 + 24);
}
__int64 __fastcall sub_1753074(__int64 a1)   // battle  gettervtable 
{
  return *(_QWORD *)(a1 + 32);
}

// ============================================================
// Crit  -> [V]
// sub_12DB068: "FlowActionTriggerBeforeCalcCritForAttacker_OnBeforeCalCritHandler"
//    sub_1B13498(name,65)  -> sub_42F2580(hash, sub_4AFFB60) 
// sub_12DA2E8: "FlowActionTriggerBeforeCalcCritForTarget_OnBeforeCalCritTargetHandler"
//    sub_42F2580(hash, sub_4AF3DD4) 
// ============================================================
__int64 sub_12DB068()
{
  int v0; unsigned int v1; __int64 result;
  sub_55D64B4(&unk_82FFD10);
  __cxa_atexit(sub_55D6B8C, &unk_82FFD10, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerBeforeCalcCritForAttacker_OnBeforeCalCritHandler", 65, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerBeforeCalcCritForAttacker_OnBeforeCalCritHandler", 65, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AFFB60);
  qword_82FFD18 = result;
  return result;
}
__int64 sub_12DA2E8()
{
  int v0; unsigned int v1; __int64 result;
  sub_55D64B4(&unk_82FF5E0);
  __cxa_atexit(sub_55D6B8C, &unk_82FF5E0, &unk_7223630);
  v0 = sub_1B13498("FlowActionTriggerBeforeCalcCritForTarget_OnBeforeCalCritTargetHandler", 69, 0, 0);
  v1 = sub_1B13498("FlowActionTriggerBeforeCalcCritForTarget_OnBeforeCalCritTargetHandler", 69, 0, 0);
  result = sub_42F2580(v0 ^ HIWORD(v1), sub_4AF3DD4);
  qword_82FF5E8 = result;
  return result;
}

//  ->  DAMAGE-MODEL  sub_4AFF7A8/sub_4AF3B9C 
__int64 __fastcall sub_4AFFB60(__int64 a1, __int64 a2) { return sub_4AFF7A8(a1: a2); }
__int64 __fastcall sub_4AF3DD4(__int64 a1, __int64 a2) { return sub_4AF3B9C(a1: a2); }

// ============================================================
//  sub_4AFF72C qword_82FFD18 
// a1+256  -> vtable+32 -> a1+328 -> sub_1E8CD34
// ============================================================
__int64 __fastcall sub_4AFF72C(__int64 a1)
{
  __int64 result;
  sub_4B064E4();
  result = *(_QWORD *)(a1 + 256);
  if ( result != 0 )
  {
    result = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)result + 32LL))(result);
    *(_QWORD *)(a1 + 328) = result;
    if ( result != 0xDDDDDDDDDDDDDDDDLL && result != 0 && *(_QWORD *)result != 0xDDDDDDDDDDDDDDDDLL )
      return sub_1E8CD34();
  }
  return result;
}

// ============================================================
// sub_1E8CD34 ——  ->  sub_1A844A4 
// ============================================================
void __fastcall sub_1E8CD34(_QWORD *a1, int a2, __int64 a3, __int64 a4, __int64 a5, unsigned int a6)
{
  _QWORD *v6; __int64 v12; __int64 v13; int v14, v15, v16, v17; unsigned int v18; __int64 v19; void *v20; __int64 v21; int v22; __int64 v23[2]; void *v24;
  v6 = a1;
  if ( a1[12] != 0 )
    goto LABEL_2;
  v13 = (*(__int64 (__fastcall **)(_QWORD *))(*a1 + 320LL))(a1);
  v18 = v13;
  if ( (int)v13 <= a2 )
  {
    sub_1AAB328(v23, "(--LOG_ID:%lu# %d# %d--)", 1353376532, a2, v13, v14, v15, v16, v17, v23[0]);
    sub_2072F00(v23);
  }
  else
  {
    v19 = sub_13CDEA8(v13);
    a1 = (_QWORD *)sub_1A8435C(v19, *((unsigned int *)v6 + 5), v18);
    v6[12] = a1;
    if ( a1 != nullptr )
    {
LABEL_2:
      v12 = sub_13CDEA8(a1);
      sub_1A844A4(v12, v6[12], (unsigned int)a2, a3, a4, a5, a6);
    }
  }
}
