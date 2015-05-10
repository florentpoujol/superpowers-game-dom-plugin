var gulp = require("gulp");
var tasks = [];

// Browserify
var browserify = require("browserify");
var vinylSourceStream = require("vinyl-source-stream");

var makeBrowserify = function(source, destination, output) {
  gulp.task(output+"-browserify", function() {
    bundler = browserify(source);
    bundler.transform("brfs");
    bundle = function() {
      bundler.bundle()
      .pipe(vinylSourceStream(output+".js"))
      .pipe(gulp.dest(destination));
    };
    bundle();
  });

  tasks.push(output+"-browserify");
};

makeBrowserify("./api/index.js", "./public", "api");

// Watch
gulp.task("watch", function() {
  gulp.watch(["./api/*"], ["api-browserify"]);
});

// All
gulp.task("default", tasks);
