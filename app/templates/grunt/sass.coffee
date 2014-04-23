module.exports =
  dist:
    files:
      '<%= config.tmp %>/stylesheets/application.css': '<%= config.app %>/stylesheets/application.{scss,sass}'
