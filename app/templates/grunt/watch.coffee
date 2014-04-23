module.exports =
  sass:
    files: ['app/stylesheets/{,*/}*.{scss,sass}']
    tasks: ['sass:dist']
  coffee:
    files: ['app/javascripts/{,*/}*.coffee']
    tasks: ['coffee:dist']
  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: [
        'app/{,*/}*.html',
        '.tmp/stylesheets/{,*/}*.css',
        'app/images/{,*/}*'
    ]
