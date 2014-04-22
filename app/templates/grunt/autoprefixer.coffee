module.exports =
  options:
    browsers: ['last 5 version']
  dist:
    files: [
        expand: true,
        cwd: '.tmp/assets/stylesheets/',
        src: '{,*/}*.css',
        dest: '.tmp/assets/stylesheets/'
    ]
