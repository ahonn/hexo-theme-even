
var gulp = require('gulp');
var less = require('gulp-less');
var cssmin = require('gulp-minify-css');
var autoprefixer = require('gulp-autoprefixer')

gulp.task('less', function () {
    gulp.src('./source/less/style.less')
        .pipe(less())
        .pipe(autoprefixer('last 2 versions'))
        .pipe(cssmin())
        .pipe(gulp.dest('./source/css'));
});

gulp.task('default', ['less'], function() {
    gulp.watch('./source/less/_base/*.less', ['less']);
    gulp.watch('./source/less/_partial/*.less', ['less']);
    gulp.watch('./source/less/*.less', ['less']);
});
