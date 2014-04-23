module.exports =
  options:
    browsers: ['last 5 version']
  dist:
    files: [
        expand: true,
        cwd: '.tmp/stylesheets/',
        src: '{,*/}*.css',
        dest: '.tmp/stylesheets/'
    ]
