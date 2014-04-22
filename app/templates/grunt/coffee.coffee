module.exports =
  dist:
    options:
      bare: true
    files:
      'dist/assets/javascripts/application.js': ['app/assets/javascripts/**/*.coffee']
  server:
    options:
      bare: true
    files:
      '.tmp/assets/javascripts/application.js': ['app/assets/javascripts/**/*.coffee']
