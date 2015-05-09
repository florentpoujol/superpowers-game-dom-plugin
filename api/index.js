var fs = require("fs");

SupAPI.registerPlugin("typescript", "DOM", {
  defs: fs.readFileSync(__dirname + "/dom.d.ts", {encoding: "utf8"})
});
