module.exports =
  tmp:
    src: '<%= config.app %>/index.html'
    dest: '<%= config.tmp %>/index.html'
  html:
    files: [
      expand: true,
      dot: true,
      cwd: '<%= config.app %>'
      dest: 'dist'
      src: ['{,*/}*.html']
    ]
  bower:
    expand: true
    src: ['bower_components/**']
    dest: '<%= config.tmp %>'
  dist:
    files: [
      expand: true,
      dot: true,
      cwd: 'app',
      dest: 'dist',
      src: [
        '*.{ico,png,txt}',
        '.htaccess',
        'images/{,*/}*.{webp,png,jpg,ico,gif}',
      ]
    ]
