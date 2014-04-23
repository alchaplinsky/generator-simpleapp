module.exports =
  dist:
    expand: true
    flatten: true
    cwd: '<%= config.app %>/javascripts'
    src: ['*.coffee']
    dest: '<%= config.tmp %>/javascripts'
    ext: '.js'
