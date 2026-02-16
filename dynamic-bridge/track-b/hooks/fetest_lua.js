"use strict";

const fdPaths = new Map();
const bufferProvenance = new Map();
const allocations = new Map();
const FETEST_MARKER = "fetest";
const BATTLE_LOGIC_MARKER = "battlelogic";
const LUA53_FORMAT1_HEADER = [0x1b, 0x4c, 0x75, 0x61, 0x53, 0x01];
const MAX_BUFFER_PROVENANCE = 128;
const MAX_ALLOCATIONS = 128;
const activeLuaLoads = new Map();
const attachedLuaReaders = new Set();
const attachedLuaLoaders = new Set();
const attachedLuaStates = new Set();

function safeUtf8(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    return pointer.readUtf8String();
  } catch (_) {
    return null;
  }
}

function numberValue(value) {
  if (value === null || value === undefined) {
    return 0;
  }
  try {
    if (typeof value.toUInt32 === "function") {
      return value.toUInt32();
    }
    if (typeof value.toInt32 === "function") {
      return value.toInt32();
    }
    return Number(value);
  } catch (_) {
    return 0;
  }
}
function signedNumberValue(value) {
  if (value === null || value === undefined) {
    return 0;
  }
  try {
    if (typeof value.toInt32 === "function") {
      return value.toInt32();
    }
    return Number(value);
  } catch (_) {
    return 0;
  }
}

function stringValue(value) {
  if (value === null || value === undefined) {
    return null;
  }
  try {
    return value.toString();
  } catch (_) {
    return null;
  }
}

function pointerKey(pointer) {
  const key = stringValue(pointer);
  return key === null || key === "0" || key === "0x0" ? null : key;
}

function sizeText(value) {
  return value === null || value === undefined ? null : stringValue(value);
}

function readSizeT(pointer) {
  if (pointer === null || pointer === undefined) {
    return null;
  }
  try {
    if (typeof Process !== "undefined" && Process.pointerSize === 8 && typeof pointer.readU64 === "function") {
      return pointer.readU64();
    }
    if (typeof pointer.readU32 === "function") {
      return pointer.readU32();
    }
    if (typeof pointer.readU64 === "function") {
      return pointer.readU64();
    }
  } catch (_) {
    return null;
  }
  return null;
}

function headLength(size) {
  const text = sizeText(size);
  if (text === null) {
    return 0;
  }
  if (/^0x[0-9a-f]+$/i.test(text)) {
    const digits = text.slice(2).replace(/^0+/, "");
    if (digits === "") {
      return 0;
    }
    return digits.length > 2 ? 16 : Math.min(16, parseInt(digits, 16));
  }
  if (!/^\d+$/.test(text)) {
    return 0;
  }
  const digits = text.replace(/^0+/, "");
  if (digits === "") {
    return 0;
  }
  return digits.length > 2 ? 16 : Math.min(16, Number(digits));
}

function rangesOverlap(leftStart, leftEnd, rightStart, rightEnd) {
  return compareHex(leftStart, rightEnd) < 0 && compareHex(rightStart, leftEnd) < 0;
}

function spanContains(provenance, address) {
  const addressHex = canonicalHex(address);
  return addressHex !== null && provenance.start !== null &&
    compareHex(provenance.start, addressHex) <= 0 && compareHex(addressHex, provenance.end) < 0;
}

function invalidateActiveReaderBindings(matches) {
  for (const load of activeLuaLoads.values()) {
    if (load.readerBinding !== null && matches(load.readerBinding)) {
      load.readerBinding = null;
      load.readerPath = null;
      load.readerFd = null;
      load.readerBuffer = null;
    }
  }
}

function removeOverlappingProvenance(buffer, length) {
  const key = pointerKey(buffer);
  const start = canonicalHex(buffer);
  const lengthHex = canonicalHex(length);
  const end = start === null || lengthHex === null || lengthHex === "0" ? null : addHex(start, lengthHex);
  for (const [provenanceKey, provenance] of bufferProvenance) {
    if (end !== null && provenance.start !== null && rangesOverlap(provenance.start, provenance.end, start, end)) {
      bufferProvenance.delete(provenanceKey);
    } else if (key !== null && provenance.buffer === key) {
      bufferProvenance.delete(provenanceKey);
    }
  }
  if (end !== null) {
    invalidateActiveReaderBindings((provenance) =>
      provenance.start !== null && rangesOverlap(provenance.start, provenance.end, start, end)
    );
  }
}

function allocationContaining(start, end) {
  for (const allocation of allocations.values()) {
    if (compareHex(allocation.base, start) <= 0 && compareHex(end, allocation.end) <= 0) {
      return allocation;
    }
  }
  return null;
}

function setBufferProvenance(buffer, length, provenance) {
  const key = pointerKey(buffer);
  const start = canonicalHex(buffer);
  const lengthHex = canonicalHex(length);
  if (key === null || lengthHex === null || lengthHex === "0") {
    return;
  }
  const end = start === null ? null : addHex(start, lengthHex);
  if (bufferProvenance.size >= MAX_BUFFER_PROVENANCE) {
    bufferProvenance.delete(bufferProvenance.keys().next().value);
  }
  bufferProvenance.set(key, {
    path: provenance.path,
    fd: provenance.fd,
    buffer: key,
    start: start,
    end: end,
    owner: end === null ? null : allocationContaining(start, end),
  });
}

function takeBufferProvenance(buffer) {
  const key = pointerKey(buffer);
  if (key === null) {
    return undefined;
  }
  for (const [provenanceKey, provenance] of bufferProvenance) {
    if (provenance.buffer === key || spanContains(provenance, buffer)) {
      bufferProvenance.delete(provenanceKey);
      return provenance;
    }
  }
  return undefined;
}

function threadKey(context) {
  const key = context === null || context === undefined ? null : stringValue(context.threadId);
  return key === null ? "unknown" : key;
}

function isFETestPath(path) {
  if (path === null) {
    return false;
  }
  const normalized = path.replace(/\\/g, "/").toLowerCase();
  return normalized.indexOf(FETEST_MARKER) !== -1 || normalized.indexOf(BATTLE_LOGIC_MARKER) !== -1;
}

function readHead16(buffer, size) {
  const count = headLength(size);
  if (count === 0 || buffer === null || buffer === undefined) {
    return null;
  }
  try {
    const bytes = new Uint8Array(buffer.readByteArray(count));
    let hex = "";
    for (let index = 0; index < bytes.length; index += 1) {
      hex += bytes[index].toString(16).padStart(2, "0");
    }
    return hex;
  } catch (_) {
    return null;
  }
}

function appendHead16(head16Hex, fragmentHead16Hex) {
  if (head16Hex === null) {
    return fragmentHead16Hex;
  }
  if (fragmentHead16Hex === null) {
    return head16Hex;
  }
  return (head16Hex + fragmentHead16Hex).slice(0, 32);
}

function isLua53Format1(head16Hex) {
  if (head16Hex === null || head16Hex.length < LUA53_FORMAT1_HEADER.length * 2) {
    return false;
  }
  let expected = "";
  for (let index = 0; index < LUA53_FORMAT1_HEADER.length; index += 1) {
    expected += LUA53_FORMAT1_HEADER[index].toString(16).padStart(2, "0");
  }
  return head16Hex.slice(0, expected.length) === expected;
}

function emitTouch(source, functionName, api, path, fd, nbytes, offset, head16Hex, trigger, buffer) {
  send({
    event: "FETEST_TOUCH",
    priority: "high",
    source: source,
    function: functionName,
    api: api,
    path: path,
    fd: fd,
    nbytes: nbytes,
    offset: offset,
    head16_hex: head16Hex,
    byte_provenance: {
      path: path,
      fd: fd,
      trigger: trigger,
      head16_hex: head16Hex,
      buffer: buffer,
    },
  });
}

function globalExportByName(name) {
  // Frida 16+ deprecates Module.findGlobalExportByName in favour of
  // Module.findExportByName(null, name). Both remain valid in the 17.15.5
  // embedded Gadget; prefer the modern entry point and fall back for safety.
  if (typeof Module === "undefined") {
    return null;
  }
  try {
    if (typeof Module.findExportByName === "function") {
      const address = Module.findExportByName(null, name);
      if (address !== null) {
        return address;
      }
    }
  } catch (_) {
    // fall through to the legacy lookup
  }
  if (typeof Module.findGlobalExportByName === "function") {
    return Module.findGlobalExportByName(name);
  }
  return null;
}

function attachOpen(name, pathIndex, flagsIndex, dirfdIndex) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }

  Interceptor.attach(address, {
    onEnter(args) {
      this.path = safeUtf8(args[pathIndex]);
      this.flags = stringValue(args[flagsIndex]);
      this.dirfd = dirfdIndex === null ? null : signedNumberValue(args[dirfdIndex]);
    },
    onLeave(retval) {
      const fd = signedNumberValue(retval);
      if (fd >= 0) {
        // Every successful open replaces this descriptor's prior provenance.
        fdPaths.set(fd, { path: this.path });
      }
      if (!isFETestPath(this.path)) {
        return;
      }

      send({
        event: "FETEST_OPEN",
        api: name,
        path: this.path,
        fd: fd,
        flags: this.flags,
        dirfd: this.dirfd,
        nbytes: null,
        offset: null,
        head16_hex: null,
        priority: "high",
        byte_provenance: {
          path: this.path,
          fd: fd,
          trigger: "FETest path",
          head16_hex: null,
        },
      });
      emitTouch("path", null, name, this.path, fd, null, null, null, "FETest path");
    },
  });
}

function attachRead(name, offsetIndex) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }

  Interceptor.attach(address, {
    onEnter(args) {
      this.fd = numberValue(args[0]);
      this.buffer = args[1];
      this.requested = numberValue(args[2]);
      this.offset = offsetIndex === null ? null : stringValue(args[offsetIndex]);
      const provenance = fdPaths.get(this.fd);
      this.path = provenance === undefined ? null : provenance.path;
    },
    onLeave(retval) {
      const nbytes = signedNumberValue(retval);
      const positiveRead = nbytes > 0;
      if (positiveRead) {
        removeOverlappingProvenance(this.buffer, retval);
      }
      const head16Hex = positiveRead ? readHead16(this.buffer, retval) : null;
      const pathMatched = isFETestPath(this.path);
      const headerMatched = isLua53Format1(head16Hex);
      if (!pathMatched) {
        return;
      }
      if (positiveRead) {
        setBufferProvenance(this.buffer, retval, { path: this.path, fd: this.fd });
      }

      send({
        event: "FETEST_READ",
        api: name,
        path: this.path,
        fd: this.fd,
        nbytes: nbytes,
        offset: this.offset,
        head16_hex: head16Hex,
        priority: headerMatched ? "high" : "normal",
        byte_provenance: {
          path: this.path,
          fd: this.fd,
          buffer: stringValue(this.buffer),
          trigger: headerMatched ? "Lua 5.3 format-1 header" : "FETest path",
          head16_hex: head16Hex,
        },
      });
      if (headerMatched) {
        emitTouch(
          "read",
          null,
          name,
          this.path,
          this.fd,
          nbytes,
          this.offset,
          head16Hex,
          "Lua 5.3 format-1 header",
        );
      }
    },
  });
}

function attachClose() {
  const address = globalExportByName("close");
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      fdPaths.delete(numberValue(args[0]));
    },
  });
}

function canonicalHex(value) {
  const text = sizeText(value);
  if (text === null) {
    return null;
  }
  if (/^0x[0-9a-f]+$/i.test(text)) {
    return text.slice(2).replace(/^0+/, "") || "0";
  }
  if (!/^\d+$/.test(text)) {
    return null;
  }
  let decimal = text.replace(/^0+/, "") || "0";
  let hex = "";
  while (decimal !== "0") {
    let remainder = 0;
    let quotient = "";
    for (let index = 0; index < decimal.length; index += 1) {
      const digit = remainder * 10 + Number(decimal[index]);
      const next = Math.floor(digit / 16);
      if (quotient !== "" || next !== 0) {
        quotient += String(next);
      }
      remainder = digit % 16;
    }
    hex = remainder.toString(16) + hex;
    decimal = quotient || "0";
  }
  return hex;
}

function compareHex(left, right) {
  if (left.length !== right.length) {
    return left.length < right.length ? -1 : 1;
  }
  if (left === right) {
    return 0;
  }
  return left < right ? -1 : 1;
}

function addHex(left, right) {
  let carry = 0;
  let sum = "";
  let leftIndex = left.length - 1;
  let rightIndex = right.length - 1;
  while (leftIndex >= 0 || rightIndex >= 0 || carry !== 0) {
    const leftDigit = leftIndex >= 0 ? parseInt(left[leftIndex], 16) : 0;
    const rightDigit = rightIndex >= 0 ? parseInt(right[rightIndex], 16) : 0;
    const total = leftDigit + rightDigit + carry;
    sum = (total % 16).toString(16) + sum;
    carry = Math.floor(total / 16);
    leftIndex -= 1;
    rightIndex -= 1;
  }
  return sum.replace(/^0+/, "") || "0";
}

function hexToDecimal(value) {
  let decimal = "0";
  for (let index = 0; index < value.length; index += 1) {
    let carry = parseInt(value[index], 16);
    let product = "";
    for (let digitIndex = decimal.length - 1; digitIndex >= 0; digitIndex -= 1) {
      const total = Number(decimal[digitIndex]) * 16 + carry;
      product = (total % 10).toString() + product;
      carry = Math.floor(total / 10);
    }
    decimal = (carry === 0 ? "" : String(carry)) + product;
  }
  return decimal.replace(/^0+/, "") || "0";
}

function multiplyHexDigit(value, digit) {
  let carry = 0;
  let product = "";
  for (let index = value.length - 1; index >= 0; index -= 1) {
    const total = parseInt(value[index], 16) * digit + carry;
    product = (total % 16).toString(16) + product;
    carry = Math.floor(total / 16);
  }
  return (carry === 0 ? "" : carry.toString(16)) + product;
}

function multiplyHex(left, right) {
  let product = "0";
  for (let index = 0; index < left.length; index += 1) {
    product = addHex(product === "0" ? "0" : product + "0", multiplyHexDigit(right, parseInt(left[index], 16)));
  }
  return product;
}

function allocationForBase(pointer) {
  const base = canonicalHex(pointer);
  return base === null ? null : allocations.get(base) || null;
}

function recordAllocation(pointer, length) {
  const base = canonicalHex(pointer);
  const lengthHex = canonicalHex(length);
  if (base === null || lengthHex === null || lengthHex === "0" || pointerKey(pointer) === null) {
    return;
  }
  const existing = allocations.get(base);
  if (existing !== undefined) {
    invalidateOwner(existing);
    allocations.delete(base);
  }
  if (allocations.size >= MAX_ALLOCATIONS) {
    const [evictedBase, evicted] = allocations.entries().next().value;
    invalidateOwner(evicted);
    allocations.delete(evictedBase);
  }
  allocations.set(base, { base: base, end: addHex(base, lengthHex) });
}

function invalidateOwner(owner) {
  for (const [key, provenance] of bufferProvenance) {
    if (provenance.owner === owner) {
      bufferProvenance.delete(key);
    }
  }
  invalidateActiveReaderBindings((provenance) => provenance.owner === owner);
}

function invalidateUnknownProvenance() {
  for (const [key, provenance] of bufferProvenance) {
    if (provenance.owner === null) {
      bufferProvenance.delete(key);
    }
  }
  invalidateActiveReaderBindings((provenance) => provenance.owner === null);
}

function invalidateMappedRange(start, length) {
  const startHex = canonicalHex(start);
  const lengthHex = canonicalHex(length);
  if (startHex === null || lengthHex === null || lengthHex === "0") {
    return;
  }
  const endHex = addHex(startHex, lengthHex);
  for (const [key, provenance] of bufferProvenance) {
    if (provenance.start !== null && rangesOverlap(provenance.start, provenance.end, startHex, endHex)) {
      bufferProvenance.delete(key);
    }
  }
  invalidateActiveReaderBindings((provenance) =>
    provenance.start !== null && rangesOverlap(provenance.start, provenance.end, startHex, endHex)
  );
  for (const [base, allocation] of allocations) {
    if (rangesOverlap(allocation.base, allocation.end, startHex, endHex)) {
      invalidateOwner(allocation);
      allocations.delete(base);
    }
  }
}

function attachMemoryLifecycle(name) {
  const address = globalExportByName(name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.pointer = args[0];
      this.length = name === "malloc" ? args[0] : name === "calloc" ? multiplyHex(canonicalHex(args[0]) || "0", canonicalHex(args[1]) || "0") : name === "realloc" ? args[1] : name === "munmap" ? args[1] : null;
      this.oldPointer = pointerKey(args[0]);
      this.owner = (name === "free" || name === "realloc") && this.oldPointer !== null ? allocationForBase(args[0]) : null;
      if (name === "free" && this.oldPointer !== null) {
        if (this.owner === null) {
          invalidateUnknownProvenance();
        } else {
          invalidateOwner(this.owner);
          allocations.delete(this.owner.base);
        }
      } else if (name === "realloc" && this.oldPointer !== null) {
        if (this.owner === null) {
          invalidateUnknownProvenance();
        } else {
          invalidateOwner(this.owner);
          if (canonicalHex(this.length) === "0") {
            allocations.delete(this.owner.base);
          }
        }
      }
    },
    onLeave(retval) {
      if (name === "malloc" || name === "calloc") {
        recordAllocation(retval, this.length);
      } else if (name === "realloc" && pointerKey(retval) !== null) {
        if (this.owner !== null && this.owner !== undefined) {
          allocations.delete(this.owner.base);
        }
        if (this.length !== null && this.length !== undefined) {
          recordAllocation(retval, this.length);
        }
      } else if (name === "munmap" && signedNumberValue(retval) === 0) {
        invalidateMappedRange(this.pointer, this.length);
      }
    }
  });
}

function attachLuaReader(reader) {
  const key = pointerKey(reader);
  if (key === null || attachedLuaReaders.has(key)) {
    return;
  }
  try {
    Interceptor.attach(reader, {
      onEnter(args) {
        this.outer = activeLuaLoads.get(threadKey(this));
        this.sizePointer = args[2];
      },
      onLeave(retval) {
        if (this.outer === undefined) {
          return;
        }
        const size = readSizeT(this.sizePointer);
        const buffer = pointerKey(retval);
        const observation = {
          buffer: buffer,
          size: sizeText(size),
          head16_hex: readHead16(retval, size),
        };
        let provenance;
        if (buffer !== null && this.outer.readerBinding !== null && spanContains(this.outer.readerBinding, retval)) {
          provenance = this.outer.readerBinding;
        } else if (buffer !== null && this.outer.readerBinding === null) {
          provenance = takeBufferProvenance(retval);
          if (provenance !== undefined) {
            this.outer.readerBinding = provenance;
          }
        }
        this.outer.readerCallCount += 1;
        if (provenance !== undefined && this.outer.readerPath === null) {
          this.outer.readerPath = provenance.path;
          this.outer.readerFd = provenance.fd;
          this.outer.readerBuffer = provenance.buffer;
        }
        if (buffer !== null && headLength(size) > 0) {
          if (this.outer.readerBuffer === null) {
            this.outer.readerBuffer = observation.buffer;
          }
          const observedSizeHex = canonicalHex(size);
          if (observedSizeHex !== null) {
            this.outer.readerTotalSizeHex = addHex(this.outer.readerTotalSizeHex, observedSizeHex);
            this.outer.readerSize = hexToDecimal(this.outer.readerTotalSizeHex);
          }
          this.outer.readerHead16Hex = appendHead16(this.outer.readerHead16Hex, observation.head16_hex);
        }
        if (!this.outer.readerTouchEmitted && this.outer.readerBinding !== null && isLua53Format1(this.outer.readerHead16Hex)) {
          this.outer.readerTouchEmitted = true;
          emitTouch(
            "lua",
            this.outer.functionName,
            null,
            this.outer.readerBinding.path,
            this.outer.readerBinding.fd,
            observation.size,
            null,
            this.outer.readerHead16Hex,
            "Lua 5.3 format-1 header",
            this.outer.readerBinding.buffer,
          );
        }
      },
    });
    attachedLuaReaders.add(key);
  } catch (_) {
    // A null, invalid, or non-interceptable reader must not disrupt lua_load.
  }
}

function attachLuaLoader(name, directBuffer, chunkNameIndex, modeIndex, resolvedAddress) {
  if (attachedLuaLoaders.has(name)) {
    return;
  }
  const address = resolvedAddress === undefined ? globalExportByName(name) : resolvedAddress;
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.functionName = name;
      this.chunkName = safeUtf8(args[chunkNameIndex]);
      this.mode = modeIndex === null ? null : safeUtf8(args[modeIndex]);
      this.directBuffer = directBuffer;
      this.buffer = directBuffer ? pointerKey(args[1]) : null;
      this.size = directBuffer ? sizeText(args[2]) : null;
      this.head16Hex = directBuffer ? readHead16(args[1], args[2]) : null;
      const provenance = directBuffer ? takeBufferProvenance(args[1]) : undefined;
      this.path = provenance === undefined ? null : provenance.path;
      this.fd = provenance === undefined ? null : provenance.fd;
      this.provenanceBuffer = provenance === undefined ? this.buffer : provenance.buffer;
      this.readerCallCount = 0;
      this.readerBuffer = null;
      this.readerSize = null;
      this.readerTotalSizeHex = "0";
      this.readerHead16Hex = null;
      this.readerPath = null;
      this.readerFd = null;
      this.readerBinding = null;
      this.readerTouchEmitted = false;
      if (!directBuffer) {
        activeLuaLoads.set(threadKey(this), this);
        attachLuaReader(args[1]);
      }
      if (directBuffer && provenance !== undefined && isLua53Format1(this.head16Hex)) {
        emitTouch(
          "lua",
          name,
          null,
          this.path,
          this.fd,
          this.size,
          null,
          this.head16Hex,
          "Lua 5.3 format-1 header",
          this.provenanceBuffer,
        );
      }
    },
    onLeave(retval) {
      if (!this.directBuffer && activeLuaLoads.get(threadKey(this)) === this) {
        activeLuaLoads.delete(threadKey(this));
      }
      send({
        event: "LUA_LOAD",
        function: name,
        chunk_name: this.chunkName,
        mode: this.mode,
        size: this.directBuffer ? this.size : this.readerSize,
        head16_hex: this.directBuffer ? this.head16Hex : this.readerHead16Hex,
        path: this.directBuffer ? this.path : this.readerPath,
        fd: this.directBuffer ? this.fd : this.readerFd,
        reader_buffer: this.readerBuffer,
        reader_size: this.readerSize,
        reader_head16_hex: this.readerHead16Hex,
        reader_call_count: this.readerCallCount,
        return_code: signedNumberValue(retval),
        direct_buffer: this.directBuffer,
        byte_provenance: {
          path: this.directBuffer ? this.path : this.readerPath,
          fd: this.directBuffer ? this.fd : this.readerFd,
          buffer: this.directBuffer ? this.provenanceBuffer : this.readerBuffer,
          head16_hex: this.directBuffer ? this.head16Hex : this.readerHead16Hex,
        },
      });
    }
  });
  attachedLuaLoaders.add(name);
}

function moduleLuaExport(module, name) {
  if (module !== null && module !== undefined && typeof module.findExportByName === "function") {
    const exported = module.findExportByName(name);
    if (exported !== null) {
      return exported;
    }
  }
  return globalExportByName(name);
}

function attachLuaState(module) {
  const name = "luaL_newstate";
  if (attachedLuaStates.has(name)) {
    return;
  }
  const address = moduleLuaExport(module, name);
  if (address === null) {
    return;
  }
  Interceptor.attach(address, {
    onLeave(retval) {
      send({ event: "B2_LUA_STATE", selector: name, state: pointerKey(retval) });
    },
  });
  attachedLuaStates.add(name);
}

function ensureLuaHooks(module) {
  attachLuaState(module);
  attachLuaLoader("lua_load", false, 3, 4, moduleLuaExport(module, "lua_load"));
  attachLuaLoader("luaL_loadbuffer", true, 3, null, moduleLuaExport(module, "luaL_loadbuffer"));
  attachLuaLoader("luaL_loadbufferx", true, 3, 4, moduleLuaExport(module, "luaL_loadbufferx"));
}

function isSha256(value) {
  return typeof value === "string" && /^[0-9a-f]{64}$/.test(value);
}

function b2Libraries(plan) {
  if (plan === null || plan === undefined || !Array.isArray(plan.ordered_libraries) || plan.ordered_libraries.length !== 1) {
    throw new Error("B2 requires a single locked libFEProj load graph");
  }
  const entry = plan.ordered_libraries[0];
  if (entry === null || entry === undefined || entry.name !== "libFEProj.so" || typeof entry.path !== "string" || !isSha256(entry.sha256)) {
    throw new Error("B2 load graph is not bound to libFEProj.so");
  }
  return [entry];
}

function b2Input(plan) {
  const provenance = plan === null || plan === undefined ? null : plan.input_provenance;
  const input = provenance === null || provenance === undefined ? null : provenance.battle_logic;
  if (input === null || input === undefined || input.name !== "BattleLogic.res" || typeof input.path !== "string" ||
      !isSha256(input.sha256) || !Number.isSafeInteger(input.size) || input.size <= 0 || input.size > 1024 * 1024 ||
      typeof input.header_hex !== "string" || !/^[0-9a-f]{32}$/.test(input.header_hex)) {
    throw new Error("B2 requires a hash-bound BattleLogic.res input");
  }
  if (!input.path.endsWith("/Res/FETest/Logic/BattleLogic.res")) {
    throw new Error("B2 BattleLogic path is outside the staged FETest tree");
  }
  return input;
}

function loadedFEProj() {
  const module = typeof Process.findModuleByName === "function" ? Process.findModuleByName("libFEProj.so") : null;
  if (module === null || module === undefined) {
    throw new Error("libFEProj.so is not loaded");
  }
  return module;
}

function b2Environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

function loadB2Graph(plan) {
  const libraries = b2Libraries(plan);
  const loaded = [];
  for (const entry of libraries) {
    send({ event: "B2_MODULE_LOAD_BEGIN", library: entry.name, path: entry.path });
    const module = Module.load(entry.path);
    if (module === null || module === undefined) {
      throw new Error("Module.load returned no libFEProj module");
    }
    send({
      event: "B2_MODULE_LOAD",
      library: entry.name,
      path: entry.path,
      base: pointerKey(module.base),
      size: module.size,
    });
    loaded.push(entry.name);
    send({ event: "B2_LUA_HOOK_ATTACH_BEGIN", library: entry.name });
    ensureLuaHooks(module);
    send({ event: "B2_LUA_HOOK_ATTACH_READY", library: entry.name });
  }
  return { loaded: loaded };
}

function probeB2Exports() {
  const module = loadedFEProj();
  const selectors = ["luaL_newstate", "luaL_loadbufferx", "lua_load"];
  return selectors.map((selector) => {
    const address = moduleLuaExport(module, selector);
    const result = { selector: selector, resolved: address !== null, address: pointerKey(address) };
    send({ event: "B2_EXPORT", selector: selector, resolved: result.resolved, address: result.address });
    return result;
  });
}

function nativeExport(name, returnType, argumentTypes) {
  const address = globalExportByName(name);
  if (address === null) {
    throw new Error("required exported libc API is unavailable: " + name);
  }
  return new NativeFunction(address, returnType, argumentTypes);
}

function readB2Input(input, label) {
  const open = nativeExport("open", "int", ["pointer", "int"]);
  const read = nativeExport("read", "int", ["int", "pointer", "ulong"]);
  const close = nativeExport("close", "int", ["int"]);
  const path = Memory.allocUtf8String(input.path);
  const fd = signedNumberValue(open(path, 0));
  if (fd < 0) {
    throw new Error("B2 open failed for staged BattleLogic.res");
  }
  const buffer = Memory.alloc(input.size);
  try {
    const nbytes = signedNumberValue(read(fd, buffer, input.size));
    const head16Hex = readHead16(buffer, input.size);
    if (nbytes !== input.size) {
      throw new Error("B2 short read for staged BattleLogic.res: " + nbytes);
    }
    if (head16Hex !== input.header_hex) {
      throw new Error("B2 staged BattleLogic.res header mismatch");
    }
    send({
      event: "B2_INPUT_READ",
      label: label,
      path: input.path,
      sha256: input.sha256,
      size: input.size,
      nbytes: nbytes,
      buffer: pointerKey(buffer),
      head16_hex: head16Hex,
    });
    return buffer;
  } finally {
    close(fd);
  }
}

function applyB2PathPressure(input) {
  const marker = "/Res/FETest/Logic/BattleLogic.res";
  const root = input.path.slice(0, input.path.length - marker.length);
  const chdir = nativeExport("chdir", "int", ["pointer"]);
  const status = signedNumberValue(chdir(Memory.allocUtf8String(root)));
  send({
    event: "B2_PATH_PRESSURE",
    cwd: root,
    relative_candidate: "Res/FETest/Logic/BattleLogic.res",
    status: status === 0 ? "called" : "error",
    return_code: status,
  });
  return { cwd: root, return_code: status };
}

function nonNullPointer(pointer) {
  return pointer !== null && pointer !== undefined && pointerKey(pointer) !== null &&
    (typeof pointer.isNull !== "function" || !pointer.isNull());
}

function writeReaderSize(sizePointer, size) {
  if (Process.pointerSize === 8 && typeof sizePointer.writeU64 === "function") {
    sizePointer.writeU64(size);
    return;
  }
  if (typeof sizePointer.writeU32 === "function") {
    sizePointer.writeU32(size);
    return;
  }
  throw new Error("Lua reader size_t output is unavailable");
}

function runB2FETest(plan) {
  const input = b2Input(plan);
  const module = loadedFEProj();
  ensureLuaHooks(module);
  const exports = {
    luaL_newstate: moduleLuaExport(module, "luaL_newstate"),
    luaL_loadbufferx: moduleLuaExport(module, "luaL_loadbufferx"),
    lua_load: moduleLuaExport(module, "lua_load"),
  };
  if (exports.luaL_newstate === null || (exports.luaL_loadbufferx === null && exports.lua_load === null)) {
    throw new Error("B2 cannot force the Lua surface because required whitelist exports are missing");
  }

  const pathPressure = applyB2PathPressure(input);
  const newState = new NativeFunction(exports.luaL_newstate, "pointer", []);
  const state = newState();
  if (!nonNullPointer(state)) {
    throw new Error("luaL_newstate returned null");
  }

  const result = {
    input: { path: input.path, sha256: input.sha256, size: input.size, header_hex: input.header_hex },
    path_pressure: pathPressure,
    state: pointerKey(state),
    direct_load: null,
    reader_load: null,
    state_cleanup: "process-teardown; lua_close is not in the export ABI whitelist",
  };
  if (exports.luaL_loadbufferx !== null) {
    const buffer = readB2Input(input, "luaL_loadbufferx");
    const loadBuffer = new NativeFunction(exports.luaL_loadbufferx, "int", ["pointer", "pointer", "ulong", "pointer", "pointer"]);
    const returnCode = signedNumberValue(loadBuffer(
      state,
      buffer,
      input.size,
      Memory.allocUtf8String("@BattleLogic.res"),
      Memory.allocUtf8String("b"),
    ));
    result.direct_load = {
      selector: "luaL_loadbufferx",
      return_code: returnCode,
      error_string: null,
      error_string_status: "not-in-export-abi-whitelist",
    };
    send({ event: "B2_LUA_CALL", selector: "luaL_loadbufferx", return_code: returnCode, input_sha256: input.sha256 });
  }
  if (exports.lua_load !== null) {
    const buffer = readB2Input(input, "lua_load");
    let emitted = false;
    const reader = new NativeCallback((luaState, data, sizePointer) => {
      if (emitted) {
        writeReaderSize(sizePointer, 0);
        return ptr(0);
      }
      emitted = true;
      writeReaderSize(sizePointer, input.size);
      return buffer;
    }, "pointer", ["pointer", "pointer", "pointer"]);
    const load = new NativeFunction(exports.lua_load, "int", ["pointer", "pointer", "pointer", "pointer", "pointer"]);
    const returnCode = signedNumberValue(load(
      state,
      reader,
      ptr(0),
      Memory.allocUtf8String("@BattleLogic.res"),
      Memory.allocUtf8String("b"),
    ));
    result.reader_load = { selector: "lua_load", return_code: returnCode };
    send({ event: "B2_LUA_CALL", selector: "lua_load", return_code: returnCode, input_sha256: input.sha256 });
  }
  return result;
}

function installCrashTrap() {
  // Diagnostic-only: record the fault PC and owning module for the B2 load
  // crash forensics, then hand the signal back to the default handler so the
  // process still dies exactly as it would without the trap (return false).
  if (typeof Process === "undefined" || typeof Process.setExceptionHandler !== "function") {
    return;
  }
  let trapped = false;
  Process.setExceptionHandler((details) => {
    if (trapped) {
      return false;
    }
    trapped = true;
    let faultAddress = null;
    let faultPc = null;
    let moduleName = null;
    let moduleBase = null;
    let rva = null;
    try {
      if (details !== null && details !== undefined) {
        faultAddress = details.address !== null && details.address !== undefined ? pointerKey(details.address) : null;
      }
      if (details !== null && details !== undefined && details.context !== null && details.context !== undefined) {
        const pc = details.context.pc;
        if (pc !== null && pc !== undefined) {
          faultPc = pointerKey(pc);
          if (typeof Process.enumerateModules === "function") {
            for (const module of Process.enumerateModules()) {
              const base = module.base;
              if (base !== null && base !== undefined && pc.compare(base) >= 0 && pc.compare(base.add(module.size)) < 0) {
                moduleName = module.name;
                moduleBase = pointerKey(base);
                rva = pointerKey(pc.sub(base));
                break;
              }
            }
          }
        }
      }
    } catch (_) {
      // Never let the diagnostic trap itself crash the process.
    }
    send({
      event: "B2_CRASH_TRAP",
      signal: details !== null && details !== undefined ? details.type : null,
      fault_address: faultAddress,
      fault_pc: faultPc,
      module: moduleName,
      module_base: moduleBase,
      rva: rva,
    });
    return false;
  });
}

attachOpen("open", 0, 1, null);
attachOpen("openat", 1, 2, 0);
attachRead("read", null);
attachRead("pread64", 3);
attachClose();
attachMemoryLifecycle("malloc");
attachMemoryLifecycle("calloc");
attachMemoryLifecycle("realloc");
attachMemoryLifecycle("free");
attachMemoryLifecycle("munmap");
ensureLuaHooks();
installCrashTrap();

if (typeof rpc !== "undefined") {
  rpc.exports = {
    environment: b2Environment,
    loadgraph: loadB2Graph,
    probeexports: probeB2Exports,
    runfetest: runB2FETest,
  };
}
