
# dom.d.ts: https://github.com/Microsoft/TypeScript/blob/master/src/lib/dom.generated.d.ts

# this fix is needed because these definitions are absent from typescript's official lib.d.ts and are used in dom.d.ts.
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
