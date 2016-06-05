'use strict';

var gulp     = require('gulp');
var sass     = require('gulp-sass');
var mincss   = require('gulp-clean-css');
var prefixer = require('gulp-autoprefixer');
var rimraf   = require('rimraf');

gulp.task('clean', function (done) {
  rimraf('./source/css/style.css', done);
});

// Compile Sass into CSS
gulp.task('sass', function () {
  gulp.src('./style/style.scss')
      .pipe(sass())
      .pipe(prefixer('last 3 versions'))
      .pipe(mincss())
      .pipe(gulp.dest('./source/css'));
});

// Watch for changes to Sass
gulp.task('watch', function () {
  gulp.watch('./style/**/*.scss', ['sass']);
});

gulp.task('build', ['clean', 'sass']);

gulp.task('default', ['build', 'watch']);
