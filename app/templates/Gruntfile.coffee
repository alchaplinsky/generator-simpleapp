module.exports = (grunt) =>

  require('load-grunt-config')(grunt)

  grunt.registerTask 'build', ['clean:dist', 'sass:dist', 'coffee:dist', 'copy:dist']
  grunt.registerTask 'serve', ['clean:server', 'copy:server', 'connect:livereload', 'sass:server','coffee:server', 'watch' ]
