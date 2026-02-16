'use strict';

const fdToPath = new Map();
const metadataSuffix = 'global-metadata.dat';

function report(payload) {
  send(payload);
}

function numeric(value) {
  return value.toInt32();
}

function word(value) {
  return value.toString();
}

function pathAt(pointer) {
  try {
    return pointer.readUtf8String();
  } catch (_) {
    return null;
  }
}

function isMetadataPath(path) {
  return path !== null && path.endsWith(metadataSuffix);
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

function fmnTouch(api, path, fd, provenance) {
  report({
    event: 'FMN_TOUCH',
    priority: 'high',
    api,
    path,
    fd,
    byte_provenance: provenance,
  });
}

function hookOpen(name, pathIndex, flagsIndex) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.path = pathAt(args[pathIndex]);
      this.flags = numeric(args[flagsIndex]);
    },
    onLeave(retval) {
      const fd = numeric(retval);
      if (fd < 0) {
        return;
      }
      fdToPath.set(fd, this.path);
      report({ event: 'IO_OPEN', api: name, path: this.path, flags: this.flags, fd });
      if (isMetadataPath(this.path)) {
        fmnTouch(name, this.path, fd, {
          source: 'path',
          trigger: 'global-metadata.dat path',
          head16_hex: null,
        });
      }
    },
  });
}

function hookRead(name, offsetIndex) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.fd = numeric(args[0]);
      this.buffer = args[1];
      this.offset = offsetIndex === null ? null : word(args[offsetIndex]);
    },
    onLeave(retval) {
      const nbytes = numeric(retval);
      const path = fdToPath.get(this.fd) || null;
      const hex = head16(this.buffer, nbytes);
      report({
        event: 'IO_READ',
        api: name,
        path,
        fd: this.fd,
        nbytes,
        offset: this.offset,
        head16_hex: hex,
      });
      const startsWithFmn = hex !== null && hex.startsWith('464d4e21');
      if (isMetadataPath(path) || startsWithFmn) {
        fmnTouch(name, path, this.fd, {
          source: 'read_buffer',
          trigger: startsWithFmn ? 'FMN! header' : 'global-metadata.dat path',
          buffer: word(this.buffer),
          relative_offset: this.offset === null ? 'stream' : this.offset,
          bytes_observed: nbytes,
          head16_hex: hex,
        });
      }
    },
  });
}

function hookMmap(name) {
  const address = Module.findGlobalExportByName(name);
  if (address === null) {
    report({ event: 'HOOK_MISSING', api: name });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.len = word(args[1]);
      this.prot = numeric(args[2]);
      this.fd = numeric(args[4]);
      this.path = fdToPath.get(this.fd) || null;
    },
    onLeave(retval) {
      report({
        event: 'IO_MMAP',
        api: name,
        path: this.path,
        fd: this.fd,
        len: this.len,
        prot: this.prot,
        return_ptr: word(retval),
      });
    },
  });
}

function hookMprotect() {
  const address = Module.findGlobalExportByName('mprotect');
  if (address === null) {
    report({ event: 'HOOK_MISSING', api: 'mprotect' });
    return;
  }
  Interceptor.attach(address, {
    onEnter(args) {
      this.ptr = word(args[0]);
      this.len = word(args[1]);
      this.prot = numeric(args[2]);
    },
    onLeave(retval) {
      report({
        event: 'IO_MPROTECT',
        api: 'mprotect',
        ptr: this.ptr,
        len: this.len,
        prot: this.prot,
        result: numeric(retval),
      });
    },
  });
}

hookOpen('open', 0, 1);
hookOpen('openat', 1, 2);
hookRead('read', null);
hookRead('pread64', 3);
hookMmap('mmap');
hookMmap('mmap64');
hookMprotect();
report({ event: 'FMN_IO_HOOK_READY', transport: 'send' });
