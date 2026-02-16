'use strict';

const ABI_SELECTORS = [
  'il2cpp_set_data_dir',
  'il2cpp_init',
  'il2cpp_set_temp_dir',
  'il2cpp_set_commandline_arguments',
  'il2cpp_set_commandline_arguments_utf16',
];
const IL2CPP_LIBRARY = 'libil2cpp.so';
const METADATA_SUFFIX = 'global-metadata.dat';
const LARGE_ANON_RW_BYTES = 58 * 1024 * 1024;
const MAX_ANON_RW_MAPPINGS = 3;
const MAX_ANON_RW_REPORTED_BYTES = 192 * 1024 * 1024;
const A3_PREFIX_BYTES = 256;
const A3_LARGE_READ_BYTES = 1024 * 1024;
const A3_MAX_SINGLE_SCAN_BYTES = 192 * 1024 * 1024;
const A3_MAX_TOTAL_SCAN_BYTES = 256 * 1024 * 1024;
const A3_MAX_HITS_PER_PATTERN = 32;
const A3_MAX_TRACKED_METADATA_BUFFERS = 64;
const ANDROID_ARM64_STAT_BYTES = 128;
const ANDROID_ARM64_ST_DEV_OFFSET = 0;
const ANDROID_ARM64_ST_INO_OFFSET = 8;
const ANDROID_ARM64_ST_SIZE_OFFSET = 48;
const PROT_EXEC = 4;
const MAP_ANONYMOUS = 32;
const F_DUPFD = 0;
const F_DUPFD_CLOEXEC = 1030;
const fdToPath = new Map();
const boundMetadataFds = new Map();
const negativeMetadataFds = new Set();
const fdGenerations = new Map();
const metadataMappings = [];
const metadataBuffers = [];
const hookedAbiExports = new Set();
let fstatFunction = null;
let fstatResolved = false;
let metadataBinding = null;
let a3Watch = null;
let canonicalMetadataOpenSeen = false;

function report(payload) {
  send(payload);
}

function numeric(value) {
  return value.toInt32();
}

function text(value) {
  return value.toString();
}


function readPath(pointer) {
  try {
    return pointer.readUtf8String();
  } catch (_) {
    return null;
  }
}

function isMetadataPath(path) {
  return path !== null && path.endsWith(METADATA_SUFFIX);
}

function isCandidateMetadataPath(path) {
  return a3Watch !== null && metadataBinding !== null && isMetadataPath(path);
}

function head16(buffer, nbytes) {
  if (nbytes <= 0) {
    return null;
  }
  const bytes = buffer.readByteArray(Math.min(nbytes, 16));
  return Array.prototype.map.call(
    new Uint8Array(bytes),
    (byte) => ('0' + byte.toString(16)).slice(-2),
  ).join('');
}

function bytesHex(pointer, length) {
  try {
    const bytes = pointer.readByteArray(length);
    return Array.prototype.map.call(
      new Uint8Array(bytes),
      (byte) => ('0' + byte.toString(16)).slice(-2),
    ).join('');
  } catch (_) {
    return null;
  }
}

function prefixHex(pointer, nbytes) {
  return bytesHex(pointer, Math.min(nbytes, A3_PREFIX_BYTES));
}

function rangeFile(range) {
  if (!range.file) {
    return null;
  }
  if (typeof range.file.path === 'string') {
    return range.file.path;
  }
  return String(range.file);
}

function rangeDescriptor(range) {
  return {
    base: text(range.base),
    size: range.size,
    protection: range.protection,
    file: rangeFile(range),
  };
}

function readableRanges() {
  const ranges = new Map();
  for (const protection of ['r--', 'rw-', 'r-x']) {
    try {
      for (const range of Process.enumerateRanges(protection)) {
        ranges.set(`${text(range.base)}:${range.size}`, range);
      }
    } catch (_) {
      // A missing protection class is evidence-neutral on Android variants.
    }
  }
  return Array.from(ranges.values());
}

function frameFor(address) {
  if (address === null || address === undefined) {
    return null;
  }
  const module = typeof Process.findModuleByAddress === 'function' ? Process.findModuleByAddress(address) : null;
  let rva = 'unknown';
  if (module !== null && module !== undefined) {
    try {
      rva = text(address.sub(module.base));
    } catch (_) {
      rva = 'unknown';
    }
  }
  let symbol = null;
  try {
    symbol = DebugSymbol.fromAddress(address).name || null;
  } catch (_) {
    symbol = null;
  }
  return {
    address: text(address),
    module: module === null || module === undefined ? null : module.name || null,
    rva,
    symbol,
  };
}

function backtrace(context) {
  try {
    return Thread.backtrace(context, Backtracer.ACCURATE).slice(0, 16).map(frameFor);
  } catch (_) {
    return [];
  }
}

function hexPattern(hex) {
  return hex.match(/../g).join(' ');
}

function isExecutable(protection) {
  return (protection & PROT_EXEC) !== 0;
}

function pointerInRegions(pointer, regions) {
  return regions.some((region) => {
    try {
      return pointer.compare(region.base) >= 0 && pointer.compare(region.base.add(region.size)) < 0;
    } catch (_) {
      return false;
    }
  });
}

function overlappingMetadataRegions(pointer, size) {
  if (size <= 0) {
    return [];
  }
  const end = pointer.add(size);
  return [...metadataMappings, ...metadataBuffers].filter((region) => {
    try {
      return pointer.compare(region.base.add(region.size)) < 0 && end.compare(region.base) > 0;
    } catch (_) {
      return false;
    }
  });
}

function isRecordedMetadataRegion(pointer) {
  return pointerInRegions(pointer, metadataMappings) || pointerInRegions(pointer, metadataBuffers);
}

function rememberMetadataBuffer(pointer, size, kind) {
  if (size <= 0) {
    return;
  }
  metadataBuffers.push({ base: pointer, size, kind });
  if (metadataBuffers.length > A3_MAX_TRACKED_METADATA_BUFFERS) {
    metadataBuffers.splice(0, metadataBuffers.length - A3_MAX_TRACKED_METADATA_BUFFERS);
  }
}

function decimalU64(pointer) {
  try {
    const value = pointer.readU64().toString();
    return /^\d+$/.test(value) ? value : null;
  } catch (_) {
    return null;
  }
}

function readAndroidArm64Stat(statBuffer) {
  const dev = decimalU64(statBuffer.add(ANDROID_ARM64_ST_DEV_OFFSET));
  const ino = decimalU64(statBuffer.add(ANDROID_ARM64_ST_INO_OFFSET));
  const sizeText = decimalU64(statBuffer.add(ANDROID_ARM64_ST_SIZE_OFFSET));
  const size = sizeText === null ? NaN : Number(sizeText);
  if (dev === null || ino === null || !Number.isSafeInteger(size) || size < 0) {
    return null;
  }
  return { dev, ino, size };
}

function metadataIdentity(value) {
  if (!value || typeof value.dev !== 'string' || typeof value.ino !== 'string' || !/^\d+$/.test(value.dev) || !/^\d+$/.test(value.ino) || !Number.isInteger(value.size) || value.size <= 0) {
    return null;
  }
  return { dev: value.dev, ino: value.ino, size: value.size };
}

function isLockedMetadataIdentity(identity) {
  return metadataBinding !== null && a3Watch !== null && identity !== null &&
    identity.dev === metadataBinding.identity.dev && identity.ino === metadataBinding.identity.ino &&
    identity.size === metadataBinding.identity.size && identity.size === a3Watch.fingerprint.metadata_size;
}

function captureCallsite(invocation) {
  return { caller: frameFor(invocation.returnAddress), backtrace: backtrace(invocation.context) };
}
function currentThreadId() {
  return typeof Process.getCurrentThreadId === 'function' ? Process.getCurrentThreadId() : null;
}

function fdGeneration(fd) {
  return fdGenerations.get(fd) || 0;
}
function clearMetadataFdState(fd) {
  fdToPath.delete(fd);
  boundMetadataFds.delete(fd);
  negativeMetadataFds.delete(fd);
  fdGenerations.set(fd, fdGeneration(fd) + 1);
}

function propagateMetadataBinding(sourceFd, targetFd, api) {
  const source = boundMetadataFds.get(sourceFd);
  if (source === undefined) {
    return null;
  }
  const binding = {
    fd: targetFd,
    path: source.path,
    identity: source.identity,
    binding_source: 'alias',
    origin_fd: source.origin_fd,
    origin_api: source.origin_api,
  };
  boundMetadataFds.set(targetFd, binding);
  negativeMetadataFds.delete(targetFd);
  fdToPath.set(targetFd, binding.path);
  report({
    event: 'A3_FMN_FD_ALIAS',
    api,
    source_fd: sourceFd,
    target_fd: targetFd,
    path: binding.path,
    identity: binding.identity,
    metadata_sha256: metadataBinding === null ? null : metadataBinding.sha256,
    binding_source: binding.binding_source,
    source_binding_source: source.binding_source,
    origin_fd: binding.origin_fd,
    origin_api: binding.origin_api,
  });
  return binding;
}

function resolveMetadataBinding(fd, api) {
  const known = boundMetadataFds.get(fd);
  if (known !== undefined) {
    return known;
  }
  if (a3Watch === null || metadataBinding === null || !canonicalMetadataOpenSeen || negativeMetadataFds.has(fd)) {
    return null;
  }
  const stat = fstatMetadataIdentity(fd);
  if (!isLockedMetadataIdentity(stat.identity)) {
    negativeMetadataFds.add(fd);
    return null;
  }
  const binding = {
    fd,
    path: metadataBinding.path,
    identity: stat.identity,
    binding_source: 'fstat_rebind',
    origin_fd: fd,
    origin_api: api,
  };
  boundMetadataFds.set(fd, binding);
  negativeMetadataFds.delete(fd);
  fdToPath.set(fd, binding.path);
  report({
    event: 'A3_FMN_FD_REBOUND',
    api,
    fd,
    path: binding.path,
    identity: binding.identity,
    metadata_sha256: metadataBinding.sha256,
    binding_source: binding.binding_source,
    origin_fd: binding.origin_fd,
    origin_api: binding.origin_api,
  });
  return binding;
}

function isMapFailed(value) {
  const rendered = text(value).toLowerCase();
  return rendered === '-1' || rendered.endsWith('ffffffffffffffff');
}

function fstatMetadataIdentity(fd) {
  if (!fstatResolved) {
    const address = Module.findGlobalExportByName('fstat') || Module.findGlobalExportByName('fstat64');
    fstatFunction = address === null ? null : new NativeFunction(address, 'int', ['int', 'pointer']);
    fstatResolved = true;
  }
  if (fstatFunction === null) {
    return { identity: null, error: 'missing_fstat' };
  }
  try {
    const statBuffer = Memory.alloc(ANDROID_ARM64_STAT_BYTES);
    if (fstatFunction(fd, statBuffer) !== 0) {
      return { identity: null, error: 'fstat_failed' };
    }
    const identity = readAndroidArm64Stat(statBuffer);
    return identity === null ? { identity: null, error: 'invalid_stat' } : { identity, error: null };
  } catch (error) {
    return { identity: null, error: String(error) };
  }
}

function setMetadataBinding(plan) {
  const metadata = plan && plan.input_provenance && plan.input_provenance.metadata;
  const identity = metadata && metadataIdentity(metadata.identity);
  if (!metadata || typeof metadata.path !== 'string' || typeof metadata.sha256 !== 'string' || identity === null) {
    metadataBinding = null;
    report({ event: 'A2_METADATA_BINDING', status: 'missing' });
    return { status: 'missing' };
  }
  metadataBinding = { path: metadata.path, sha256: metadata.sha256, identity };
  report({ event: 'A2_METADATA_BINDING', status: 'bound', path: metadata.path, metadata_sha256: metadata.sha256, identity });
  return { status: 'bound', path: metadata.path, sha256: metadata.sha256 };
}

function hookOpen(name, pathIndex, flagsIndex) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.path = readPath(args[pathIndex]);
      this.flags = numeric(args[flagsIndex]);
      this.candidate = isCandidateMetadataPath(this.path);
    },
    onLeave(retval) {
      const fd = numeric(retval);
      if (fd < 0) {
        return;
      }
      clearMetadataFdState(fd);
      fdToPath.set(fd, this.path);
      report({ event: 'A2_IO_OPEN', api: name, path: this.path, flags: this.flags, fd });
      if (isMetadataPath(this.path)) {
        report({ event: 'A2_FMN_PATH', api: name, path: this.path, fd });
      }
      if (!this.candidate) {
        return;
      }
      const stat = fstatMetadataIdentity(fd);
      if (!isLockedMetadataIdentity(stat.identity)) {
        negativeMetadataFds.add(fd);
        report({ event: 'A3_FMN_CANDIDATE_REJECTED', api: name, path: this.path, fd, identity: stat.identity, reason: stat.error || 'identity_mismatch' });
        return;
      }
      const binding = { fd, path: this.path, identity: stat.identity, binding_source: 'open', origin_fd: fd, origin_api: name };
      boundMetadataFds.set(fd, binding);
      canonicalMetadataOpenSeen = true;
      const trace = captureCallsite(this);
      report({ event: 'A3_FMN_BOUND', api: name, path: this.path, fd, identity: stat.identity, binding_source: binding.binding_source, metadata_sha256: metadataBinding.sha256, caller: trace.caller, backtrace: trace.backtrace });
      report({ event: 'A3_FMN_OPEN', api: name, path: this.path, fd, identity: stat.identity, binding_source: binding.binding_source, metadata_sha256: metadataBinding.sha256, caller: trace.caller, backtrace: trace.backtrace });
    },
  });
}

function hookPathStat(name, pathIndex, statIndex) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.path = readPath(args[pathIndex]);
      this.statBuffer = args[statIndex];
      this.candidate = isCandidateMetadataPath(this.path);
    },
    onLeave(retval) {
      if (!this.candidate || numeric(retval) !== 0) {
        return;
      }
      const identity = readAndroidArm64Stat(this.statBuffer);
      if (!isLockedMetadataIdentity(identity)) {
        report({ event: 'A3_FMN_STAT_REJECTED', api: name, path: this.path, identity, reason: 'identity_mismatch' });
        return;
      }
      const trace = captureCallsite(this);
      report({ event: 'A3_FMN_STAT', api: name, path: this.path, identity, metadata_sha256: metadataBinding.sha256, caller: trace.caller, backtrace: trace.backtrace });
    },
  });
}
function hookDup() {
  const address = Module.findGlobalExportByName('dup');
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: 'dup' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.sourceFd = numeric(args[0]);
    },
    onLeave(retval) {
      const targetFd = numeric(retval);
      if (targetFd < 0) {
        return;
      }
      clearMetadataFdState(targetFd);
      propagateMetadataBinding(this.sourceFd, targetFd, 'dup');
    },
  });
}

function hookDup2() {
  const address = Module.findGlobalExportByName('dup2');
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: 'dup2' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.sourceFd = numeric(args[0]);
      this.targetFd = numeric(args[1]);
    },
    onLeave(retval) {
      const targetFd = numeric(retval);
      if (targetFd < 0 || this.sourceFd === targetFd) {
        return;
      }
      clearMetadataFdState(targetFd);
      propagateMetadataBinding(this.sourceFd, targetFd, 'dup2');
    },
  });
}

function hookFcntl() {
  const address = Module.findGlobalExportByName('fcntl');
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: 'fcntl' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.sourceFd = numeric(args[0]);
      this.command = numeric(args[1]);
      this.api = this.command === F_DUPFD ? 'fcntl:F_DUPFD' : this.command === F_DUPFD_CLOEXEC ? 'fcntl:F_DUPFD_CLOEXEC' : null;
    },
    onLeave(retval) {
      if (this.api === null) {
        return;
      }
      const targetFd = numeric(retval);
      if (targetFd < 0) {
        return;
      }
      clearMetadataFdState(targetFd);
      propagateMetadataBinding(this.sourceFd, targetFd, this.api);
    },
  });
}

function hookClose() {
  const address = Module.findGlobalExportByName('close');
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: 'close' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.fd = numeric(args[0]);
    },
    onLeave(retval) {
      const path = fdToPath.get(this.fd) || null;
      const result = numeric(retval);
      clearMetadataFdState(this.fd);
      report({ event: 'A2_IO_CLOSE', api: 'close', path, fd: this.fd, result });
    },
  });
}

function hookRead(name, offsetIndex) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.fd = numeric(args[0]);
      this.buffer = args[1];
      this.offset = offsetIndex === null ? null : text(args[offsetIndex]);
      this.binding = resolveMetadataBinding(this.fd, name);
      this.path = this.binding === null ? fdToPath.get(this.fd) || null : this.binding.path;
      this.trace = this.binding === null ? null : captureCallsite(this);
    },
    onLeave(retval) {
      const nbytes = numeric(retval);
      const path = this.path;
      if (nbytes <= 0) {
        report({ event: 'A2_IO_READ_NONPOSITIVE', api: name, path, fd: this.fd, nbytes, offset: this.offset });
        return;
      }
      const hex = head16(this.buffer, nbytes);
      report({
        event: 'A2_IO_READ',
        api: name,
        path,
        fd: this.fd,
        nbytes,
        offset: this.offset,
        buffer_identity: text(this.buffer),
        head16_hex: hex,
      });
      const matchesDeclaredPath = a3Watch === null && metadataBinding !== null && path === metadataBinding.path;
      if (matchesDeclaredPath || this.binding !== null) {
        const binding = {
          metadata_sha256: metadataBinding.sha256,
          metadata_path: metadataBinding.path,
          buffer_identity: text(this.buffer),
          byte_count: nbytes,
          head16_hex: hex,
        };
        report({ event: 'A2_FMN_READ', api: name, path, fd: this.fd, nbytes, offset: this.offset, binding });
      }
      if (this.binding === null) {
        return;
      }
      rememberMetadataBuffer(this.buffer, nbytes, 'read');
      const prefix = prefixHex(this.buffer, nbytes);
      const provenance = {
        metadata_sha256: metadataBinding.sha256,
        metadata_path: metadataBinding.path,
        metadata_size: a3Watch.fingerprint.metadata_size,
        header_hex: a3Watch.fingerprint.header_hex,
        window_offset: a3Watch.fingerprint.window.offset,
        window_hex: a3Watch.fingerprint.window.hex,
      };
      const threadId = currentThreadId();
      report({
        event: 'A3_FMN_READ',
        api: name,
        path,
        fd: this.fd,
        identity: this.binding.identity,
        binding_source: this.binding.binding_source,
        thread_id: threadId,
        byte_count: nbytes,
        offset: this.offset,
        buffer_identity: text(this.buffer),
        head16_hex: hex,
        prefix_256_hex: prefix,
        provenance,
        caller: this.trace.caller,
        backtrace: this.trace.backtrace,
      });
      if (nbytes >= A3_LARGE_READ_BYTES) {
        report({
          event: 'A3_FMN_READ_TRIGGER',
          trigger: 'large_metadata_read',
          api: name,
          path,
          fd: this.fd,
          identity: this.binding.identity,
          binding_source: this.binding.binding_source,
          thread_id: threadId,
          byte_count: nbytes,
          buffer_identity: text(this.buffer),
          prefix_256_hex: prefix,
          provenance,
          caller: this.trace.caller,
          backtrace: this.trace.backtrace,
        });
      }
    },
  });
}

function hookMmap(name) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.length = numeric(args[1]);
      this.protection = numeric(args[2]);
      this.flags = numeric(args[3]);
      this.fd = numeric(args[4]);
      this.anonymous = (this.flags & MAP_ANONYMOUS) !== 0;
      this.fdGeneration = fdGeneration(this.fd);
      this.offset = text(args[5]);
      this.binding = boundMetadataFds.get(this.fd) || null;
    },
    onLeave(retval) {
      if (this.length <= 0 || isMapFailed(retval) || this.anonymous) {
        return;
      }
      if (this.binding === null && fdGeneration(this.fd) !== this.fdGeneration) {
        return;
      }
      // Fallback fstat allocates a stat buffer, so keep it outside mmap's entry callback.
      if (this.binding === null) {
        this.binding = resolveMetadataBinding(this.fd, name);
      }
      if (this.binding === null) {
        return;
      }
      this.path = this.binding.path;
      this.trace = captureCallsite(this);
      metadataMappings.push({ base: retval, size: this.length, kind: 'mmap', binding_source: this.binding.binding_source });
      report({
        event: 'A3_METADATA_MMAP',
        api: name,
        path: this.path,
        fd: this.fd,
        flags: this.flags,
        offset: this.offset,
        identity: this.binding.identity,
        binding_source: this.binding.binding_source,
        thread_id: currentThreadId(),
        base: text(retval),
        length: this.length,
        protection: this.protection,
        prefix_256_hex: prefixHex(retval, this.length),
        metadata_sha256: metadataBinding.sha256,
        caller: this.trace.caller,
        backtrace: this.trace.backtrace,
      });
    },
  });
}

function hookCopy(name) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.destination = args[0];
      this.source = args[1];
      this.length = numeric(args[2]);
      this.overlaps = a3Watch === null ? [] : overlappingMetadataRegions(this.source, this.length);
      this.trace = this.overlaps.length === 0 ? null : captureCallsite(this);
    },
    onLeave() {
      if (this.overlaps.length === 0) {
        return;
      }
      rememberMetadataBuffer(this.destination, this.length, 'copy');
      report({
        event: 'A3_FMN_COPY',
        api: name,
        source: text(this.source),
        source_overlaps: this.overlaps.map((region) => ({ kind: region.kind, base: text(region.base), size: region.size })),
        destination: text(this.destination),
        byte_count: this.length,
        identity: metadataBinding.identity,
        caller: this.trace.caller,
        backtrace: this.trace.backtrace,
      });
    },
  });
}

function hookMprotect() {
  const address = Module.findGlobalExportByName('mprotect');
  if (address === null) {
    report({ event: 'A2_HOOK_MISSING', api: 'mprotect' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.address = args[0];
      this.length = numeric(args[1]);
      this.protection = numeric(args[2]);
      this.a3Metadata = a3Watch !== null && isExecutable(this.protection) && isRecordedMetadataRegion(this.address);
      this.trace = this.a3Metadata ? captureCallsite(this) : null;
    },
    onLeave(retval) {
      if (!this.a3Metadata || numeric(retval) !== 0) {
        return;
      }
      report({
        event: 'A3_MPROTECT_RX',
        address: text(this.address),
        length: this.length,
        protection: this.protection,
        metadata_backed: isRecordedMetadataRegion(this.address),
        prefix_256_hex: prefixHex(this.address, Math.max(this.length, 0)),
        caller: this.trace.caller,
        backtrace: this.trace.backtrace,
      });
    },
  });
}

function moduleInfo(library, loaded) {
  const module = Process.findModuleByName(library) || loaded;
  if (module === null || module === undefined) {
    report({ event: 'A2_MODULE_MAP', library, present: false, base: null, size: null, path: null });
    return;
  }
  report({ event: 'A2_MODULE_MAP', library, present: true, base: text(module.base), size: module.size, path: module.path || null });
}

function reportLargeAnonymousRw() {
  const eligible = Process.enumerateRanges('rw-')
    .filter((range) => !range.file && range.size >= LARGE_ANON_RW_BYTES);
  const mappings = [];
  let totalBytes = 0;
  for (const range of eligible) {
    if (mappings.length === MAX_ANON_RW_MAPPINGS || totalBytes + range.size > MAX_ANON_RW_REPORTED_BYTES) {
      break;
    }
    mappings.push({ base: text(range.base), size: range.size, protection: range.protection });
    totalBytes += range.size;
  }
  const eligibleTotalBytes = eligible.reduce((total, range) => total + range.size, 0);
  report({
    event: 'A2_ANON_RW_SUMMARY',
    threshold_bytes: LARGE_ANON_RW_BYTES,
    eligible_count: eligible.length,
    eligible_total_bytes: eligibleTotalBytes,
    count: mappings.length,
    total_bytes: totalBytes,
    truncated: mappings.length !== eligible.length,
    mappings,
  });
}

function parseGraph(graph) {
  const value = typeof graph === 'string' ? JSON.parse(graph) : graph;
  if (!value || !Array.isArray(value.ordered_libraries)) {
    throw new Error('load graph must provide ordered_libraries');
  }
  return value;
}

function resolveExport(selector) {
  const library = Process.findModuleByName(IL2CPP_LIBRARY);
  const address = library === null ? null : library.findExportByName(selector);
  report({
    event: 'A2_EXPORT',
    library: IL2CPP_LIBRARY,
    library_path: library === null ? null : library.path || null,
    selector,
    resolved: address !== null,
    address: address === null ? null : text(address),
  });
  return address;
}

function probeExports() {
  return ABI_SELECTORS.map((selector) => ({ selector, resolved: resolveExport(selector) !== null }));
}
function bindMetadata(plan) {
  return setMetadataBinding(typeof plan === 'string' ? JSON.parse(plan) : plan);
}

function parseA3Fingerprint(value) {
  if (!value || typeof value.metadata_sha256 !== 'string' || !/^[0-9a-f]{64}$/.test(value.metadata_sha256)) {
    throw new Error('A3 fingerprint requires a metadata SHA-256');
  }
  if (!Number.isInteger(value.metadata_size) || value.metadata_size <= 0 || typeof value.header_hex !== 'string' || !/^[0-9a-f]{32}$/.test(value.header_hex)) {
    throw new Error('A3 fingerprint has invalid metadata identity fields');
  }
  const window = value.window;
  if (!window || !Number.isInteger(window.offset) || !Number.isInteger(window.length) || window.length !== 64 || typeof window.hex !== 'string' || !/^[0-9a-f]{128}$/.test(window.hex)) {
    throw new Error('A3 fingerprint requires the locked 64-byte metadata window');
  }
  return {
    metadata_sha256: value.metadata_sha256,
    metadata_size: value.metadata_size,
    header_hex: value.header_hex,
    window: { offset: window.offset, length: window.length, hex: window.hex },
  };
}

function hookA3ExportArguments() {
  if (a3Watch === null) {
    return;
  }
  const library = Process.findModuleByName(IL2CPP_LIBRARY);
  if (library === null || library === undefined) {
    return;
  }
  for (const selector of ABI_SELECTORS) {
    if (hookedAbiExports.has(selector)) {
      continue;
    }
    const address = library.findExportByName(selector);
    if (address === null) {
      continue;
    }
    hookedAbiExports.add(selector);
    Interceptor.attach(address, {
      onEnter(args) {
        if (a3Watch === null) {
          return;
        }
        const matches = [];
        for (const index of [0, 1]) {
          const header = bytesHex(args[index], 4);
          if (header === '464d4e21') {
            matches.push({ index, pointer: text(args[index]), header_hex: header, prefix_256_hex: prefixHex(args[index], A3_PREFIX_BYTES) });
          }
        }
        if (matches.length === 0) {
          return;
        }
        const trace = captureCallsite(this);
        report({
          event: 'A3_EXPORT_FMN_ARG',
          selector,
          library: IL2CPP_LIBRARY,
          address: text(address),
          metadata_sha256: a3Watch.fingerprint.metadata_sha256,
          arguments: matches,
          caller: trace.caller,
          backtrace: trace.backtrace,
        });
      },
    });
  }
}

function armWatch(plan, fingerprintValue) {
  const binding = setMetadataBinding(typeof plan === 'string' ? JSON.parse(plan) : plan);
  const fingerprint = parseA3Fingerprint(typeof fingerprintValue === 'string' ? JSON.parse(fingerprintValue) : fingerprintValue);
  if (binding.status !== 'bound' || binding.sha256 !== fingerprint.metadata_sha256 || metadataBinding === null || metadataBinding.identity.size !== fingerprint.metadata_size) {
    throw new Error('A3 metadata fingerprint does not match the bound metadata input');
  }
  boundMetadataFds.clear();
  negativeMetadataFds.clear();
  fdGenerations.clear();
  canonicalMetadataOpenSeen = false;
  metadataMappings.length = 0;
  metadataBuffers.length = 0;
  a3Watch = { fingerprint, baseline: readableRanges() };
  report({
    event: 'A3_WATCH_ARMED',
    metadata_sha256: fingerprint.metadata_sha256,
    metadata_path: binding.path,
    metadata_identity: metadataBinding.identity,
    metadata_size: fingerprint.metadata_size,
    header_hex: fingerprint.header_hex,
    window_offset: fingerprint.window.offset,
    window_hex: fingerprint.window.hex,
    baseline_readable_ranges: a3Watch.baseline.length,
  });
  return { status: 'armed', metadata_sha256: fingerprint.metadata_sha256 };
}

function sweepMemory() {
  if (a3Watch === null) {
    return { status: 'not_armed' };
  }
  const after = readableRanges();
  const baselineByExtent = new Map(a3Watch.baseline.map((range) => [`${text(range.base)}:${range.size}`, range]));
  const candidates = new Map();
  for (const range of after) {
    const prior = baselineByExtent.get(`${text(range.base)}:${range.size}`);
    if (prior === undefined || prior.protection !== range.protection) {
      candidates.set(`${text(range.base)}:${range.size}`, range);
    }
  }
  for (const mapping of metadataMappings) {
    const range = after.find((candidate) => text(candidate.base) === text(mapping.base));
    if (range !== undefined) {
      candidates.set(`${text(range.base)}:${range.size}`, range);
    }
  }
  const patterns = [
    { marker: 'fmn_header', pattern: '46 4d 4e 21' },
    { marker: 'raw_metadata_magic', pattern: 'af 1b b1 fa' },
    { marker: 'metadata_window', pattern: hexPattern(a3Watch.fingerprint.window.hex) },
  ];
  let scannedBytes = 0;
  let scannedRanges = 0;
  let hitCount = 0;
  const skipped = [];
  for (const range of candidates.values()) {
    if (range.size > A3_MAX_SINGLE_SCAN_BYTES || scannedBytes + range.size > A3_MAX_TOTAL_SCAN_BYTES) {
      skipped.push(rangeDescriptor(range));
      continue;
    }
    scannedBytes += range.size;
    scannedRanges += 1;
    for (const pattern of patterns) {
      let matches = [];
      try {
        matches = Memory.scanSync(range.base, range.size, pattern.pattern);
      } catch (error) {
        report({ event: 'A3_MEMORY_SCAN_ERROR', marker: pattern.marker, map: rangeDescriptor(range), error: String(error) });
        continue;
      }
      for (const match of matches.slice(0, A3_MAX_HITS_PER_PATTERN)) {
        hitCount += 1;
        report({
          event: 'A3_MEMORY_HIT',
          marker: pattern.marker,
          address: text(match.address),
          match_size: match.size,
          map: rangeDescriptor(range),
          prefix_256_hex: prefixHex(match.address, A3_PREFIX_BYTES),
          metadata_sha256: a3Watch.fingerprint.metadata_sha256,
        });
      }
    }
  }
  report({
    event: 'A3_MEMORY_SWEEP',
    mode: 'readable_map_delta_plus_metadata_mappings',
    baseline_readable_ranges: a3Watch.baseline.length,
    post_readable_ranges: after.length,
    candidate_ranges: candidates.size,
    scanned_ranges: scannedRanges,
    scanned_bytes: scannedBytes,
    skipped_ranges: skipped,
    hit_count: hitCount,
    metadata_sha256: a3Watch.fingerprint.metadata_sha256,
  });
  return { status: 'swept', candidate_ranges: candidates.size, scanned_ranges: scannedRanges, scanned_bytes: scannedBytes, hit_count: hitCount, skipped_ranges: skipped.length };
}

function loadGraph(graph) {
  const plan = parseGraph(graph);
  const loaded = [];
  setMetadataBinding(plan);
  report({ event: 'A2_LOAD_GRAPH_ENTER', library_count: plan.ordered_libraries.length });
  for (const library of plan.ordered_libraries) {
    if (!library || typeof library.name !== 'string' || typeof library.path !== 'string') {
      throw new Error('each load graph library requires name and device path');
    }
    try {
      const module = Module.load(library.path);
      loaded.push(library.name);
      report({ event: 'A2_MODULE_LOAD', library: library.name, path: library.path, sha256: library.sha256, status: 'loaded', error: null });
      moduleInfo(library.name, module);
    } catch (error) {
      report({ event: 'A2_MODULE_LOAD', library: library.name, path: library.path, sha256: library.sha256, status: 'error', error: String(error) });
      throw error;
    }
  }
  hookA3ExportArguments();
  reportLargeAnonymousRw();
  report({ event: 'A2_LOAD_GRAPH_RETURN', loaded });
  return { loaded };
}

function setDataDir(dataDir) {
  if (typeof dataDir !== 'string' || dataDir.length === 0) {
    throw new Error('data directory must be a non-empty string');
  }
  const address = resolveExport('il2cpp_set_data_dir');
  if (address === null) {
    report({ event: 'A2_SET_DATA_DIR', selector: 'il2cpp_set_data_dir', data_dir: dataDir, status: 'missing' });
    return { selector: 'il2cpp_set_data_dir', status: 'missing' };
  }
  try {
    const setDirectory = new NativeFunction(address, 'void', ['pointer']);
    setDirectory(Memory.allocUtf8String(dataDir));
    report({ event: 'A2_SET_DATA_DIR', selector: 'il2cpp_set_data_dir', data_dir: dataDir, status: 'called' });
    return { selector: 'il2cpp_set_data_dir', status: 'called' };
  } catch (error) {
    report({ event: 'A2_SET_DATA_DIR', selector: 'il2cpp_set_data_dir', data_dir: dataDir, status: 'error', error: String(error) });
    throw error;
  }
}

function init(domainName) {
  const name = domainName === undefined ? 'LogicHarness' : domainName;
  if (typeof name !== 'string' || name.length === 0) {
    throw new Error('init domain name must be a non-empty string');
  }
  const address = resolveExport('il2cpp_init');
  if (address === null) {
    report({ event: 'A2_INIT_ERROR', selector: 'il2cpp_init', domain_name: name, stage: 'resolve', error: 'missing_export' });
    return { selector: 'il2cpp_init', status: 'missing' };
  }
  report({ event: 'A2_INIT_ENTER', selector: 'il2cpp_init', domain_name: name });
  try {
    const initialize = new NativeFunction(address, 'pointer', ['pointer']);
    const domainPtr = text(initialize(Memory.allocUtf8String(name)));
    reportLargeAnonymousRw();
    report({ event: 'A2_INIT_RETURN', selector: 'il2cpp_init', domain_name: name, domain_ptr: domainPtr });
    return { selector: 'il2cpp_init', status: 'returned', domain_ptr: domainPtr };
  } catch (error) {
    reportLargeAnonymousRw();
    report({ event: 'A2_INIT_ERROR', selector: 'il2cpp_init', domain_name: name, stage: 'call', error: String(error) });
    throw error;
  }
}

function environment() {
  return { arch: Process.arch, pointer_size: Process.pointerSize, pid: Process.id };
}

hookPathStat('stat', 0, 1);
hookPathStat('stat64', 0, 1);
hookOpen('open', 0, 1);
hookOpen('openat', 1, 2);
hookDup();
hookDup2();
hookFcntl();
hookRead('read', null);
hookRead('pread64', 3);
hookClose();
hookMmap('mmap');
hookMmap('mmap64');
hookMprotect();
hookCopy('memcpy');
hookCopy('memmove');
report({ event: 'A2_SURFACE_HOOK_READY', transport: 'send' });

rpc.exports = {
  environment,
  bindmetadata: bindMetadata,
  armwatch: armWatch,
  loadgraph: loadGraph,
  probeexports: probeExports,
  setdatadir: setDataDir,
  init,
  sweepmemory: sweepMemory,
};
