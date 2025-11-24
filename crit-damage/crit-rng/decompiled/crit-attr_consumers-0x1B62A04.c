// ============================================================
// Hex-Rays C pseudocode - rttext IDB
// ATTR_CRI_RATE(0xC) / ATTR_CRI_DAMAGE_RATE(0xD) scan1 
//  float ×3445.9  a4  →  [V  / INFERENCE ]
// ============================================================

// sub_1B62A040x1B62A04, 1680B +2547/+2551
*(float *)(a4 + 2547) = (float)sub_20053B4(*(a3 + 480), 12) * 3445.9;  // ATTR_CRI_RATE
*(float *)(a4 + 2551) = (float)sub_20053B4(*(a3 + 480), 13) * 3445.9;  // ATTR_CRI_DAMAGE_RATE

// sub_1B6E5E00x1B6E5E0, 2316B +4544/+4548
*(float *)(a3 + 4544) = (float)sub_20053B4(*(a2 + 480), 12) * 3445.9;
*(float *)(a3 + 4548) = (float)sub_20053B4(*(a2 + 480), 13) * 3445.9;

// sub_4744F200x4744F20, 1988B +2472/+2476
*(float *)(a4 + 2472) = (float)sub_20053B4(*(a3 + 480), 12) * 3445.9;
*(float *)(a4 + 2476) = (float)sub_20053B4(*(a3 + 480), 13) * 3445.9;

// sub_477D3CC0x477D3CC, 2292B +2464/+2468
*(float *)(a4 + 2464) = (float)sub_20053B4(*(a3 + 480), 12) * 3445.9;
*(float *)(a4 + 2468) = (float)sub_20053B4(*(a3 + 480), 13) * 3445.9;

// sub_1B56100(0xC@0x1b56a5c)sub_1B80D64(0xC@0x1b81484)
// sub_46E177C(0xC@0x46e189c,0xD@0x46e18b4)sub_46E310C(0xC@0x46e3228,0xD@0x46e3240)
// sub_4DF5D3C(0xC@0x4df61b0,0xD@0x4df61fc) ——  results-cri1.json 

// ATTR sub_20053B4 833 
// 0x2 x323 | 0x3 x1 | 0x6 x31 | 0x7 x4 | 0x8 x29 | 0x9 x35 | 0xA x10 | 0xB x10 |
// 0xC x9 | 0xD x7 | 0xE x9 | 0xF x11 | 0x10 x16 | 0x11 x13 | 0x12 x10 | 0x13 x9 |
// 0x14 x8 | 0x16 x3 | 0x17 x21 | 0x1B x6 | 0x1D x28 | 0x21 x1 | 0x22 x3 | 0x24 x1 |  x235
