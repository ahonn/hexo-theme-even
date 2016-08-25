'use strict';

var gulp     = require('gulp');
var sass     = require('gulp-sass');
var mincss   = require('gulp-clean-css');
var prefixer = require('gulp-autoprefixer');
var uglify   = require('gulp-uglify');
var rimraf   = require('rimraf');

gulp.task('stylesheet', function () {
  gulp.src('./stylesheet/style.scss')
      .pipe(sass())
      .pipe(prefixer('last 3 versions'))
      .pipe(mincss())
      .pipe(gulp.dest('./source/css'));
});

gulp.task('javascript', function () {
  gulp.src('./javascript/theme.js')
      .pipe(uglify())
      .pipe(gulp.dest('./source/js'));
});

gulp.task('watch', function () {
  gulp.watch('./stylesheet/**/*.scss', ['stylesheet']);
  gulp.watch('./javascript/*.js', ['javascript']);
});

gulp.task('build', ['stylesheet', 'javascript']);

gulp.task('default', ['build', 'watch']);
