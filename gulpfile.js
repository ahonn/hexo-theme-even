
var gulp = require('gulp');
var less = require('gulp-less');
var cssmin = require('gulp-minify-css');
var autoprefixer = require('gulp-autoprefixer')

gulp.task('less', function () {
    gulp.src('./style/style.less')
        .pipe(less())
        .pipe(autoprefixer('last 3 versions'))
        .pipe(cssmin())
        .pipe(gulp.dest('./source/css'));
});

gulp.task('default', ['less'], function() {
    gulp.watch('./source/style/base/*.less', ['less']);
    gulp.watch('./source/style/partial/*.less', ['less']);
    gulp.watch('./source/style/style.less', ['less']);
});
