// H0 canary: prove Frida sees open/read on files/meta/canary.bin
// Usage: frida -U -f dev.wildriftresearch.logicharness -l open_read_canary.js --no-pause
'use strict';

const tracked = {};

function report(line) {
  // Gadget does not forward console output through the host session.
  send(line);
}

function findGlobalExport(name) {
  if (typeof Module.findGlobalExportByName === 'function') {
    return Module.findGlobalExportByName(name);
  }
  // Frida 15.x compatibility: fall back to the null-module lookup.
  return Module.findExportByName(null, name);
}

function installOpenHooks() {
  const names = ['open', 'openat'];
  let installed = 0;
  for (const name of names) {
    const address = findGlobalExport(name);
    if (address === null) {
      continue;
    }
    installed++;
    report('H0_HOOK ' + name + ' @ ' + address);
    Interceptor.attach(address, {
      onEnter(args) {
        const pathPtr = name === 'openat' ? args[1] : args[0];
        this.flags = (name === 'openat' ? args[2] : args[1]).toInt32();
        try {
          this.path = pathPtr.readUtf8String();
        } catch (_) {
          this.path = null;
        }
      },
      onLeave(retval) {
        const fd = retval.toInt32();
        if (fd < 0) {
          return;
        }
        delete tracked[fd];
        if (this.path && this.path.indexOf('canary.bin') !== -1 && (this.flags & 3) === 0) {
          const entry = { path: this.path };
          tracked[fd] = entry;
          report('H0_OPEN ' + this.path + ' fd=' + fd + ' flags=' + this.flags);
        }
      }
    });
  }
  if (installed === 0) {
    report('H0_FAIL no open/openat export');
  }
}

installOpenHooks();


const readPtr = findGlobalExport('read');
if (!readPtr) {
  report('H0_FAIL no read export');
} else {
  Interceptor.attach(readPtr, {
    onEnter: function (args) {
      this.fd = args[0].toInt32();
      this.buf = args[1];
    },
    onLeave: function (retval) {
      const n = retval.toInt32();
      const entry = tracked[this.fd];
      if (!entry) {
        return;
      }
      delete tracked[this.fd];
      if (n > 0) {
        const m = Math.min(n, 16);
        const bytes = this.buf.readByteArray(m);
        const hex = Array.prototype.map
          .call(new Uint8Array(bytes), function (b) {
            return ('0' + b.toString(16)).slice(-2);
          })
          .join('');
        report('H0_READ hook=read path=' + entry.path + ' fd=' + this.fd + ' buf=' + this.buf + ' n=' + n + ' head=' + hex);
      }
    }
  });
}

report('H0_CANARY_SCRIPT_LOADED');
