var fs = require("fs");

SupCore.system.registerPlugin("typescriptAPI", "DOM", {
  defs: fs.readFileSync(__dirname + "/dom.d.ts", {encoding: "utf8"})
});
