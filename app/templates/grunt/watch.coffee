module.exports =
  sass:
    files: ['app/assets/stylesheets/{,*/}*.{scss,sass}']
    tasks: ['sass:server', 'autoprefixer']
  coffee:
    files: ['app/assets/javascripts/{,*/}*.coffee']
    tasks: ['coffee:server']
  livereload:
    options:
      livereload: '<%= connect.options.livereload %>'
    files: [
        'app/{,*/}*.html',
        '.tmp/assets/stylesheets/{,*/}*.css',
        'app/images/{,*/}*'
    ]
