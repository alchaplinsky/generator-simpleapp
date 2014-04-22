module.exports =
  options:
    port: 9000
    open: true
    livereload: 35729,
    hostname: 'localhost'
  livereload:
    options:
      middleware: (connect)-> [
        connect.static('.tmp'),
        connect().use('/bower_components', connect.static('./bower_components'))
      ]
