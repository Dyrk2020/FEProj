#!/usr/bin/env python3
"""Batch 2C validation helpers; unsupported claims are structured explicitly."""
from dataclasses import dataclass

@dataclass(frozen=True)
class NotEstablished:
    algorithm: str
    reason: str
    status: str = "NOT_ESTABLISHED"

def not_established(algorithm, reason):
    return NotEstablished(algorithm, reason)

RSA_SCOPE = not_established("RSA", "digest/padding/signature scope is not closed")
TGCP_AES_SCOPE = not_established("TGCP AES", "must not be generalized to VFS/NIFS")
VFS_CODEC3_ENCRYPT = not_established("VFS codec-3 encrypt/rebuild", "decrypt path is established; inverse/rebuild wire format is not")
REGION_B_CONTENT = not_established("Region B content transform", "only extent/content separation is established")
