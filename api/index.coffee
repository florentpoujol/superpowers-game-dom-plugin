
# dom.d.ts: https://github.com/Microsoft/TypeScript/blob/master/src/lib/dom.generated.d.ts

# This fix is needed because these definitions are absent from typescript's official lib.d.ts and are used in dom.d.ts.

# 06 march 2015: these definitions can actually be found in :
# https://github.com/Microsoft/TypeScript/blob/master/src/lib/extensions.d.ts
# and also in
# https://github.com/Microsoft/TypeScript/blob/master/src/lib/es6.d.ts
fix = 
"""
interface ArrayBufferView {}
declare var ArrayBufferView: {}

interface ArrayBuffer {}
declare var ArrayBuffer: {}

interface Uint8Array {}
declare var Uint8Array: {}

interface Int32Array {}
declare var Int32Array: {}

interface Float32Array {}
declare var Float32Array: {}
"""

fs = require 'fs'
SupAPI.addPlugin 'typescript', 'dom', {
  defs: fs.readFileSync(__dirname + '/dom.d.ts', encoding: 'utf8') + fix
}
