/**
 * Created by fg on 15/4/23.
 */
/* 載入外掛 */
var gulp = require('gulp'),
  sass = require('gulp-ruby-sass'),
  compass = require('gulp-compass'),
  minifyCss = require('gulp-minify-css'),
  uglify = require('gulp-uglify'),
  jshint = require('gulp-jshint'),
  coffee = require('gulp-coffee'),
  coffeelint = require('gulp-coffeelint'),
  autoprefixer = require('gulp-autoprefixer'),
  rename = require('gulp-rename'),
  clean = require('gulp-clean'),
  fs = require('fs'),
  concat = require('gulp-concat'),
  header = require('gulp-header'),
  notify = require('gulp-notify'),
  cache = require('gulp-cache');

/* compile compass */
gulp.task('compile-compass', function() {
  gulp.src('scss/*.scss')
    .pipe(compass({
      css: 'dist/assets/css',
      sass: 'scss',
      comments: false
    }))
    .pipe(gulp.dest('dist/assets/css'))
    .pipe(notify({message: 'Compass task complete'}));
});

/* coffee task */
gulp.task('compile-coffee', function () {
  gulp.src('js/*.coffee')
    .pipe(coffeelint({
      "max_line_length": {
        "level": "ignore"
      }
    }))
    //.pipe(coffeelint.reporter())
    .pipe(coffee())
    .pipe(gulp.dest('dist/assets/js'))
    .pipe(uglify())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('dist/assets/js'))
    .pipe(notify({message: 'Coffee task complete'}));
});

/* clean task */
gulp.task('clean', function () {
  return gulp.src(['dist/assets/css', 'dist/assets/js', 'dist/assets/img', 'dist/assets/html'], {read: false})
    .pipe(clean());
});

/* watch file */
gulp.task('watch', function () {
  gulp.watch('js/*.coffee', ['compile-coffee']);
  gulp.watch('scss/**/*.scss', ['compile-compass']);
});

/* default */
gulp.task('default', ['compile-compass','compile-coffee']);