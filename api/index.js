var fs = require("fs");

SupCore.system.api.registerPlugin("typescript", "DOM", {
  defs: fs.readFileSync(__dirname + "/dom.d.ts", {encoding: "utf8"})
});
